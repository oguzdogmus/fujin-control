#!/usr/bin/env python3
"""Fujin Pro LED control, reconstructed from vendor code. See PROTOCOL.md.
No hardware-save, firmware, EEPROM or arbitrary-register interface is exposed.
"""
import argparse
import errno
import fcntl
import json
import os
from pathlib import Path
import re
import stat
import struct
import sys
import time
import fujin_devices

DESCRIPTOR = bytes.fromhex('050c0901a1011500250109e909ea09b509b675019504810209e209b709cd95038102050b092095018106050c26ff000900750895038102090095049102c0')
VID_PID = (0x0600, 0x9c16)
MODES = {'off': 0xa1, 'single': 0xa2, 'blink': 0xa3, 'breathe': 0xa4, 'rainbow': 0xa5}
# Vendor defaults after its exact palette remapping, in RGB wire order.
RAINBOW = ('ff0000', 'ff2300', 'ff6400', '00ff00', '00ffff', '0a0aff', 'ff00ff')

class FujinError(Exception):
    pass

def ioctl_code(number, length):
    return (3 << 30) | (length << 16) | (ord('H') << 8) | number

def address_packet(address):
    return bytes((0, 0x60, address & 255, address >> 8, 0x10))

def value_packet(value):
    return bytes((0, 0x60, value, 1, 0x20))

def lighting_plan(mode, color=None, speed=None):
    if mode not in MODES:
        raise FujinError('Unsupported mode')
    if color is not None and not re.fullmatch('[0-9a-fA-F]{6}', color):
        raise FujinError('Color must contain exactly six hexadecimal digits (RRGGBB)')
    if mode in ('single', 'blink', 'breathe') and color is None:
        raise FujinError('This mode requires a color')
    if speed is not None and not 0 <= speed <= 255:
        raise FujinError('Speed must be in 0..255')
    if mode == 'off' and speed is not None:
        raise FujinError('Off has a fixed vendor value of 1; omit --speed')
    writes = []
    if mode in ('single', 'blink', 'breathe'):
        start = {'single': 0x27, 'blink': 0x2a, 'breathe': 0x2d}[mode]
        writes.extend((start + i, v) for i, v in enumerate(bytes.fromhex(color)))
    elif mode == 'rainbow':
        for index, rgb in enumerate(RAINBOW, 1):
            start = 3 * index + (0x2e if index <= 5 else 0x2f)
            writes.extend((start + i, v) for i, v in enumerate(bytes.fromhex(rgb)))
    default = {'off': 1, 'single': 0, 'blink': 168, 'breathe': 100, 'rainbow': 100}
    writes.append((MODES[mode], default[mode] if speed is None else speed))
    return writes

def discover(sysroot=Path('/sys/class/hidraw')):
    found = []
    for entry in sorted(sysroot.glob('hidraw*')):
        device = entry / 'device'
        try:
            fields = dict(line.split('=', 1) for line in (device / 'uevent').read_text().splitlines() if '=' in line)
            if fields.get('HID_ID', '').upper() != '0003:00000600:00009C16':
                continue
            if fields.get('HID_NAME') != 'USBFC1S-RGB' or (device / 'report_descriptor').read_bytes() != DESCRIPTOR:
                raise FujinError(f'{entry.name}: vendor/product matched but product name or descriptor differs; refusing')
            interface = device.resolve().parent
            if (interface / 'bInterfaceNumber').read_text().strip() != '03':
                raise FujinError(f'{entry.name}: expected USB interface 3')
            found.append(Path('/dev') / entry.name)
        except FileNotFoundError:
            continue
    return found

class Transport:
    def __init__(self, path):
        self.fd = os.open(path, os.O_RDWR | os.O_CLOEXEC | os.O_NOFOLLOW)
        try:
            if not stat.S_ISCHR(os.fstat(self.fd).st_mode):
                raise FujinError('Target is not a character device')
            fcntl.flock(self.fd, fcntl.LOCK_EX | fcntl.LOCK_NB)
            info = bytearray(8)
            fcntl.ioctl(self.fd, 0x80084803, info, True)
            bus, vid, pid = struct.unpack('IHH', info)
            if (bus, vid, pid) != (3, *VID_PID):
                raise FujinError('Device identity changed before opening')
            actual_size = bytearray(4)
            fcntl.ioctl(self.fd, 0x80044801, actual_size, True)
            if struct.unpack('I', actual_size)[0] != len(DESCRIPTOR):
                raise FujinError('Opened device descriptor size does not match')
            desc = bytearray(4100)
            struct.pack_into('I', desc, 0, len(DESCRIPTOR))
            fcntl.ioctl(self.fd, 0x90044802, desc, True)
            size = struct.unpack_from('I', desc)[0]
            if bytes(desc[4:4+size]) != DESCRIPTOR:
                raise FujinError('Opened device descriptor does not match')
        except BaseException:
            self.close()
            raise

    def close(self):
        os.close(self.fd)

    def output(self, data):
        # SET_REPORT(Output), matching HidD_SetOutputReport; never FEATURE.
        result = fcntl.ioctl(self.fd, ioctl_code(0x0b, len(data)), bytearray(data), True)
        if result != len(data):
            raise FujinError(f'Short output report: {result}/{len(data)}')

    def read_register(self, address):
        if address not in (0x0b, 0x100):
            raise FujinError('Read outside LED bridge allowlist')
        self.output(address_packet(address))
        data = bytearray(5)
        result = fcntl.ioctl(self.fd, ioctl_code(0x0a, 5), data, True)
        if result != 5 or data[0] != 0:
            raise FujinError(f'Unexpected input report: length={result}, data={data.hex()}')
        return data[2]

    def write_register(self, address, value):
        if address not in (8, 9, 11, 0x100, 0x110) or not 0 <= value <= 255:
            raise FujinError('Write outside LED bridge allowlist')
        self.output(address_packet(address))
        self.output(value_packet(value))

    def wait_idle(self):
        deadline = time.monotonic() + 1.0
        while self.read_register(11) & 0x80:
            if time.monotonic() >= deadline:
                raise FujinError('LED I2C bridge busy for more than 1000 ms; stopped')
            time.sleep(0.002)

    def led_write(self, address, value):
        if address not in (*range(0x27, 0x40), *range(0x41, 0x47), *MODES.values()):
            raise FujinError('Write outside ordinary lighting register allowlist')
        self.wait_idle()
        original = self.read_register(0x100)
        try:
            self.write_register(0x100, original | 1)
            self.write_register(0x110, 0x3a)
            self.write_register(8, 4 | (address >> 6))
            self.write_register(9, value)
            self.write_register(11, 0xc0 | (address & 0x3f))
            self.wait_idle()
        finally:
            # Vendor clears the bridge-enable bit, preserving the other bits.
            self.write_register(0x100, original & 0xfe)

