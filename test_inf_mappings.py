"""Derived evidence consistency and fail-closed offline extraction checks."""
import json
from pathlib import Path
import unittest
from unittest.mock import patch
from types import SimpleNamespace
from tools.extract_inf_mappings import parse_inf, extract
import fujin_devices as devices

SAMPLE = b'[DeviceList.NTx86]\r\n%GENERIC%=DriverInstall, USB\\VID_0600&PID_1016&REV_0100&MI_00\r\n[Strings]\r\nGENERIC="Literal driver label"\r\n'


class InfMappingTests(unittest.TestCase):
    def test_parser_resolves_strings_and_exact_source_lines(self):
        row, = parse_inf(SAMPLE)
        self.assertEqual((row['driver_name'], row['model_line'], row['string_line']),
                         ('Literal driver label', 2, 4))
        self.assertEqual((row['vid'], row['pid'], row['revision'], row['audio_interface']),
                         ('0600', '1016', '0100', '00'))

    def test_extractor_rejects_disagreeing_architectures(self):
        with patch('tools.extract_inf_mappings.subprocess.run', side_effect=[
                SimpleNamespace(stdout=SAMPLE),
                SimpleNamespace(stdout=SAMPLE.replace(b'Literal', b'Different'))]):
            with self.assertRaisesRegex(ValueError, 'differ'):
                extract('/private/nonexecuted.exe')

    def test_parser_rejects_unresolved_or_unsupported_model(self):
        with self.assertRaises(KeyError):
            parse_inf(SAMPLE.replace(b'GENERIC="', b'OTHER="'))
        with self.assertRaisesRegex(ValueError, 'Unparsed model'):
            parse_inf(SAMPLE.replace(b'&MI_00', b''))

    def test_product_labels_and_owner_alias_remain_separate(self):
        for pid, name in [('1016','RAIJIN'),('1316','FUJIN'),('2516','MIHAWK PRO'),
                          ('2616','FUJIN PRO'),('2816','RYO')]:
            entry=devices.lookup('0600',pid)
            self.assertEqual(entry['driver_name'],name)
            self.assertIsNone(entry['name'])
            self.assertEqual(devices.display_name(entry),name)
        owner=devices.lookup('0600','9c16')
        self.assertEqual(owner['driver_name'],'USBFC1S-RGB')
        self.assertEqual(devices.display_name(owner),'GamePower Fujin Pro')
        self.assertIn('owner-confirmed',owner['product_name_provenance'])
        for pid,color in [('5025','Black'),('5026','White')]:
            e=devices.lookup('331a',pid)
            self.assertIn('Genesis Neon 764',e['driver_name'])
            self.assertIn(color,e['driver_name'])
            self.assertIsNone(e['name'])
        self.assertIsNone(devices.lookup('0600','1710').get('driver_name'))
        self.assertIn('unknown',devices.display_name(devices.lookup('0600','1710')))

    def test_new_exact_names_inherit_existing_hidden_wildcard_rules(self):
        e=devices.lookup('0600','7016')
        self.assertEqual(e['driver_name'],'COX CH57')
        self.assertEqual(e['lighting_source_pattern'],'0600:7x16')
        self.assertIs(e['vendor_lighting'],False)
        for e in devices.CATALOG:
            pattern=e.get('lighting_source_pattern')
            if pattern:
                original=next(x for x in devices.CATALOG if x['vid']+':'+x['pid']==pattern)
                self.assertIs(e['vendor_lighting'],original['vendor_lighting'])
                self.assertFalse(e['rgb_verified'])

    def test_every_name_has_two_resource_citations_and_findings_row(self):
        findings=(Path(__file__).parent/'evidence/product-mappings.md').read_text()
        for e in devices.CATALOG:
            if 'driver_name' not in e:continue
            self.assertEqual(e['driver_revisions'],['0100'])
            self.assertEqual(e['driver_audio_interfaces'],['00'])
            self.assertEqual(len(e['name_provenance']),2)
            for source in e['name_provenance']:
                self.assertEqual(len(source['sha256']),64)
                self.assertGreater(source['string_line'],source['model_line'])
            self.assertIn(f"| {e['vid']}:{e['pid']} | 0100 | 00 | {e['driver_name']} |",findings)
