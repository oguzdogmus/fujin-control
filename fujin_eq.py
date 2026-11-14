#!/usr/bin/env python3
"""Session-only PipeWire EQ for the verified Fujin playback sink.
The Windows vendor's configured EQ is software; no USB reports are used here.
"""
import argparse
import ctypes
import fcntl
import json
import math
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import time

FREQUENCIES = (31.5, 63.0, 125.0, 250.0, 500.0, 1000.0, 2000.0, 4000.0, 8000.0, 16000.0)
VENDOR_PROFILE_1 = (4.0, 2.0, 0.0, -3.0, -2.0, -1.0, -3.0, 0.0, 1.0, 3.0)
SINK_NAME = 'fujin_pro_equalizer'
STATE = Path(__file__).resolve().parent / '.state'

class EqError(Exception):
    pass

def command(args, *, json_output=False):
    try:
        result = subprocess.run(args, capture_output=True, text=True, timeout=5, check=True)
    except (OSError, subprocess.SubprocessError) as exc:
        detail = getattr(exc, 'stderr', '') or str(exc)
        raise EqError(f'{args!r}: {detail.strip()}') from exc
    try:
        return json.loads(result.stdout) if json_output else result.stdout
    except json.JSONDecodeError as exc:
        raise EqError(f'{args[0]} returned invalid JSON') from exc

def validate_gains(gains):
    if not isinstance(gains, (list, tuple)) or len(gains) != 10:
        raise EqError('EQ needs exactly ten gain values')
    if any(isinstance(g, bool) or not isinstance(g, (int, float)) or not math.isfinite(g) or not -6 <= g <= 6 for g in gains):
        raise EqError('Each EQ gain must be a finite number from -6 to +6 dB')
    return tuple(float(g) for g in gains)

def target_from_dump(objects):
    devices = {}
    for item in objects:
        props = item.get('info', {}).get('props', {})
        if props.get('media.class') == 'Audio/Device' and props.get('device.vendor.id') == '0x0600' and props.get('device.product.id') == '0x9c16' and props.get('device.product.name') == 'USBFC1S-RGB':
            devices[item['id']] = props
    sinks = []
    for item in objects:
        props = item.get('info', {}).get('props', {})
        if props.get('media.class') == 'Audio/Sink' and props.get('device.id') in devices and props.get('alsa.components') == 'USB0600:9c16' and props.get('audio.channels') == 2:
            sinks.append(props['node.name'])
    if len(sinks) != 1:
        raise EqError(f'Expected one verified stereo Fujin playback sink; found {len(sinks)}')
    return sinks[0]

def discover_target():
    return target_from_dump(command(['pw-dump'], json_output=True))

def probe():
    try:
        target = discover_target()
        return {'available': True, 'target_name': target, 'sink_name': SINK_NAME}
    except EqError as exc:
        return {'available': False, 'error': str(exc), 'sink_name': SINK_NAME}

def build_config(gains, target_node_name):
    gains = validate_gains(gains)
    if not isinstance(target_node_name, str) or not target_node_name:
        raise EqError('Missing headset playback target')
    # The original DSP's Q/coefficients are not recovered. These are octave-band
    # peaking filters with Q=1.4, a stated Linux implementation choice.
    preamp_db = -max(0.0, *gains)
    nodes = [{'type': 'builtin', 'name': 'headroom', 'label': 'mixer', 'control': {'Gain 1': 10 ** (preamp_db / 20)}}]
    nodes.extend({'type': 'builtin', 'name': f'band{i}', 'label': 'bq_peaking', 'control': {'Freq': freq, 'Q': 1.4, 'Gain': gain}} for i, (freq, gain) in enumerate(zip(FREQUENCIES, gains), 1))
    links = [{'output': 'headroom:Out', 'input': 'band1:In'}]
    links.extend({'output': f'band{i}:Out', 'input': f'band{i+1}:In'} for i in range(1, 10))
    # Stereo streams duplicate the mono graph; no source/microphone target exists.
    args = {
        'node.description': 'Fujin Pro Equalizer', 'media.name': 'Fujin Pro Equalizer',
        'audio.channels': 2, 'audio.position': ['FL', 'FR'],
        'filter.graph': {'nodes': nodes, 'links': links, 'inputs': ['headroom:In 1'], 'outputs': ['band10:Out']},
        'capture.props': {'node.name': SINK_NAME, 'node.description': 'Fujin Pro Equalizer', 'media.class': 'Audio/Sink', 'node.virtual': True, 'priority.session': 0},
        'playback.props': {'node.name': SINK_NAME + '.output', 'node.description': 'Fujin EQ to headset', 'target.object': target_node_name, 'node.passive': True, 'node.dont-reconnect': True, 'node.dont-fallback': True, 'node.autoconnect': False, 'application.id': 'org.fujin.Control', 'media.role': 'DSP'},
    }
    config = {
        'context.properties': {'log.level': 1},
        'context.spa-libs': {'audio.convert.*': 'audioconvert/libspa-audioconvert', 'support.*': 'support/libspa-support'},
        'context.modules': [{'name': 'libpipewire-module-protocol-native'}, {'name': 'libpipewire-module-client-node'}, {'name': 'libpipewire-module-adapter'}, {'name': 'libpipewire-module-filter-chain', 'args': args}],
    }
    return json.dumps(config, indent=2)