def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=('models', 'devices', 'rainbow', 'color', 'off'))
    parser.add_argument('rgb', nargs='?')
    parser.add_argument('--mode', choices=('single', 'blink', 'breathe'), default=None)
    parser.add_argument('--speed', type=int, help='Vendor raw speed value, 0..255; physical rate not measured')
    parser.add_argument('--dry-run', action='store_true', help='Show operations without opening any device')
    parser.add_argument('--device', help='Choose one discovered /dev/hidrawN when more than one matches')
    parser.add_argument('--all', action='store_true', help='With devices, list vendor catalog candidates read-only, including unverified identities')
    args = parser.parse_args(argv)
    if args.all and args.command != 'devices':
        parser.error('--all is only valid with devices')
    if args.command != 'color' and (args.rgb is not None or args.mode is not None):
        parser.error('RGB and --mode are only valid with color')
    if args.command == 'color' and args.rgb is None:
        parser.error('color requires RRGGBB')
    try:
        if args.command == 'models':
            if args.rgb or args.speed is not None or args.device or args.dry_run:
                parser.error('models does not accept lighting or device options')
            print(json.dumps(fujin_devices.CATALOG, indent=2))
            return 0
        if args.command == 'devices':
            if args.rgb or args.speed is not None:
                parser.error('devices does not accept RGB or speed')
            if args.all:
                print(json.dumps(fujin_devices.inventory(), indent=2))
                return 0
            devices = discover()
            print(json.dumps([{'path': str(p), 'read_write_access': os.access(p, os.R_OK | os.W_OK)} for p in devices], indent=2))
            return 0
        mode = (args.mode or 'single') if args.command == 'color' else args.command
        plan = lighting_plan(mode, args.rgb, args.speed)
        if args.dry_run:
            print(json.dumps({'hardware_validation': 'See evidence/status.md for observed tests', 'mode': mode, 'transport': 'SET_REPORT(Output) / GET_REPORT(Input), no report IDs; 5-byte Linux buffers', 'bridge_sequence': ['wait reg 0x0b bit7 clear (1000ms timeout)', 'read reg 0x100; write original|1', 'write reg 0x110 = 0x3a', 'write reg 8 = 4|(MCU_register>>6)', 'write reg 9 = value', 'write reg 11 = 0xc0|(MCU_register&0x3f)', 'wait idle', 'write reg 0x100 = original&0xfe'], 'mcu_writes': [{'register': f'{a:02x}', 'value': f'{v:02x}'} for a,v in plan], 'report_examples': {'select_register_9': address_packet(9).hex(' '), 'data_ff': value_packet(255).hex(' ')}, 'trailing_zero_reports': 'one after the color batch (if nonempty), one after speed', 'persistent_save': False}, indent=2))
            return 0
        devices = discover()
        if args.device:
            devices = [p for p in devices if str(p) == args.device]
        if len(devices) != 1:
            raise FujinError(f'Expected exactly one verified headset; found {len(devices)}. Run devices and use --device if needed')
        path = devices[0]
        try:
            transport = Transport(path)
        except PermissionError:
            raise FujinError(f'No read/write access to {path}. See README.md for the scoped udev rule') from None
        try:
            for address, value in plan[:-1]:
                transport.led_write(address, value)
                time.sleep(0.100)
            if len(plan) > 1:
                transport.output(bytes(5))
            transport.led_write(*plan[-1])
            transport.output(bytes(5))
        finally:
            transport.close()
        print('Lighting reports completed; verify the visible effect. No hardware-save command sent.')
        return 0
    except (FujinError, OSError) as exc:
        if isinstance(exc, OSError) and exc.errno == errno.ENOTTY:
            print('Error: kernel does not support required HID input/output report ioctls', file=sys.stderr)
        else:
            print(f'Error: {exc}', file=sys.stderr)
        return 1

if __name__ == '__main__':
    sys.exit(main())
