# Validation status — 2026-11-14

The physical Fujin Pro was confirmed by its owner as USBFC1S-RGB, VID 0600 / PID 9c16, HID interface 3. Its descriptor was checked through sysfs and the opened HID descriptor API.

| Feature | Evidence |
| --- | --- |
| Off | Owner confirmed RGB turned off from active rainbow |
| Fixed `ff0080` | Owner confirmed steady pink/magenta |
| Breathe `ff0080` | Owner confirmed fading in and out |
| Rainbow | Owner confirmed cycling through multiple colors |
| Blink | Static vendor trace only; no visual test |
| Hardware save / firmware / EEPROM / flash | Never transmitted; no app or CLI command exposed |
| EQ graph | Flat and vendor profile sessions created and removed; two output links verified to physical headset |
| EQ listening | Not yet confirmed; a running graph alone does not establish audible processing |
| GUI | Native Qt6 Wayland window, real screenshots; no reports on startup or preview |

REA 6.8.0 / Ghidra 12.1.4 cross-checked lighting and EQ paths. Incomplete Borland calling conventions make instruction excerpts the authority for exact report bytes. Raw REA JSON and machine captures are retained locally rather than distributed.

The offline suite contains 26 tests. Test results are reproducible with `python3 -m unittest -v`; no real device or audio graph is used by those tests. EQ discovery uses synthetic data so the test suite contains no user's audio inventory.

## Vendor catalog extension

All 53 unique USB identities/patterns from the vendor enumeration and LED tables are cataloged. Seven have vendor RGB UI enabled; 38 hidden; eight enumeration-only. GUI and CLI discovery are read-only. No additional transport has been enabled or tested, and no new lighting reports were sent. Tests cover table completeness, wildcard matching, exact overrides, serial omission, GUI catalog access and rejection of unverified IDs.