def pulse_sinks():
    return command(['pactl', '-f', 'json', 'list', 'sinks'], json_output=True)

def connect_headset_output(target):
    deadline = time.monotonic() + 5
    while True:
        objects = command(['pw-dump'], json_output=True)
        by_name = {e.get('info', {}).get('props', {}).get('node.name'): e['id'] for e in objects if e['type'] == 'PipeWire:Interface:Node'}
        output_id = by_name.get(SINK_NAME + '.output')
        target_id = by_name.get(target)
        ports = {}
        for item in objects:
            if item['type'] == 'PipeWire:Interface:Port':
                props = item.get('info', {}).get('props', {})
                ports[(props.get('node.id'), props.get('port.direction'), props.get('audio.channel'))] = item['id']
        pairs = [(ports.get((output_id, 'out', ch)), ports.get((target_id, 'in', ch))) for ch in ('FL', 'FR')]
        if output_id is not None and target_id is not None and all(a is not None and b is not None for a, b in pairs):
            break
        if time.monotonic() >= deadline:
            raise EqError('Missing stereo headset ports')
        time.sleep(0.1)
    for source, dest in pairs:
        command(['pw-link', str(source), str(dest)])
    verify_headset_output(target)

def verify_headset_output(target):
    objects = command(['pw-dump'], json_output=True)
    by_name = {e.get('info', {}).get('props', {}).get('node.name'): e['id'] for e in objects if e['type'] == 'PipeWire:Interface:Node'}
    output_id = by_name.get(SINK_NAME + '.output')
    target_id = by_name.get(target)
    links = [e.get('info', {}).get('props', {}) for e in objects if e['type'] == 'PipeWire:Interface:Link']
    targets = [p.get('link.input.node') for p in links if p.get('link.output.node') == output_id]
    if output_id is None or target_id is None or len(targets) != 2 or any(t != target_id for t in targets):
        raise EqError('EQ output routing changed; stopped to avoid processing another device')

def route_candidates(streams, physical_index, seen):
    """Only newly observed playback already routed to the physical headset."""
    return [s for s in streams if s['index'] not in seen and s.get('sink') == physical_index and s.get('properties', {}).get('client.api') == 'pipewire-pulse' and s.get('properties', {}).get('application.id') != 'org.fujin.Control']

def arm_parent_death(expected_parent):
    # Linux PR_SET_PDEATHSIG: a dead GUI must not leave an orphan EQ graph.
    libc = ctypes.CDLL(None, use_errno=True)
    if libc.prctl(1, signal.SIGTERM, 0, 0, 0) != 0:
        raise OSError(ctypes.get_errno(), 'Cannot monitor EQ parent process')
    if os.getppid() != expected_parent:
        os._exit(1)

def arm_child_parent_death(expected_parent):
    signal.signal(signal.SIGTERM, signal.SIG_DFL)
    arm_parent_death(expected_parent)

