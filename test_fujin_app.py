"""Headless GUI integration checks. No hardware reports or audio graph are started."""
import os
os.environ.setdefault('QT_QPA_PLATFORM','offscreen')
import tempfile
from pathlib import Path
import unittest
from unittest.mock import patch
from PyQt6.QtWidgets import QApplication
from PyQt6.QtCore import QProcess
from PyQt6.QtTest import QTest
from PyQt6.QtCore import Qt
import fujin_app

app=QApplication.instance() or QApplication([])
app.setStyle('Fusion');app.setStyleSheet(fujin_app.STYLE)

class GuiTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.state=patch('fujin_app.STATE',Path(self.temp.name)/'desktop.json');self.state.start()
        self.devices=patch('fujin_app.fujin.discover',return_value=[Path('/dev/hidraw3')]);self.devices.start()
        self.access=patch('fujin_app.os.access',return_value=True);self.access.start()
        self.w=fujin_app.Window();self.w.show();app.processEvents()
    def tearDown(self):
        self.w.busy=False;self.w.close();self.w.deleteLater();app.processEvents();self.access.stop();self.devices.stop();self.state.stop();self.temp.cleanup()
    def test_navigation_and_preview_do_not_send_reports(self):
        with patch.object(self.w.proc,'start') as start:
            self.w.navigate('lighting');self.w.quick_look('breathe','ff0080',100);self.w.preview_command();self.w.navigate('eq')
            self.assertFalse(start.called)
            self.assertEqual(self.w.pages.currentIndex(),1)
    def test_apply_passes_exact_validated_cli_arguments(self):
        self.w.navigate('lighting');self.w.quick_look('breathe','ff0080',100)
        with patch.object(self.w.proc,'start') as start:
            QTest.mouseClick(self.w.apply_light,Qt.MouseButton.LeftButton)
            self.assertEqual(start.call_args.args[1][1:],['color','ff0080','--mode','breathe','--speed','100','--device','/dev/hidraw3'])
            self.assertTrue(self.w.busy)
            self.assertFalse(self.w.apply_light.isEnabled())
    def test_invalid_color_cannot_be_applied(self):
        self.w.navigate('lighting');self.w.set_mode('single');self.w.hex.setText('bad');self.w.hex_edited('bad');self.w.check_device()
        self.assertFalse(self.w.apply_light.isEnabled())
    def test_eq_sliders_match_vendor_range_and_preset(self):
        self.w.navigate('eq');self.w.preset.setCurrentText('Vendor profile 1')
        self.assertEqual(self.w.gains,[4,2,0,-3,-2,-1,-3,0,1,3])
        self.assertTrue(all(s.minimum()==-60 and s.maximum()==60 for s in self.w.eq_sliders))
        app.processEvents()
        for s in self.w.eq_sliders:
            self.assertTrue(s.parentWidget().rect().contains(s.geometry()))
    def test_close_waits_for_lighting(self):
        self.w.busy=True;self.w.close();self.assertTrue(self.w.isVisible())
    def test_disconnection_disables_apply(self):
        with patch('fujin_app.fujin.discover',return_value=[]):self.w.check_device()
        self.assertFalse(self.w.apply_light.isEnabled())

    def test_eq_update_does_not_restart_after_failed_cleanup(self):
        from PyQt6.QtCore import QByteArray
        self.w.eq_pending=[0.0]*10
        with patch.object(self.w.eq_proc,'readAllStandardError',return_value=QByteArray(b'Playback restoration failed')), patch('fujin_app.QTimer.singleShot') as schedule:
            self.w.eq_finished(1,QProcess.ExitStatus.NormalExit)
            self.assertFalse(schedule.called)
        self.assertIsNone(self.w.eq_pending)
        self.assertIn('restoration failed',self.w.status.text())

if __name__=='__main__':unittest.main()
