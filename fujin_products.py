"""Product browsing only: no transport or audio-session operations."""
import hashlib
import json
from pathlib import Path
from PyQt6.QtCore import Qt, QEvent, QTimer, QRectF
from PyQt6.QtGui import QColor, QPainter, QPixmap
from PyQt6.QtWidgets import (QWidget, QFrame, QLabel, QPushButton, QVBoxLayout,
    QHBoxLayout, QGridLayout, QLineEdit, QComboBox, QScrollArea, QStackedWidget)
import fujin_devices

# Literal product labels resolved from the vendor INF; generic OEM labels stay
# in the complete driver list, separate from these named GamePower products.
GAMEPOWER_NAMES = {'RAIJIN','KIZARU','MIHAWK','FUJIN','KYRUSE','VOLDON','KUGON',
    'JIN','MEDUSA','MEDUSA RAINBOW','MEI RGB','LUNA','WARLORD','RANGER','TINKER',
    'TINKER V2','KYRUSE PRO','KIZARU PRO','MIHAWK PRO','FUJIN PRO','KAI TITANIUM','RYO'}


IMAGE_ROOT=Path(__file__).resolve().parent/'assets/products'
PRODUCT_IMAGES=json.loads((IMAGE_ROOT/'manifest.json').read_text())


class ProductImage(QWidget):
    """Official listing image; never represents live LED state."""
    def __init__(self, key, height):
        super().__init__()
        self.setMinimumSize(100,height);self.setFixedHeight(height)
        self.image=QPixmap(str(IMAGE_ROOT/PRODUCT_IMAGES[key]['file']))
        self.setAccessibleName(key.title()+' official product image')
        self.setToolTip(PRODUCT_IMAGES[key].get('variant','Official GamePower listing image'))

    def paintEvent(self,event):
        if self.image.isNull():return
        painter=QPainter(self);painter.setRenderHint(QPainter.RenderHint.SmoothPixmapTransform)
        size=self.image.size();size.scale(self.width()-12,self.height()-6,Qt.AspectRatioMode.KeepAspectRatio)
        rect=QRectF((self.width()-size.width())/2,(self.height()-size.height())/2,size.width(),size.height())
        painter.drawPixmap(rect,self.image,QRectF(self.image.rect()))


def product_groups(entries):
    groups = {}
    for entry in entries:
        raw = entry.get('driver_name')
        key = 'FUJIN PRO' if entry['rgb_verified'] else raw or entry['vid']+':'+entry['pid']
        group = groups.setdefault(key, {'key': key, 'name': key.title().replace('Rgb','RGB'),
            'gamepower': key in GAMEPOWER_NAMES, 'entries': [], 'verified': False})
        group['entries'].append(entry)
        group['verified'] |= entry['rgb_verified']
    return sorted(groups.values(), key=lambda p: (not p['verified'], p['name']))


def text(value, style=None):
    widget=QLabel(value)
    widget.setTextFormat(Qt.TextFormat.PlainText)
    if style:widget.setObjectName(style)
    return widget


def action(value, callback, primary=False):
    widget=QPushButton(value);widget.clicked.connect(callback)
    widget.setCursor(Qt.CursorShape.PointingHandCursor)
    if primary:widget.setObjectName('primary')
    return widget


