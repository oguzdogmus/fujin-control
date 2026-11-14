#!/usr/bin/env python3
"""Extract derived name facts from installer resources; never execute the installer.

Usage: python3 tools/extract_inf_mappings.py /private/path/setup.exe > facts.json
Requires 7z only for extraction; parsing uses Python's standard library.
"""
import hashlib
import json
import re
import subprocess
import sys


def parse_inf(data):
    lines = data.decode('utf-8-sig').splitlines()
    strings = {}
    section = ''
    for number, line in enumerate(lines, 1):
        if line.strip().startswith('['):
            section = line.strip().lower()
        match = re.match(r'\s*([^;=\s]+)\s*=\s*"([^"]*)"', line)
        if section == '[strings]' and match:
            strings[match[1].lower()] = (match[2], number)
    rows = []
    pattern = re.compile(r'%([^%]+)%\s*=\s*DriverInstall,\s*USB\\VID_([0-9a-f]{4})&PID_([0-9a-f]{4})&REV_([0-9a-f]{4})&MI_([0-9a-f]{2})\s*$', re.I)
    for number, line in enumerate(lines, 1):
        match = pattern.fullmatch(line.strip())
        if not match:
            if re.search(r'=\s*DriverInstall,', line, re.I):
                raise ValueError(f'Unparsed model at line {number}')
            continue
        symbol, vid, pid, revision, interface = match.groups()
        name, string_line = strings[symbol.lower()]
        rows.append(dict(vid=vid.lower(), pid=pid.lower(), revision=revision.lower(),
                         audio_interface=interface.lower(), driver_name=name,
                         symbol=symbol, model_line=number, string_line=string_line))
    if not rows:
        raise ValueError('No model rows found')
    return rows


def extract(installer):
    resources = []
    for resource in ('113', '114'):
        member = '.rsrc/1028/INF/' + resource
        data = subprocess.run(['7z', 'x', '-so', str(installer), member],
                              check=True, capture_output=True).stdout
        resources.append(dict(resource=member, size=len(data),
                              sha256=hashlib.sha256(data).hexdigest(), rows=parse_inf(data)))
    if resources[0]['rows'] != resources[1]['rows']:
        raise ValueError('32-bit and 64-bit INF mappings differ')
    return resources


if __name__ == '__main__':
    json.dump(extract(sys.argv[1]), sys.stdout, indent=2)
    print()
