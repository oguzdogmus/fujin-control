#!/usr/bin/env python3
"""Install a per-user launcher for this checkout; no root access needed."""
import os
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parent.parent


def quoted(value):
    # Desktop-entry Exec escaping, including its reserved % field-code marker.
    text = str(value).replace('%', '%%')
    for char in ('\\', '"', '`', '$'):
        text = text.replace(char, '\\' + char)
    # Exec uses double quoting; entry-level decoding consumes backslashes too.
    return '"' + text.replace('\\', '\\\\') + '"'


def main():
    data_home = Path(os.environ.get('XDG_DATA_HOME') or Path.home() / '.local/share')
    target = data_home / 'applications/fujin-control.desktop'
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text('\n'.join([
        '[Desktop Entry]', 'Type=Application', 'Name=Fujin Control',
        'Comment=GamePower Fujin Pro lighting and playback equalizer',
        'Exec=' + quoted(sys.executable) + ' ' + quoted(ROOT / 'fujin_app.py'),
        'Icon=' + str(ROOT / 'assets/fujin.svg').replace('\\', '\\\\'),
        'Terminal=false', 'Categories=AudioVideo;Audio;', 'StartupNotify=true',
        'StartupWMClass=fujin-control', '',
    ]))
    print(target)


if __name__ == '__main__':
    main()