class ProductsPage(QWidget):
    def __init__(self, art_factory, customize, parent=None):
        super().__init__(parent)
        self.art_factory=art_factory;self.customize=customize
        self.groups=product_groups(fujin_devices.CATALOG)
        self.connected=set();self.inventory_error='';self.columns=0
        layout=QVBoxLayout(self);layout.setContentsMargins(0,0,0,0)
        self.stack=QStackedWidget();layout.addWidget(self.stack)
        self.gallery=QWidget();self.stack.addWidget(self.gallery)
        body=QVBoxLayout(self.gallery);body.setContentsMargins(0,0,0,0);body.setSpacing(16)
        row=QHBoxLayout();heading=QVBoxLayout();heading.addWidget(text('THE COLLECTION','eyebrow'))
        heading.addWidget(text('Find your next atmosphere.','title'));row.addLayout(heading);row.addStretch()
        self.refresh_button=action('↻  Refresh devices',self.refresh);row.addWidget(self.refresh_button);body.addLayout(row)
        note=text('Explore the headset lineup, check connected devices, and see which lighting profiles are ready.','muted');note.setWordWrap(True);body.addWidget(note)
        filters=QHBoxLayout();filters.setSpacing(12)
        self.search=QLineEdit();self.search.setPlaceholderText('Search products or USB ID…');self.search.setClearButtonEnabled(True);self.search.setAccessibleName('Search products');filters.addWidget(self.search,1)
        self.collection=QComboBox();self.collection.addItems(['GamePower products','All driver entries']);self.collection.setAccessibleName('Product collection');filters.addWidget(self.collection)
        self.availability=QComboBox();self.availability.addItems(['All profiles','Tested RGB','Connected']);self.availability.setAccessibleName('Profile availability');filters.addWidget(self.availability);body.addLayout(filters)
        meta=QHBoxLayout();self.count=text('','eyebrow');meta.addWidget(self.count);meta.addStretch();meta.addWidget(text('OFFICIAL PRODUCT IMAGES','eyebrow'));body.addLayout(meta)
        self.scroll=QScrollArea();self.scroll.setWidgetResizable(True);self.scroll.setFrameShape(QFrame.Shape.NoFrame)
        self.scroll.setHorizontalScrollBarPolicy(Qt.ScrollBarPolicy.ScrollBarAlwaysOff)
        self.grid_widget=QWidget();self.grid=QGridLayout(self.grid_widget);self.grid.setContentsMargins(0,0,8,0);self.grid.setSpacing(16)
        self.scroll.setWidget(self.grid_widget);self.scroll.viewport().installEventFilter(self);body.addWidget(self.scroll,1)
        self.empty=text('No products found. Try another name, USB ID, or filter.','muted');self.empty.setAlignment(Qt.AlignmentFlag.AlignCenter);body.addWidget(self.empty);self.empty.hide()
        self.note=text('Product names come from the vendor driver. A listed product is not a tested lighting profile.','muted');self.note.setWordWrap(True);body.addWidget(self.note)
        self.search.textChanged.connect(self.render);self.collection.currentIndexChanged.connect(self.render);self.availability.currentIndexChanged.connect(self.render)
        self.render()

    def refresh(self):
        try:
            self.connected={(d['vid'],d['pid']) for d in fujin_devices.inventory()}
            self.inventory_error=''
        except OSError as exc:
            self.connected=set();self.inventory_error='Connected devices could not be checked: '+str(exc)
        self.note.setText(self.inventory_error or 'Product names come from the vendor driver. A listed product is not a tested lighting profile.')
        self.render()

    def is_connected(self, group):
        # Match catalog patterns too, without treating them as verified profiles.
        return any(fujin_devices.matches(e['vid'],vid) and fujin_devices.matches(e['pid'],pid)
                   for e in group['entries'] for vid,pid in self.connected)

    def filtered(self):
        query=self.search.text().strip().casefold();result=[]
        for group in self.groups:
            ids=' '.join(e['vid']+':'+e['pid'] for e in group['entries'])
            if self.collection.currentIndex()==0 and not group['gamepower']:continue
            if query and query not in (group['name']+' '+ids).casefold():continue
            if self.availability.currentIndex()==1 and not group['verified']:continue
            if self.availability.currentIndex()==2 and not self.is_connected(group):continue
            result.append(group)
        return result

    def render(self):
        self.visible_products=self.filtered()
        while self.grid.count():
            item=self.grid.takeAt(0)
            if item.widget():item.widget().hide();item.widget().deleteLater()
        self.columns=3 if self.scroll.viewport().width()>=970 else 2
        for col in range(3):self.grid.setColumnStretch(col,1 if col<self.columns else 0)
        for index,group in enumerate(self.visible_products):
            self.grid.addWidget(self.card(group),index//self.columns,index%self.columns)
        # A top alignment avoids stretching a single search result vertically.
        self.grid.setAlignment(Qt.AlignmentFlag.AlignTop)
        self.count.setText(f'{len(self.visible_products)} '+('PRODUCTS' if self.collection.currentIndex()==0 else 'PRODUCT / DRIVER GROUPS'))
        self.empty.setVisible(not self.visible_products);self.scroll.setVisible(bool(self.visible_products))

    def art(self, group, height):
        if group['key'] in PRODUCT_IMAGES:return ProductImage(group['key'],height)
        art=self.art_factory();art.timer.stop();art.setMinimumSize(100,100);art.setFixedHeight(height)
        colors=('#00caff','#bd78ff','#ff5899','#38d6af','#f0b65a')
        art.color=QColor('#00caff' if group['verified'] else colors[hashlib.sha256(group['key'].encode()).digest()[0]%len(colors)])
        art.mode='single';return art

    def card(self, group):
        card=QFrame();card.setObjectName('productCard');card.setMinimumWidth(255)
        layout=QVBoxLayout(card);layout.setContentsMargins(20,18,20,18);layout.setSpacing(9)
        top=QHBoxLayout();top.addWidget(text('GAMEPOWER' if group['gamepower'] else 'VENDOR DRIVER','eyebrow'));top.addStretch()
        badge=text('TESTED RGB' if group['verified'] else 'LISTED','productBadge' if group['verified'] else 'muted');top.addWidget(badge);layout.addLayout(top)
        name=text(group['name'],'section');name.setWordWrap(True);layout.addWidget(name)
        layout.addWidget(self.art(group,185))
        line=QHBoxLayout();line.addWidget(text('●  Connected' if self.is_connected(group) else 'USB headset profile','connected' if self.is_connected(group) else 'muted'));line.addStretch();layout.addLayout(line)
        caption=text('Lighting ready · verified Fujin variant' if group['verified'] else 'Lighting compatibility not yet tested','muted');caption.setWordWrap(True);layout.addWidget(caption)
        layout.addWidget(action('Explore product  →',lambda checked=False,g=group:self.show_product(g)))
        return card

    def show_product(self, group):
        if hasattr(self,'detail'):
            self.stack.removeWidget(self.detail);self.detail.deleteLater()
        self.detail=QWidget();layout=QVBoxLayout(self.detail);layout.setContentsMargins(0,0,0,0);layout.setSpacing(20)
        back=action('‹  All products',lambda:self.stack.setCurrentWidget(self.gallery));back.setObjectName('ghost');row=QHBoxLayout();row.addWidget(back);row.addStretch();layout.addLayout(row)
        layout.addWidget(text('GAMEPOWER' if group['gamepower'] else 'VENDOR DRIVER PROFILE','eyebrow'));layout.addWidget(text(group['name'],'title'))
        card=QFrame();card.setObjectName('panel');content=QHBoxLayout(card);content.setContentsMargins(28,24,28,24)
        content.addWidget(self.art(group,300),1)
        info=QVBoxLayout();info.setSpacing(16)
        info.addWidget(text('PROFILE STATUS','eyebrow'));info.addWidget(text('Tested RGB profile' if group['verified'] else 'Awaiting lighting verification','section'))
        message=text('Off, fixed color, breathe and rainbow were tested on the Fujin Pro 0600:9c16 variant. Other IDs below remain untested.' if group['verified'] else 'This product appears in the Windows driver. Its Linux lighting transport has not been verified yet. Browsing this page does not change the headset.','muted');message.setWordWrap(True);info.addWidget(message)
        info.addWidget(text('USB IDENTITIES','eyebrow'))
        for entry in group['entries']:
            info.addWidget(text(entry['vid']+':'+entry['pid']+'  ·  '+('Tested RGB' if entry['rgb_verified'] else 'Not tested'),'muted'))
        info.addStretch()
        if group['verified']:
            info.addWidget(action('Open lighting controls  →',lambda:self.customize('lighting'),True))
        else:
            note=text('Lighting controls become available after this device’s protocol is verified.','muted');note.setWordWrap(True);info.addWidget(note)
        content.addLayout(info,1);layout.addWidget(card,1)
        fine=text('Official GamePower listing image · Product appearance does not establish lighting compatibility.','muted');fine.setWordWrap(True);layout.addWidget(fine)
        self.stack.addWidget(self.detail);self.stack.setCurrentWidget(self.detail)

    def eventFilter(self, watched, event):
        if watched is self.scroll.viewport() and event.type()==QEvent.Type.Resize:
            columns=3 if self.scroll.viewport().width()>=970 else 2
            if columns!=self.columns:QTimer.singleShot(0,self.render)
        return super().eventFilter(watched,event)

    def resizeEvent(self,event):
        super().resizeEvent(event)
        columns=3 if self.scroll.viewport().width()>=970 else 2
        if columns!=self.columns:self.render()
