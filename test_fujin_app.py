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
    def test_products_browsing_search_and_details_never_send_commands(self):
        with patch('fujin_devices.inventory',return_value=[]),patch.object(self.w.proc,'start') as start,patch.object(self.w.eq_proc,'start') as eq_start:
            self.w.device_catalog();page=self.w.products
            self.assertIs(self.w.stack.currentWidget(),page)
            self.assertEqual(len(page.visible_products),22)
            page.search.setText('2616')
            self.assertEqual([g['name'] for g in page.visible_products],['Fujin Pro'])
            page.show_product(page.visible_products[0])
            self.assertIs(page.stack.currentWidget(),page.detail)
            self.assertEqual(len(page.visible_products[0]['entries']),2)
            page.search.setText('not-a-real-headset')
            self.assertEqual(page.visible_products,[])
            page.search.clear();page.collection.setCurrentIndex(1)
            self.assertTrue(any(g['name']=='Usbfc1-A' for g in page.visible_products))
            page.availability.setCurrentIndex(1)
            self.assertEqual([g['name'] for g in page.visible_products],['Fujin Pro'])
            self.assertFalse(start.called);self.assertFalse(eq_start.called)

    def test_products_connected_filter_and_missing_inventory(self):
        page=self.w.products
        with patch('fujin_devices.inventory',return_value=[{'vid':'0600','pid':'9c16'}]):page.refresh()
        page.availability.setCurrentIndex(2)
        self.assertEqual([g['name'] for g in page.visible_products],['Fujin Pro'])
        with patch('fujin_devices.inventory',side_effect=OSError('unavailable')):page.refresh()
        self.assertEqual(page.visible_products,[])
        self.assertIn('unavailable',page.note.text())

    def test_every_gamepower_product_has_a_valid_attributed_image(self):
        import hashlib
        from fujin_products import PRODUCT_IMAGES, IMAGE_ROOT, ProductImage
        names={g['key'] for g in self.w.products.groups if g['gamepower']}
        self.assertEqual(names,set(PRODUCT_IMAGES))
        for key,source in PRODUCT_IMAGES.items():
            path=IMAGE_ROOT/source['file']
            self.assertEqual(hashlib.sha256(path.read_bytes()).hexdigest(),source['sha256'])
            self.assertTrue(source['page'].startswith('https://gamepowerpc.com/headset/'))
            self.assertTrue(source['image_url'].startswith('https://gamepowerpc.com/media/'))
            art=ProductImage(key,185)
            self.assertFalse(art.image.isNull(),key)

    def test_products_layout_adapts_without_horizontal_scroll(self):
        self.w.device_catalog()
        for width in (1000,1180):
            self.w.resize(width,850);app.processEvents();app.processEvents()
            page=self.w.products
            self.assertEqual(page.scroll.horizontalScrollBar().maximum(),0)
            self.assertTrue(all(page.grid.itemAt(i).widget().width()>=255 for i in range(page.grid.count())))

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
