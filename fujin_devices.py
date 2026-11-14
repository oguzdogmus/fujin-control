"""Vendor-listed USB identities. Catalog discovery never opens device nodes.

An entry is evidence of vendor configuration membership, not RGB compatibility.
The transport's separate, verified allowlist remains authoritative for writes.
"""
import json
from pathlib import Path
import re

CATALOG = json.loads((Path(__file__).parent / 'devices.json').read_text())['entries']


def matches(pattern, value):
    """Interpret vendor X as one hex nibble, for candidate discovery only."""
    if not re.fullmatch('[0-9a-f]{4}', value.lower()):
        return False
    return re.fullmatch(pattern.lower().replace('x', '[0-9a-f]'), value.lower()) is not None


def lookup(vid, pid):
    entries = [e for e in CATALOG if matches(e['vid'], vid) and matches(e['pid'], pid)]
    # Specific LED overrides take precedence over enumeration family patterns.
    return min(entries, key=lambda e: e['vid'].count('x') + e['pid'].count('x')) if entries else None


def display_name(entry):
    return entry['name'] or entry.get('driver_name') or 'Product / driver name unknown'


def status(entry):
    if entry['rgb_verified']:
        return 'RGB verified (Off, Fixed, Breathe, Rainbow)'
    if entry['vendor_lighting'] is True:
        return 'Vendor RGB enabled; descriptor and hardware verification needed'
    if entry['vendor_lighting'] is False:
        return 'Vendor RGB hidden; no lighting support established'
    return 'Vendor-listed; no lighting support established'


def inventory(sysroot=Path('/sys/bus/usb/devices')):
    """Return only catalog candidates, with no serial numbers or USB requests."""
    found = []
    for device in sorted(sysroot.iterdir()):
        try:
            vid = (device / 'idVendor').read_text().strip().lower()
            pid = (device / 'idProduct').read_text().strip().lower()
            entry = lookup(vid, pid)
            if entry is None:
                continue
            try:
                product = (device / 'product').read_text().strip()
            except FileNotFoundError:
                product = ''
            found.append({'usb_path': device.name, 'vid': vid, 'pid': pid,
                          'product': product, 'name': display_name(entry), 'driver_name': entry.get('driver_name'),
                          'catalog_pattern': entry['vid'] + ':' + entry['pid'],
                          'status': status(entry)})
        except FileNotFoundError:
            continue
    return found
