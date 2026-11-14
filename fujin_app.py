#!/usr/bin/env python3
"""Native Qt6 desktop controller for Fujin Pro lighting and playback EQ."""
import getpass
import json
import math
import os
from pathlib import Path
import re
import sys

from PyQt6.QtCore import Qt, QRectF, QPointF, QProcess, QTimer
from PyQt6.QtGui import QColor, QFont, QPainter, QPainterPath, QPen, QLinearGradient, QRadialGradient, QConicalGradient, QIcon
from PyQt6.QtWidgets import (QApplication, QMainWindow, QWidget, QFrame, QLabel, QPushButton,
    QVBoxLayout, QHBoxLayout, QGridLayout, QStackedWidget, QSlider, QLineEdit,
    QColorDialog, QComboBox, QSizePolicy, QMessageBox, QDialog, QTableWidget, QTableWidgetItem, QHeaderView, QAbstractItemView)
import fujin
import fujin_devices

ROOT = Path(__file__).resolve().parent
STATE = ROOT / '.state' / 'desktop.json'
BLUE = '#00b8f5'
MODE_LABELS = {'single': 'Fixed', 'breathe': 'Breathe', 'rainbow': 'Rainbow', 'blink': 'Blink', 'off': 'Off'}
FREQ_LABELS = ('31.5', '63', '125', '250', '500', '1k', '2k', '4k', '8k', '16k')
PRESETS = {'Flat': [0]*10, 'Vendor profile 1': [4,2,0,-3,-2,-1,-3,0,1,3],
           'Warm': [3,2,1,0,0,-1,-1,0,0,-1], 'Voice clarity': [-3,-2,-1,0,1,2,3,2,0,-1]}

STYLE = '''
QWidget { background: #090a0c; color: #eef0f4; font-family: "Inter", "Noto Sans", sans-serif; font-size: 13px; }
QMainWindow { background: #090a0c; }
QFrame#panel { background: #202226; border: 1px solid #292c31; border-radius: 12px; }
QFrame#sidebar { background: #181a1e; border: none; border-radius: 12px; }
QLabel { background: transparent; }
QLabel#muted { color: #9298a3; }
QLabel#eyebrow { color: #878e9a; font-size: 10px; font-weight: 700; letter-spacing: 2px; }
QLabel#title { font-size: 25px; font-weight: 750; }
QLabel#section { font-size: 18px; font-weight: 700; }
QPushButton { background: #272a30; border: 1px solid #353941; border-radius: 7px; padding: 10px 16px; font-weight: 600; }
QPushButton:hover { background: #333740; border-color: #525b67; }
QPushButton:pressed { background: #13171b; }
QPushButton:checked { color: #08c5ff; border-color: #00a9e7; background: #123242; }
QPushButton:disabled { color: #626873; background: #1c1f24; border-color: #292d33; }
QPushButton#primary { background: #00b8f5; color: #031822; border: none; padding: 12px 24px; }
QPushButton#primary:hover { background: #55d4ff; }
QPushButton#primary:disabled { background: #244653; color: #758e99; }
QPushButton#nav { text-align: left; border: none; background: transparent; padding: 15px; color: #a8afb9; }
QPushButton#nav:checked { color: #0ac6ff; background: #16303d; }
QPushButton#ghost { background: transparent; border: none; color: #a6adb8; padding: 7px 10px; }
QPushButton#ghost:hover { color: white; background: #24272c; }
QPushButton#swatch { padding: 0; border: 2px solid #535963; border-radius: 14px; }
QLineEdit { background: #121418; border: 1px solid #3c424c; border-radius: 6px; padding: 9px; selection-background-color: #007da5; }
QLineEdit:focus { border-color: #00b8f5; }
QComboBox { background: #17191d; border: 1px solid #3b4048; padding: 9px 14px; border-radius: 6px; min-width: 130px; }
QComboBox QAbstractItemView { background: #202226; selection-background-color: #164157; }
QSlider { background: transparent; }
QSlider::groove:horizontal { background: #3d424b; height: 3px; border-radius: 1px; }
QSlider::sub-page:horizontal { background: #00b8f5; border-radius: 1px; }
QSlider::handle:horizontal { background: white; width: 12px; margin: -5px 0; border-radius: 6px; }
QSlider::groove:vertical { background: #40454d; width: 3px; }
QSlider::handle:vertical { background: #edf5fc; height: 12px; margin: 0 -5px; border-radius: 6px; }
QToolTip { background: #252a31; color: white; border: 1px solid #58606c; padding: 6px; }
'''

def label(text, name=None):
    w = QLabel(text)
    if name: w.setObjectName(name)
    return w

