import contextlib
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import fujin
import fujin_devices as devices


class DeviceCatalogTests(unittest.TestCase):
    def test_catalog_preserves_all_vendor_rows_and_lighting_flags(self):
        self.assertEqual(len(devices.CATALOG),53)
        enabled={e['vid']+':'+e['pid'] for e in devices.CATALOG if e['vendor_lighting'] is True}
        self.assertEqual(enabled,{'0600:1316','0c76:1700','0600:9b16','0600:9c16','0600:2616','331a:5025','331a:5026'})
        self.assertEqual(sum(e['vendor_lighting'] is False for e in devices.CATALOG),38)
        self.assertEqual(sum(e['vendor_lighting'] is None for e in devices.CATALOG),8)
        self.assertEqual([e['pid'] for e in devices.CATALOG if e['rgb_verified']],['9c16'])

    def test_exact_lighting_override_beats_enumeration_family(self):
        self.assertTrue(devices.lookup('0600','9c16')['rgb_verified'])
        self.assertFalse(devices.lookup('0600','2816')['vendor_lighting'])
        self.assertIsNone(devices.lookup('0600','4217')['vendor_lighting'])
        self.assertEqual(devices.lookup('0600','7a16')['pid'],'7x16')
        self.assertIsNone(devices.lookup('ffff','9c16'))
        self.assertFalse(devices.matches('xx16','zz16'))

    def test_inventory_is_read_only_and_omits_serial_numbers(self):
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp)
            for name,vid,pid in [('a','0600','2616'),('b','0600','9c16'),('c','1234','5678')]:
                d=root/name;d.mkdir()
                for key,value in {'idVendor':vid,'idProduct':pid,'product':'Example headset','serial':'PRIVATE-SERIAL'}.items():(d/key).write_text(value)
            result=devices.inventory(root)
        self.assertEqual(len(result),2)
        self.assertNotIn('PRIVATE-SERIAL',json.dumps(result))
        self.assertIn('verification needed',result[0]['status'])

    def test_catalog_cli_never_opens_transport(self):
        with patch('fujin.Transport',side_effect=AssertionError('USB access')),contextlib.redirect_stdout(io.StringIO()) as output:
            self.assertEqual(fujin.main(['models']),0)
        self.assertEqual(len(json.loads(output.getvalue())),53)
        with patch('fujin_devices.inventory',return_value=[]),patch('fujin.Transport',side_effect=AssertionError('USB access')),contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(fujin.main(['devices','--all']),0)

    def test_vendor_listed_variant_cannot_enter_write_transport(self):
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp)
            for i,e in enumerate(devices.CATALOG):
                if e['rgb_verified']:continue
                d=root/f'hidraw{i}'/'device';d.mkdir(parents=True)
                vid=e['vid'].replace('x','0');pid=e['pid'].replace('x','0')
                (d/'uevent').write_text(f'HID_ID=0003:0000{vid.upper()}:0000{pid.upper()}\nHID_NAME=USBFC1S-RGB\n')
                (d/'report_descriptor').write_bytes(fujin.DESCRIPTOR)
            self.assertEqual(fujin.discover(root),[])


if __name__=='__main__':unittest.main()