def run_session(gains):
    gains = validate_gains(gains)
    original_parent = os.getppid()
    target = discover_target()
    STATE.mkdir(mode=0o700, exist_ok=True)
    lock = (STATE / 'eq.lock').open('w')
    try:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    except BlockingIOError as exc:
        lock.close()
        raise EqError('A Fujin EQ session is already running') from exc
    stopped = False
    def stop(*_):
        nonlocal stopped
        stopped = True
    signal.signal(signal.SIGTERM, stop)
    signal.signal(signal.SIGINT, stop)
    arm_parent_death(original_parent)
    child = None
    path = None
    seen = set()
    routed_count = 0
    try:
        if any(s['name'] == SINK_NAME for s in pulse_sinks()):
            raise EqError('Fujin EQ sink already exists; close its owning app first')
        with tempfile.NamedTemporaryFile('w', prefix='eq-', suffix='.conf', dir=STATE, delete=False) as out:
            out.write(build_config(gains, target)); path = Path(out.name)
        stderr_path = STATE / 'eq-pipewire.log'
        with stderr_path.open('w') as stderr:
            owner_pid = os.getpid()
            child = subprocess.Popen(['pipewire', '-c', str(path)], stdout=subprocess.DEVNULL, stderr=stderr, preexec_fn=lambda: arm_child_parent_death(owner_pid))
        deadline = time.monotonic() + 10
        while not stopped:
            if child.poll() is not None:
                raise EqError('PipeWire EQ failed: ' + stderr_path.read_text()[-2000:])
            sinks = {s['name']: s for s in pulse_sinks()}
            if SINK_NAME in sinks and target in sinks:
                break
            if time.monotonic() > deadline:
                raise EqError('Timed out waiting for the EQ sink')
            time.sleep(0.15)
        if stopped:
            return
        connect_headset_output(target)
        physical_index = sinks[target]['index']
        virtual_index = sinks[SINK_NAME]['index']
        first = True
        while not stopped:
            if child.poll() is not None:
                raise EqError('PipeWire EQ process ended unexpectedly')
            if discover_target() != target:
                raise EqError('Headset playback target changed; EQ stopped')
            verify_headset_output(target)
            streams = command(['pactl', '-f', 'json', 'list', 'sink-inputs'], json_output=True)
            for stream in route_candidates(streams, physical_index, seen):
                command(['pactl', 'move-sink-input', str(stream['index']), SINK_NAME])
                routed_count += 1
            seen.update(s['index'] for s in streams)
            if first:
                print(json.dumps({'ready': True, 'sink_name': SINK_NAME, 'headset_name': target, 'routed_count': routed_count, 'preamp_db': -max(0.0, *gains)}), flush=True)
                first = False
            time.sleep(0.4)
    finally:
        # Always retire our child and files, even if a stream vanishes during
        # restoration or the server disconnects.
        cleanup_errors = []
        try:
            if child is not None:
                try:
                    sinks = {s['name']: s for s in pulse_sinks()}
                    if SINK_NAME in sinks and target in sinks:
                        index = sinks[SINK_NAME]['index']
                        streams = command(['pactl', '-f', 'json', 'list', 'sink-inputs'], json_output=True)
                        for stream in streams:
                            if stream.get('sink') == index:
                                try:
                                    command(['pactl', 'move-sink-input', str(stream['index']), target])
                                except EqError as exc:
                                    cleanup_errors.append(str(exc))
                except EqError as exc:
                    cleanup_errors.append(str(exc))
                finally:
                    child.terminate()
                    try: child.wait(timeout=5)
                    except subprocess.TimeoutExpired:
                        child.kill(); child.wait(timeout=3)
        finally:
            try:
                if path is not None: path.unlink(missing_ok=True)
            finally:
                lock.close()
        if cleanup_errors:
            raise EqError('EQ cleanup: ' + '; '.join(cleanup_errors))

def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=('probe', 'run', 'dry-run'))
    parser.add_argument('--gains', default='[0,0,0,0,0,0,0,0,0,0]', help='JSON array of ten gains, -6..6dB')
    args = parser.parse_args(argv)
    try:
        if args.command == 'probe':
            print(json.dumps(probe())); return 0
        try: gains = validate_gains(json.loads(args.gains))
        except json.JSONDecodeError as exc: raise EqError('Gains must be a JSON array') from exc
        if args.command == 'dry-run':
            print(build_config(gains, 'VERIFIED_HEADSET_NODE')); return 0
        run_session(gains); return 0
    except (EqError, OSError) as exc:
        print(str(exc), file=sys.stderr); return 1

if __name__ == '__main__':
    sys.exit(main())