def button(text, callback=None, name=None):
    w = QPushButton(text)
    if callback: w.clicked.connect(callback)
    if name: w.setObjectName(name)
    w.setCursor(Qt.CursorShape.PointingHandCursor)
    return w

def panel():
    w=QFrame(); w.setObjectName('panel'); return w

class HeadsetArt(QWidget):
    """Original scalable vector illustration; no vendor product image dependency."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.mode='rainbow'; self.color=QColor('#ff0080'); self.phase=0
        self.setMinimumSize(190,220)
        self.setSizePolicy(QSizePolicy.Policy.Expanding,QSizePolicy.Policy.Expanding)
        self.timer=QTimer(self); self.timer.timeout.connect(self.animate); self.timer.start(50)
    def animate(self):
        if self.isVisible(): self.phase+=0.025; self.update()
    def paintEvent(self,event):
        p=QPainter(self);p.setRenderHint(QPainter.RenderHint.Antialiasing)
        scale=min(self.width()/440,self.height()/420)
        p.translate(self.width()/2-220*scale,self.height()/2-205*scale);p.scale(scale,scale)
        # Ground shadow, then the band, yokes and matte earcups.
        shadow=QRadialGradient(220,365,170);shadow.setColorAt(0,QColor(0,0,0,170));shadow.setColorAt(1,QColor(0,0,0,0))
        p.setPen(Qt.PenStyle.NoPen);p.setBrush(shadow);p.drawEllipse(QRectF(40,337,360,65))
        band=QPainterPath();band.moveTo(100,244);band.cubicTo(54,20,385,9,343,241)
        p.setBrush(Qt.BrushStyle.NoBrush);p.setPen(QPen(QColor('#0c0e12'),43,Qt.PenStyle.SolidLine,Qt.PenCapStyle.RoundCap));p.drawPath(band)
        p.setPen(QPen(QColor('#4e535d'),34,Qt.PenStyle.SolidLine,Qt.PenCapStyle.RoundCap));p.drawPath(band)
        p.setPen(QPen(QColor('#22252c'),27,Qt.PenStyle.SolidLine,Qt.PenCapStyle.RoundCap));p.drawPath(band)
        inner=QPainterPath();inner.moveTo(115,207);inner.cubicTo(103,60,332,55,330,209)
        p.setPen(QPen(QColor('#101217'),17,Qt.PenStyle.SolidLine,Qt.PenCapStyle.RoundCap));p.drawPath(inner)
        p.setPen(QPen(QColor('#69717d'),7));p.drawLine(QPointF(98,184),QPointF(88,264));p.drawLine(QPointF(341,184),QPointF(352,264))
        strength=1
        if self.mode=='off': strength=0
        elif self.mode=='breathe': strength=.22+.78*(math.sin(self.phase*2)+1)/2
        elif self.mode=='blink': strength=1 if math.sin(self.phase*5)>0 else .1
        for x,angle in ((108,12),(332,-12)):
            p.save();p.translate(x,267);p.rotate(angle)
            g=QLinearGradient(-49,0,49,0);g.setColorAt(0,QColor('#101217'));g.setColorAt(.4,QColor('#363a43'));g.setColorAt(1,QColor('#121419'))
            p.setPen(QPen(QColor('#555b65'),1.5));p.setBrush(g);p.drawRoundedRect(QRectF(-51,-77,102,151),42,42)
            p.setPen(QPen(QColor('#0b0d11'),9));p.setBrush(QColor('#171a20'));p.drawEllipse(QRectF(-38,-57,76,116))
            if self.mode=='rainbow':
                rgb=QConicalGradient(0,0,self.phase*100)
                for at,c in ((0,'#ff1785'),(.22,'#9357ff'),(.45,'#00caff'),(.67,'#3affb5'),(.85,'#ffdb63'),(1,'#ff1785')):rgb.setColorAt(at,QColor(c))
                brush=rgb
            else:
                c=QColor(self.color);c.setAlphaF(strength);brush=c if strength else QColor('#3a404a')
            p.setBrush(Qt.BrushStyle.NoBrush)
            if strength:
                for width,alpha in ((19,18),(12,35)):
                    glow=QColor(self.color if self.mode!='rainbow' else '#00bfff');glow.setAlpha(int(alpha*strength))
                    p.setPen(QPen(glow,width));p.drawEllipse(QRectF(-32,-50,64,101))
            p.setPen(QPen(brush,3.5));p.drawEllipse(QRectF(-32,-50,64,101))
            p.setPen(QColor('#a2a8b3'));p.setFont(QFont('Noto Sans',12,QFont.Weight.Bold));p.drawText(QRectF(-30,-20,60,35),Qt.AlignmentFlag.AlignCenter,'F')
            p.restore()
        # Boom mic.
        mic=QPainterPath();mic.moveTo(87,313);mic.cubicTo(66,359,149,366,179,354)
        p.setPen(QPen(QColor('#101217'),10,Qt.PenStyle.SolidLine,Qt.PenCapStyle.RoundCap));p.drawPath(mic)
        p.setPen(QPen(QColor('#5b606b'),2));p.drawPath(mic)
        p.setPen(QPen(QColor('#242831'),13,Qt.PenStyle.SolidLine,Qt.PenCapStyle.RoundCap));p.drawLine(QPointF(177,354),QPointF(191,351))
        p.end()

class GainGraph(QWidget):
    def __init__(self): super().__init__();self.gains=[0]*10;self.setMinimumHeight(115)
    def paintEvent(self,event):
        p=QPainter(self);p.setRenderHint(QPainter.RenderHint.Antialiasing)
        r=QRectF(14,14,self.width()-28,self.height()-28)
        for db in (-6,0,6):
            y=r.center().y()-db*r.height()/12
            p.setPen(QPen(QColor('#32363d'),1,Qt.PenStyle.DashLine));p.drawLine(QPointF(r.left(),y),QPointF(r.right(),y))
        points=[QPointF(r.left()+i*r.width()/9,r.center().y()-g*r.height()/12) for i,g in enumerate(self.gains)]
        path=QPainterPath(points[0])
        for pt in points[1:]:path.lineTo(pt)
        fill=QPainterPath(path);fill.lineTo(r.right(),r.bottom());fill.lineTo(r.left(),r.bottom());fill.closeSubpath()
        grad=QLinearGradient(0,r.top(),0,r.bottom());grad.setColorAt(0,QColor(0,184,245,50));grad.setColorAt(1,QColor(0,184,245,0))
        p.fillPath(fill,grad);p.setPen(QPen(QColor(BLUE),2));p.drawPath(path)
        p.setBrush(QColor('#d6f5ff'));p.setPen(Qt.PenStyle.NoPen)
        for pt in points:p.drawEllipse(pt,3,3)
        p.end()

class Window(QMainWindow):
    def __init__(self):
        super().__init__();self.setWindowTitle('Fujin Control');self.setWindowIcon(QIcon(str(ROOT/'assets/fujin.svg')))
        self.resize(1180,850);self.setMinimumSize(1000,800)
        self.mode='rainbow';self.rgb='ff0080';self.speed=100;self.gains=[0.0]*10;self.busy=False;self.eq_pending=None;self.eq_ready=False;self.eq_failure=''
        self.device_path=None;self.last_applied=None
        self.load_state()
        self.proc=QProcess(self);self.proc.finished.connect(self.lighting_finished);self.proc.errorOccurred.connect(self.lighting_error)
        self.eq_proc=QProcess(self);self.eq_proc.readyReadStandardOutput.connect(self.eq_output);self.eq_proc.finished.connect(self.eq_finished);self.eq_proc.errorOccurred.connect(self.eq_process_error)
        self.eq_buffer='';self.eq_intentional_stop=False;self.closing=False
        root=QWidget();self.setCentralWidget(root);layout=QVBoxLayout(root);layout.setContentsMargins(28,23,28,17);layout.setSpacing(22)
        top=QHBoxLayout();self.back=button('‹  Devices',lambda:self.navigate('home'),'ghost');top.addWidget(self.back)
        brand=label('FUJIN  /  CONTROL');brand.setStyleSheet('font-weight:800; letter-spacing:2px; font-size:15px;');top.addWidget(brand);top.addStretch()
        top.addWidget(label('DESKTOP', 'eyebrow'));top.addSpacing(8);top.addWidget(label('Local profile'));top.addSpacing(16)
        top.addWidget(button('Device catalog',self.device_catalog,'ghost'));top.addWidget(button('Help',self.help,'ghost'));layout.addLayout(top)
        self.stack=QStackedWidget();layout.addWidget(self.stack,1)
        self.home=self.make_home();self.stack.addWidget(self.home)
        self.controls=self.make_controls();self.stack.addWidget(self.controls)
        foot=QHBoxLayout();self.connection=label('', 'muted');foot.addWidget(self.connection);foot.addStretch();foot.addWidget(label('GAMEPOWER FUJIN PRO   ·   USB','eyebrow'));layout.addLayout(foot)
        self.poll=QTimer(self);self.poll.timeout.connect(self.check_device);self.poll.start(2000)
        self.update_lighting();self.update_gains();self.check_device();self.navigate('home')
    def load_state(self):
        try:
            d=json.loads(STATE.read_text())
            if d.get('mode') in MODE_LABELS:self.mode=d['mode']
            if re.fullmatch('[0-9a-fA-F]{6}',str(d.get('rgb',''))):self.rgb=d['rgb'].lower()
            if type(d.get('speed')) is int and 0<=d['speed']<=255:self.speed=d['speed']
            gs=d.get('gains')
            if isinstance(gs,list) and len(gs)==10 and all(type(v) in (int,float) and math.isfinite(v) and -6<=v<=6 for v in gs):self.gains=gs
        except (OSError,ValueError,TypeError):pass
    def save_state(self):
        try:
            STATE.parent.mkdir(exist_ok=True)
            tmp=STATE.with_suffix('.tmp');tmp.write_text(json.dumps({'mode':self.mode,'rgb':self.rgb,'speed':self.speed,'gains':self.gains},indent=2));tmp.replace(STATE)
        except OSError as e:self.status.setText(f'Settings could not be saved: {e}')
    def make_home(self):
        home=QWidget();v=QVBoxLayout(home);v.setContentsMargins(0,12,0,0);v.setSpacing(20)
        h=QHBoxLayout();t=QVBoxLayout();t.addWidget(label('YOUR SETUP','eyebrow'));t.addWidget(label('One headset. Your atmosphere.','title'));h.addLayout(t);h.addStretch();self.home_badge=label('Checking device…','muted');h.addWidget(self.home_badge);v.addLayout(h)
        row=QHBoxLayout();row.setSpacing(18)
        card=panel();cv=QVBoxLayout(card);cv.setContentsMargins(25,24,25,24)
        cv.addWidget(label('FUJIN PRO','section'));cv.addWidget(label('USB gaming headset','muted'))
        self.home_art=HeadsetArt();cv.addWidget(self.home_art,1)
        cr=QHBoxLayout();cr.addWidget(label('RGB LIGHTING  /  PLAYBACK EQ','eyebrow'));cr.addStretch();cr.addWidget(button('Customize  →',lambda:self.navigate('lighting'),'primary'));cv.addLayout(cr);row.addWidget(card,3)
        aside=QVBoxLayout();aside.setSpacing(18)
        for cap,title,desc,cta,page in [('MAKE IT YOURS','A little color goes a long way.','Choose an effect, find your color, and make the setup feel like you.','Explore lighting  →','lighting'),('FIND YOUR SOUND','Every detail, in balance.','Ten frequency bands. Shape your headset audio to suit what you’re listening to.','Open equalizer  →','eq')]:
            box=panel();b=QVBoxLayout(box);b.setContentsMargins(25,25,25,25);b.setSpacing(15);b.addWidget(label(cap,'eyebrow'))
            l=label(title,'section');l.setWordWrap(True);b.addWidget(l);l=label(desc,'muted');l.setWordWrap(True);b.addWidget(l);b.addStretch();b.addWidget(button(cta,lambda checked=False,p=page:self.navigate(p),'ghost'));aside.addWidget(box,1)
        row.addLayout(aside,2);v.addLayout(row,1)
        v.addWidget(label('Changes are applied when you choose Apply. Opening the app leaves your headset as it is.','muted'))
        return home
    def make_controls(self):
        w=QWidget();h=QHBoxLayout(w);h.setContentsMargins(0,0,0,0);h.setSpacing(20)
        side=QFrame();side.setObjectName('sidebar');side.setFixedWidth(235);s=QVBoxLayout(side);s.setContentsMargins(18,24,18,22);s.setSpacing(10)
        s.addWidget(label('FUJIN PRO','section'));s.addWidget(label('USB gaming headset','muted'));s.addSpacing(25)
        self.nav={}
        for key,text in [('lighting','◉   Lighting'),('eq','≋   Equalizer')]:
            b=button(text,lambda checked=False,k=key:self.navigate(k),'nav');b.setCheckable(True);self.nav[key]=b;s.addWidget(b)
        s.addSpacing(28);s.addWidget(label('QUICK LOOKS','eyebrow'))
        for text,mode,rgb,speed in [('Spectrum','rainbow','00caff',100),('Rose glow','breathe','ff0080',100),('Ice blue','single','00caff',0),('Lights out','off','00caff',0)]:
            s.addWidget(button(text,lambda checked=False,m=mode,c=rgb,sp=speed:self.quick_look(m,c,sp),'ghost'))
        s.addStretch();s.addWidget(label('PROFILE STORAGE','eyebrow'));l=label('Your choices stay on this computer.','muted');l.setWordWrap(True);s.addWidget(l)
        h.addWidget(side)
        body=QVBoxLayout();body.setSpacing(14)
        self.pages=QStackedWidget();self.light_page=self.make_lighting();self.eq_page=self.make_eq();self.pages.addWidget(self.light_page);self.pages.addWidget(self.eq_page);body.addWidget(self.pages,1)
        self.status=label('Choose a setting, then apply it.','muted');self.status.setWordWrap(True);self.status.setMinimumHeight(36);body.addWidget(self.status)
        h.addLayout(body,1);return w
    def make_lighting(self):
        w=QWidget();v=QVBoxLayout(w);v.setContentsMargins(9,0,0,0);v.setSpacing(18)
        v.addWidget(label('LIGHTING','eyebrow'));row=QHBoxLayout();row.addWidget(label('Set the mood.','title'));row.addStretch();self.effect_badge=label('RAINBOW','muted');row.addWidget(self.effect_badge);v.addLayout(row)
        top=QHBoxLayout();self.art=HeadsetArt();top.addWidget(self.art,3)
        box=QVBoxLayout();box.setSpacing(14);box.addStretch();box.addWidget(label('COLOR','eyebrow'))
        self.color_button=button('Choose color',self.choose_color);self.color_button.setMinimumHeight(48);box.addWidget(self.color_button)
        self.hex=QLineEdit(self.rgb.upper());self.hex.setMaxLength(7);self.hex.setPlaceholderText('RRGGBB');self.hex.setAccessibleName('Hex color');self.hex.textEdited.connect(self.hex_edited);box.addWidget(self.hex)
        palette=QGridLayout()
        for i,c in enumerate(('ff0080','ff453a','ff9f0a','ffd60a','30d158','00caff','6c5cff','bf5af2')):
            b=button('',lambda checked=False,c=c:self.set_color(c));b.setFixedSize(27,27);b.setObjectName('swatch');b.setStyleSheet(f'background: #{c}; border: 2px solid #535963; border-radius: 13px;');b.setAccessibleName(f'Color #{c}');palette.addWidget(b,i//4,i%4)
        box.addLayout(palette);self.color_hint=label('Preview only until applied.','muted');self.color_hint.setWordWrap(True);box.addWidget(self.color_hint);box.addStretch();top.addLayout(box,1);v.addLayout(top,1)
        v.addWidget(label('EFFECT','eyebrow'));modes=QHBoxLayout();self.mode_buttons={}
        for key,title in MODE_LABELS.items():
            b=button(title,lambda checked=False,m=key:self.set_mode(m));b.setCheckable(True);b.setAccessibleName(f'{title} lighting effect');modes.addWidget(b);self.mode_buttons[key]=b
        v.addLayout(modes)
        speedrow=QHBoxLayout();speedrow.addWidget(label('EFFECT SPEED','eyebrow'));speedrow.addStretch();self.speed_label=label('100','muted');speedrow.addWidget(self.speed_label);v.addLayout(speedrow)
        self.speed_slider=QSlider(Qt.Orientation.Horizontal);self.speed_slider.setRange(0,255);self.speed_slider.setValue(self.speed);self.speed_slider.setAccessibleName('Effect speed');self.speed_slider.valueChanged.connect(self.speed_changed);v.addWidget(self.speed_slider)
        note=label('Raw effect value · animated preview is illustrative','muted');v.addWidget(note)
        end=QHBoxLayout();end.addWidget(button('Preview command',self.preview_command,'ghost'));end.addStretch();self.apply_light=button('Apply lighting',self.apply_lighting,'primary');end.addWidget(self.apply_light);v.addLayout(end);return w
    def make_eq(self):
        w=QWidget();v=QVBoxLayout(w);v.setContentsMargins(9,0,0,0);v.setSpacing(18)
        v.addWidget(label('PLAYBACK EQUALIZER','eyebrow'));r=QHBoxLayout();r.addWidget(label('Find your balance.','title'));r.addStretch();self.eq_badge=label('OFF','muted');r.addWidget(self.eq_badge);v.addLayout(r)
        r=QHBoxLayout();r.addWidget(label('PRESET','eyebrow'));self.preset=QComboBox();self.preset.addItems([*PRESETS,'Custom']);self.preset.setCurrentText('Custom' if any(self.gains) else 'Flat');self.preset.currentTextChanged.connect(self.set_preset);r.addWidget(self.preset);r.addStretch();r.addWidget(button('Reset bands',lambda:self.preset.setCurrentText('Flat'),'ghost'));v.addLayout(r)
        self.graph=GainGraph();self.graph.setMinimumHeight(80);self.graph.setMaximumHeight(100);v.addWidget(self.graph,1)
        box=panel();box.setMinimumHeight(235);bands=QHBoxLayout(box);bands.setContentsMargins(22,22,22,20);bands.setSpacing(13);self.eq_sliders=[];self.gain_labels=[]
        for i,freq in enumerate(FREQ_LABELS):
            col=QVBoxLayout();value=label('0.0');value.setAlignment(Qt.AlignmentFlag.AlignCenter);col.addWidget(value)
            slider=QSlider(Qt.Orientation.Vertical);slider.setRange(-60,60);slider.setValue(round(self.gains[i]*10));slider.setMinimumHeight(130);slider.setAccessibleName(f'{freq} Hz EQ gain in tenths of a decibel');slider.valueChanged.connect(lambda value,i=i:self.gain_changed(i,value));col.addWidget(slider,1,Qt.AlignmentFlag.AlignHCenter)
            text=label(freq);text.setAlignment(Qt.AlignmentFlag.AlignCenter);col.addWidget(text);bands.addLayout(col,1);self.eq_sliders.append(slider);self.gain_labels.append(value)
        v.addWidget(box,3)
        row=QHBoxLayout();row.addWidget(label('±6 dB  ·  10 bands','muted'));row.addStretch();self.headroom_label=label('Input trim 0.0 dB','muted');self.headroom_label.setToolTip('Positive EQ boosts lower the input level to leave headroom.');row.addWidget(self.headroom_label);row.addSpacing(18);row.addWidget(label('BAND GAINS  /  Hz','eyebrow'));v.addLayout(row)
        hint=label('For EQ, choose “Fujin Pro Equalizer” as your app’s output in KDE audio.','muted');hint.setWordWrap(True);v.addWidget(hint)
        row=QHBoxLayout();self.stop_eq=button('Turn EQ off',self.disable_eq);self.stop_eq.setEnabled(False);row.addWidget(self.stop_eq);row.addStretch();self.apply_eq=button('Enable EQ',self.enable_eq,'primary');row.addWidget(self.apply_eq);v.addLayout(row);return w
    def navigate(self,page):
        self.stack.setCurrentIndex(0 if page=='home' else 1);self.back.setVisible(page!='home')
        if page!='home':
            self.pages.setCurrentIndex(0 if page=='lighting' else 1)
            for key,b in self.nav.items():b.setChecked(key==page)
    def quick_look(self,mode,rgb,speed):
        self.navigate('lighting');self.mode=mode;self.rgb=rgb;self.speed=speed;self.update_lighting();self.status.setText('Look selected. Choose Apply lighting to send it to your headset.')
    def set_mode(self,mode):
        self.mode=mode;self.speed={'single':0,'breathe':100,'rainbow':100,'blink':168,'off':1}[mode];self.update_lighting()
    def set_color(self,color):self.rgb=color;self.update_lighting()
    def choose_color(self):
        color=QColorDialog.getColor(QColor('#'+self.rgb),self,'Choose your headset color',QColorDialog.ColorDialogOption.DontUseNativeDialog)
        if color.isValid():self.set_color(color.name()[1:])
    def hex_edited(self,text):
        text=text.lstrip('#')
        if re.fullmatch('[0-9a-fA-F]{6}',text):self.rgb=text.lower();self.update_lighting(preserve_hex=True)
        else:self.hex.setStyleSheet('border-color: #ef7373;');self.apply_light.setEnabled(False)
    def speed_changed(self,value):self.speed=value;self.speed_label.setText(str(value))
    def update_lighting(self,preserve_hex=False):
        for art in (self.art,self.home_art):art.mode=self.mode;art.color=QColor('#'+self.rgb);art.update()
        for key,b in self.mode_buttons.items():b.setChecked(key==self.mode)
        if not preserve_hex:self.hex.setText(self.rgb.upper())
        self.hex.setStyleSheet('');self.color_button.setStyleSheet(f'border-left: 8px solid #{self.rgb};')
        color_mode=self.mode in ('single','blink','breathe');self.hex.setEnabled(color_mode);self.color_button.setEnabled(color_mode)
        self.color_hint.setText('Preview only until applied.' if color_mode else 'This effect uses its own palette.' if self.mode=='rainbow' else 'All headset lights off.')
        self.speed_slider.setValue(self.speed);self.speed_slider.setEnabled(self.mode not in ('off','single'));self.speed_label.setText(str(self.speed) if self.mode!='off' else '—')
        self.effect_badge.setText(MODE_LABELS[self.mode].upper())
        if hasattr(self,'connection'):self.check_device()
    def lighting_args(self):
        if self.mode=='off':return ['off']
        if self.mode=='rainbow':return ['rainbow','--speed',str(self.speed)]
        return ['color',self.rgb,'--mode',self.mode,'--speed',str(self.speed)]
    def preview_command(self):
        args=self.lighting_args();self.status.setText('Command preview: python fujin.py '+' '.join(args)+'  ·  Nothing sent.')
    def check_device(self):
        try:
            devices=fujin.discover();self.device_path=str(devices[0]) if len(devices)==1 else None
            writable=bool(self.device_path and os.access(self.device_path,os.R_OK|os.W_OK))
            text='●  Connected' if writable else '●  Connected · permission needed' if self.device_path else '○  Connect your Fujin Pro' if not devices else 'Multiple matching headsets · use CLI device selection'
        except (OSError,fujin.FujinError) as e:self.device_path=None;writable=False;text=str(e)
        self.connection.setText(text);self.home_badge.setText(text)
        valid=bool(re.fullmatch('[0-9a-fA-F]{6}',self.hex.text().lstrip('#')))
        self.apply_light.setEnabled(writable and not self.busy and valid)
        self.apply_light.setToolTip('Apply the selected lighting' if writable else 'Open Help for device access instructions')
        if not self.eq_ready:self.apply_eq.setEnabled(bool(self.device_path) and self.eq_proc.state()==QProcess.ProcessState.NotRunning)
    def apply_lighting(self):
        if self.busy:return
        self.busy=True;self.last_applied=(self.mode,self.rgb,self.speed)
        self.status.setText('Applying lighting…');self.apply_light.setText('Applying…');self.check_device()
        self.proc.start(sys.executable,[str(ROOT/'fujin.py'),*self.lighting_args(),'--device',self.device_path])
    def lighting_finished(self,code,status):
        self.busy=False;self.apply_light.setText('Apply lighting')
        if code==0 and status==QProcess.ExitStatus.NormalExit:self.status.setText(f'{MODE_LABELS[self.last_applied[0]]} lighting applied.');self.save_state()
        else:self.status.setText(self.proc.readAllStandardError().data().decode().strip() or 'Lighting could not be applied. Reconnect the headset and try again.')
        self.check_device()
    def lighting_error(self,error):
        if error==QProcess.ProcessError.FailedToStart:self.busy=False;self.apply_light.setText('Apply lighting');self.status.setText('Could not start the lighting controller.');self.check_device()
    def set_preset(self,name):
        if name in PRESETS:
            for slider,gain in zip(self.eq_sliders,PRESETS[name]):slider.blockSignals(True);slider.setValue(round(gain*10));slider.blockSignals(False)
            self.gains=list(PRESETS[name]);self.update_gains()
    def gain_changed(self,index,value):
        self.gains[index]=value/10;self.preset.blockSignals(True);self.preset.setCurrentText('Custom');self.preset.blockSignals(False);self.update_gains()
    def update_gains(self):
        for l,g in zip(self.gain_labels,self.gains):l.setText(f'{g:+.1f}')
        self.graph.gains=self.gains[:];self.graph.update();self.headroom_label.setText(f'Input trim {-max(0,*self.gains):.1f} dB')
    def enable_eq(self):
        if not (ROOT/'fujin_eq.py').exists():self.status.setText('EQ backend is not installed. See README.md.');return
        self.eq_pending=self.gains[:]
        if self.eq_proc.state()!=QProcess.ProcessState.NotRunning:
            self.eq_intentional_stop=True;self.eq_proc.terminate();self.status.setText('Updating equalizer…')
        else:self.start_eq()
    def start_eq(self):
        gains=self.eq_pending;self.eq_pending=None;self.eq_ready=False;self.eq_failure='';self.eq_buffer='';self.eq_intentional_stop=False;self.closing=False
        self.eq_proc.start(sys.executable,[str(ROOT/'fujin_eq.py'),'run','--gains',json.dumps(gains)])
        self.apply_eq.setEnabled(False);self.stop_eq.setEnabled(True);self.eq_badge.setText('STARTING');self.status.setText('Starting headset equalizer…')
    def eq_output(self):
        self.eq_buffer+=self.eq_proc.readAllStandardOutput().data().decode()
        while '\n' in self.eq_buffer:
            line,self.eq_buffer=self.eq_buffer.split('\n',1)
            try:
                event=json.loads(line)
                if event.get('ready'):
                    self.eq_ready=True;self.eq_badge.setText('ON');self.apply_eq.setText('Apply EQ');self.apply_eq.setEnabled(True);self.stop_eq.setEnabled(True);self.status.setText('Equalizer ready. In KDE audio, choose “Fujin Pro Equalizer” as your app’s output.' if event.get('routed_count',0)==0 else 'Headset playback is now using the equalizer.');self.save_state()
                elif event.get('error'):self.eq_failure=str(event['error']);self.status.setText(self.eq_failure)
            except ValueError:pass
    def disable_eq(self):
        self.eq_pending=None;self.eq_intentional_stop=True;self.eq_proc.terminate();self.status.setText('Turning equalizer off…')
    def eq_finished(self,code,status):
        error=self.eq_proc.readAllStandardError().data().decode().strip();self.eq_ready=False;self.eq_badge.setText('OFF');self.stop_eq.setEnabled(False);self.apply_eq.setText('Enable EQ');self.check_device()
        if self.eq_pending is not None:
            if code==0 and status==QProcess.ExitStatus.NormalExit:QTimer.singleShot(0,self.start_eq)
            else:
                self.eq_pending=None;self.status.setText(error[-500:] or 'EQ update stopped because the previous audio graph could not be cleaned up.')
        elif self.eq_intentional_stop:
            if code==0 and status==QProcess.ExitStatus.NormalExit:
                self.status.setText('Equalizer off. Headset playback restored.')
                if self.closing:QTimer.singleShot(0,self.close)
            else:
                self.closing=False;self.status.setText(error[-500:] or 'Equalizer stopped with a cleanup error. Check KDE playback output.')
        else:self.status.setText(self.eq_failure or error[-500:] or 'The equalizer stopped.')
    def eq_process_error(self,error):
        if error==QProcess.ProcessError.FailedToStart:self.eq_ready=False;self.eq_badge.setText('OFF');self.stop_eq.setEnabled(False);self.apply_eq.setEnabled(True);self.status.setText('Could not start the equalizer backend.')
    def device_catalog(self):
        dialog=QDialog(self);dialog.setWindowTitle('Vendor headset catalog');dialog.resize(1040,650)
        layout=QVBoxLayout(dialog)
        title=label('Devices listed in the Windows software','section');layout.addWidget(title)
        note=label('53 USB identities / families · 7 with vendor lighting enabled. Retail names are not provided. Only the Fujin Pro 0600:9c16 transport has been verified.','muted');note.setWordWrap(True);layout.addWidget(note)
        table=QTableWidget(len(fujin_devices.CATALOG),4);table.setHorizontalHeaderLabels(['USB ID / family','Model name','Lighting status','Connected'])
        table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers);table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
        table.verticalHeader().hide();table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.ResizeToContents)
        table.horizontalHeader().setSectionResizeMode(2,QHeaderView.ResizeMode.Stretch);layout.addWidget(table,1)
        detail=label('X means a vendor wildcard nibble. Connected names are read from sysfs; no USB commands are sent.','muted');detail.setWordWrap(True);layout.addWidget(detail)
        def refresh():
            try:
                connected=fujin_devices.inventory()
                detail.setText('Read-only USB catalog detection. RGB writes stay restricted to the verified transport.')
            except OSError as exc:
                connected=[];detail.setText('Device inventory unavailable: '+str(exc))
            for row,entry in enumerate(fujin_devices.CATALOG):
                names=[d['product'] or d['vid']+':'+d['pid'] for d in connected if d['catalog_pattern']==entry['vid']+':'+entry['pid']]
                for column,text in enumerate((entry['vid']+':'+entry['pid'],entry['name'] or 'Retail name unknown',fujin_devices.status(entry),', '.join(names) or '—')):
                    table.setItem(row,column,QTableWidgetItem(text))
        actions=QHBoxLayout();actions.addWidget(button('Refresh connected devices',refresh));actions.addStretch();actions.addWidget(button('Close',dialog.accept));layout.addLayout(actions)
        refresh();dialog.exec()

    def help(self):
        text='Fujin Control\n\nLighting: select an effect, color and speed, then Apply lighting.\nEQ: adjust the bands, then Enable EQ / Apply EQ. EQ stays active while this app is open. In KDE audio, select Fujin Pro Equalizer as your application’s output.\n\nThe ten frequencies, ±6 dB range and Vendor profile 1 come from the Windows configuration. Linux uses PipeWire peaking filters (Q 1.4); matching the Windows DSP exactly is not established. Positive boosts add input attenuation for headroom.\n\nIf the headset needs access, use the scoped udev rule in README.md. For a temporary test, run this in a terminal:\n\nsudo setfacl -m u:'+getpass.getuser()+':rw '+(self.device_path or '/dev/hidrawN')+'\n\nClosing the app leaves lighting as-is and stops its software EQ. Settings are remembered locally; nothing applies automatically at launch.'
        QMessageBox.information(self,'About & device access',text)
    def closeEvent(self,event):
        if self.busy:self.status.setText('Wait for the current lighting change to finish before closing.');event.ignore();return
        if self.eq_proc.state()!=QProcess.ProcessState.NotRunning:
            self.closing=True;self.eq_pending=None;self.eq_intentional_stop=True;self.eq_proc.terminate();self.status.setText('Stopping equalizer and restoring playback…');event.ignore();return
        self.save_state();event.accept()

def main():
    app=QApplication(sys.argv);app.setApplicationName('Fujin Control');app.setDesktopFileName('fujin-control');app.setStyle('Fusion');app.setStyleSheet(STYLE)
    w=Window();w.show()
    return app.exec()

if __name__=='__main__':sys.exit(main())
