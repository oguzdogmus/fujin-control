# Configuration findings, 2026-11-14

These observations come from offline file inspection. No vendor executable was launched and no USB output/feature report was sent.

## Reproducible configuration decoding

The saved `fujin-vendor/AppConfig.bin` exactly matches the member of `gamepower_virtual_71_software_v17_win64.rar` (`fe286dd7f275f00c795a226c4f2184adffc01b5c5e9e79ef11e48b385ecb6ee9`). Its 38-byte ASCII header is `{65BB2052-271D-492E-8383-AA1847735C43}`. Remaining bytes are DES-CBC, zero IV, PKCS#7 padding, key the first eight ASCII bytes of `GamePowerKey` (`47616d65506f7765`). `GamePowerAudioConfig.bin` uses the same container.

`tools/decode_vendor_config.py` decodes either file with OpenSSL and requires byte-for-byte re-encryption equality before writing. Both files passed that check. Complete decrypted configurations are retained privately and are not distributed. Field-level findings are recorded below.

Static assembly supporting this is retained in `assembly/config-crypto-disassembly.txt`, from `main_app_106.exe` SHA256 `23a5c22335ffa185290d860797efd823584330545bfb8dbe511f3a862f4ba80d`:

- VA `0xaceb88` builds a PLAINTEXTKEYBLOB type8/version2/algorithm `0x6601` (CALG_DES), key length8, copies up to eight supplied bytes, calls `CryptImportKey` via `0xc91e8a`, then `CryptDecrypt` via `0xc91e78`. The key is reused across consecutive 8-byte chunks; final flag is set on the last block. There is no explicit IV/mode override in this routine.
- `0xaf5c04` copies the supplied key into configuration object offset `0x79` and stores length at `0x179`.
- Example caller `0x7c3dfe` pushes length12 and pointer `0xcc440c`, the ASCII string `GamePowerKey`, into the key setter.
- `0xaf6b35` checks the container marker, advances past it, and `0xaf6c1d` invokes the decrypt routine with object key fields.

The successful exact round trip is stronger evidence for the effective DES parameters than import names alone. This process touches files only.

## LED settings confirmed in the supplied INI

`config-AppConfig.verified.ini`, lines 517–716:

| Setting | Value | Evidence scope |
|---|---|---|
| LED_UseMCU | 1 | Bundled application configuration |
| LED_Protocol | 1 | Comment: I2C command protocol V1, original APT support, 1629/1630 |
| LED_MCU_Address | 0x3A | Must trace transport to decide address convention |
| LED_I2C_Timeout | 1000 ms | Configuration comment names units |
| LED_I2C_ContinueSleepTime | 100 ms | Comment says interval between continued byte reads/writes |
| LED_Number | 10 | Configuration, maximum16 |
| LED_Parts | 255 | UI speed scale, wire transformation needs code trace |
| LED_DefaultMode / LastMode | 2 | Blink |
| LED_LoadType | 1 | Load last values from INI |
| LED_SaveType | 1 | Comment says auto save; **does not prove hardware persistence** |
| LED_ResetUpdateType | 0 | Reset current mode only |
| LED_UseColorMap | 1 | UI-to-device palette remapping enabled |

Mode numbers are explicitly documented: 0 off, 1 single color bright, 2 single color blink, 3 single color breath, 4 rainbow, 5 multi color breath, 6 ring. Speeds have documented INI range0–255, defaults respectively mode1=0, mode2=168, modes3–5=100, mode6=128. Popup display order includes only modes0–5, although ring controls exist in the skin.

Modes1–3 default to RGB `ff6600`. Rainbow and multi breathe each configure seven palette steps `ff3939, ff9700, fff000, 00ff00, 00dfff, 0087ff, b784ff`. Ring defines sixteen steps despite configured LED_Number10. Therefore do not assume every mode transmits exactly LED_Number RGB triples.

The color map lists display RGB and mapped RGB separately, e.g. `ff3939 -> ff0000`, `ff6600 -> ff0a00`, `ff9700 -> ff2300`, `fff000 -> ff6400`, `0087ff -> 0a0aff`, `b784ff -> ff00ff`. This may affect emulating vendor defaults; raw requested CLI RGB may reasonably bypass UI correction if documented. Wire RGB ordering still requires code evidence.

LED_ValueMap enables `0600:1316`, `0c76:1700`, `0600:9b16`, `0600:9c16`, `0600:2616`, `331a:5025`, and `331a:5026`. This is a UI visibility allowlist, not proof that all identities are GamePower Fujin Pro or have interchangeable MCU firmware.

`config-GamePowerAudioConfig.verified.ini` matches the USB family `USB\\VID_0600&PID_XX16&REV_0100`; its HID selection specifies `MI_03`. These are bundled matching rules, not actual observed Windows enumeration.

English Language.ini explicitly labels the buttons OFF, Single, Blink, Breathe, Rainbow, Multi Color Breathe, Ring, and Save to HW. Save labels have visibility0. SkinSetting.ini likewise hides the Save image. Thus generic strings do not imply the current vendor skin exposes every underlying feature.

## PS5 archive is an EEPROM package, not lighting control

Files observed in the vendor PS5 archive (not distributed here):

- `SSS1700 EEPROM Data Configuration Tool_V1.15.2023.0720(1).exe`
- `SSS1700-VID=0600-PID=2616-PS=FUJIN PRO-24C04-20231207(EQLED)16Bit24Bit48K96K.bin`, 512bytes
- Note.txt, text: `Dear User, please install the 'EEPROM' file first. Then install the .bin file`

The 512-byte image contains `00 06 16 26` at offsets0x18–0x1b, consistent with little-endian VID0600/PID2616, ASCII `FUJIN PRO` at0x22 and `Solid State System Co.,Ltd.` immediately after. The filename, data and tool name corroborate SSS1700 and intended programmed identity; they do **not** establish the currently connected device's identity or justify programming this image. No flash tool or image was executed/transmitted.

Saved main_app is not a direct RAR member. The archive has an installer; its extraction provenance remains to be independently established. Saved AppConfig membership is established by exact hash as above.
