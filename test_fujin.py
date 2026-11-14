import contextlib
import io
import unittest
from unittest.mock import patch
import fujin

class ProtocolTests(unittest.TestCase):
    def test_vendor_color_and_speed_fixtures(self):
        self.assertEqual(fujin.lighting_plan('breathe', 'ff0080'), [(0x2d,255),(0x2e,0),(0x2f,128),(0xa4,100)])
        self.assertEqual(fujin.lighting_plan('off'), [(0xa1,1)])
        self.assertEqual(fujin.address_packet(0x110),bytes.fromhex('00 60 10 01 10'))
        self.assertEqual(fujin.value_packet(0x3a),bytes.fromhex('00 60 3a 01 20'))

    def test_rainbow_discontinuity_at_six(self):
        p=fujin.lighting_plan('rainbow')
        self.assertEqual(len(p),22)
        self.assertEqual(p[12:18], [(0x3d,0),(0x3e,255),(0x3f,255),(0x41,10),(0x42,10),(0x43,255)])
        self.assertEqual(p[-1],(0xa5,100))
        self.assertNotIn(0xf7, [a for a,v in p])

    def test_bridge_sequence_preserves_other_enable_bits(self):
        t=object.__new__(fujin.Transport)
        with patch.object(t,'wait_idle') as wait, patch.object(t,'read_register',return_value=0xa4), patch.object(t,'write_register') as write:
            t.led_write(0xa4,100)
        self.assertEqual(wait.call_count,2)
        self.assertEqual([c.args for c in write.call_args_list],[(0x100,0xa5),(0x110,0x3a),(8,6),(9,100),(11,0xe4),(0x100,0xa4)])

    def test_failure_restores_bridge_and_does_not_save(self):
        t=object.__new__(fujin.Transport)
        with patch.object(t,'wait_idle',side_effect=[None,fujin.FujinError('busy')]), patch.object(t,'read_register',return_value=0x20), patch.object(t,'write_register') as write:
            with self.assertRaises(fujin.FujinError):t.led_write(0xa1,1)
        self.assertEqual(write.call_args_list[-1].args,(0x100,0x20))

    def test_dry_run_never_opens_device(self):
        with patch('fujin.os.open',side_effect=AssertionError('opened')),contextlib.redirect_stdout(io.StringIO()) as out:
            self.assertEqual(fujin.main(['color','ff0080','--mode','breathe','--dry-run']),0)
        self.assertIn('"persistent_save": false',out.getvalue())

    def test_rejects_bad_inputs_and_persistent_register(self):
        for color in ('xyz','fff','ff008000','-10000'):
            with self.assertRaises(fujin.FujinError):fujin.lighting_plan('single',color)
        for speed in (-1,256):
            with self.assertRaises(fujin.FujinError):fujin.lighting_plan('rainbow',speed=speed)
        t=object.__new__(fujin.Transport)
        with self.assertRaises(fujin.FujinError):t.led_write(0xf7,1)


class IoctlAndFramingTests(unittest.TestCase):
    def test_control_output_uses_mutable_buffer_for_integer_return(self):
        t=object.__new__(fujin.Transport);t.fd=42
        def ioctl(fd,code,buf,mutate):
            self.assertIsInstance(buf,bytearray)
            self.assertTrue(mutate)
            self.assertEqual(code,0xc005480b)
            self.assertEqual(bytes(buf),bytes.fromhex('00600b0010'))
            return 5
        with patch('fujin.fcntl.ioctl',side_effect=ioctl):t.output(fujin.address_packet(11))

    def test_cli_preserves_batch_and_speed_zero_report_boundaries(self):
        with patch('fujin.discover',return_value=[fujin.Path('/dev/hidraw3')]), patch('fujin.Transport') as transport, patch('fujin.time.sleep'),contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(fujin.main(['color','ff0080','--mode','breathe']),0)
        calls=transport.return_value.method_calls
        self.assertEqual([(c[0],c.args) for c in calls],[('led_write',(0x2d,255)),('led_write',(0x2e,0)),('led_write',(0x2f,128)),('output',(bytes(5),)),('led_write',(0xa4,100)),('output',(bytes(5),)),('close',())])

    def test_every_generated_write_passes_runtime_allowlist(self):
        t=object.__new__(fujin.Transport)
        with patch.object(t,'wait_idle'), patch.object(t,'read_register',return_value=0), patch.object(t,'write_register'):
            for mode in fujin.MODES:
                for address,value in fujin.lighting_plan(mode,'ff0080'):
                    t.led_write(address,value)
            with self.assertRaises(fujin.FujinError):t.led_write(0x40,0)

if __name__=='__main__':unittest.main()
