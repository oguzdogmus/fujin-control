# Fujin Pro lighting protocol investigation

Status: static reconstruction plus live **descriptor-only** identification; off, steady pink, pink breathe, and rainbow visually confirmed on the connected headset. Evidence date 2026-11-14. Vendor applications were never executed. No firmware, EEPROM, flash or persistent-save command has been transmitted. All addresses below are preferred PE virtual addresses, not file offsets.

## Artifact identity and reproducibility

`fujin-vendor/main_app_106.exe` SHA256:
`23a5c22335ffa185290d860797efd823584330545bfb8dbe511f3a862f4ba80d`.
It is a native 32-bit x86 PE despite the archive's win64 name. The vendor binaries and complete decrypted configuration are not distributed. [Artifact hashes](evidence/artifact-manifest.json), [configuration findings](evidence/config-findings.md), and focused original instruction excerpts in [evidence/assembly](evidence/assembly) support the reconstruction. The offline config decoder is [tools/decode_vendor_config.py](tools/decode_vendor_config.py).

Analysis used [REA](https://github.com/morluto/rea) 6.8.0 and Ghidra 12.1.4. Nine lighting functions and three EQ queries were cross-checked. Ghidra inferred incomplete Borland calling conventions and omitted some packet-buffer stores; exact bytes come from original instructions, while REA corroborates call paths and branches. Raw session JSON, full disassembly and engine downloads remain local and are excluded from this repository.

## Confirmed device and configuration facts

The user confirms that the currently connected USBFC1S-RGB is the Fujin headset. Linux sysfs identifies USB VID0600/PID9c16, revision0100, HID interface3. The vendor's decoded `[LED_ValueMap]` explicitly enables that ID. The PS5 archive additionally contains an SSS1700 EEPROM tool and an image named VID0600/PID2616. This supports the SSS1700 family identification; it does not directly prove the silicon marking or interchangeability of the two variants. The USB ID database's “Barco” vendor label is not the product identity.

The supplied `AppConfig.bin` is a GUID header followed by DES-CBC data, not firmware. Offline decryption yields a documented INI: MCU control enabled, MCU address0x3a, protocol1, LED count10, I2C timeout1000ms, continuation delay100ms. The skin's Save button has visibility0. `LED_SaveType=1` means automatic **application INI** save, not proof of hardware persistence.

Confirmed HID report descriptor, 62 bytes:

```
050c0901a1011500250109e909ea09b509b675019504810209e209b709cd95038102050b092095018106050c26ff000900750895038102090095049102c0
```

It declares no report IDs, four-byte input and output payloads. HID APIs use a leading synthetic zero byte, so Windows/HID raw buffers contain5 bytes. Linux strips the synthetic byte for USB SET_REPORT and restores it on GET_REPORT; see `usbhid_get_raw_report` and `usbhid_set_raw_report` in [upstream Linux source](https://github.com/torvalds/linux/blob/master/drivers/hid/usbhid/hid-core.c). The CLI requires this exact descriptor and interface, then rechecks the opened fd's USB IDs and descriptor. It does not enable every ID supported by the generic vendor application.

## Transport confirmed from instructions

`0xbef1a8` builds register writes and calls `0xc92dee` (HidD_SetOutputReport import thunk). It has length4, length8 and default branches. For this headset's length5 the default path constructs:

| Operation | API buffer including synthetic report number |
| --- | --- |
| Select chip register A | `00 60 A_low A_high 10` |
| Write one byte V at selected register | `00 60 V 01 20` |
| Read selected register | same select packet, then GET_REPORT(Input),5-byte buffer |

`0xbef374` performs the read via HidD_GetInputReport and copies buffer byte2 for this report format. Input/output reports are **not feature reports**. The four bytes after the leading zero are the actual USB payload. No additive, XOR or other checksum is calculated along this selected framing path. The intervening helper0xbf2784 copies the report into a separate tracing queue when enabled; it does not alter the caller's report buffer (evidence/assembly/report-preprocessor.asm). That is a bounded static finding, not a claim about every firmware protocol.

`0xbeace0 → 0xbef114 → 0xbef0d0 → 0xbef168` sends an all-zero report of the configured length. The application appends one after a nonempty color batch and one after speed. Its purpose is not established; the CLI preserves it.

## I2C bridge transaction

`0xbefae8` implements I2C writes through chip registers; `0xbefa70` polls register0x0b bit7 until clear. For the single-byte MCU writes used here:

1. Poll chip0x0b until bit7 clear (1000ms configured timeout).
2. Read chip0x100, set bit0, preserving other bits.
3. Write chip0x110 = `3a` (the application passes the configuration byte unchanged; do not left-shift it).
4. Write chip0x008 = `04 | (MCU_register >> 6)`.
5. Write chip0x009 = value.
6. Write chip0x00b = `c0 | (MCU_register & 3f)`.
7. Poll0x0b again, then clear chip0x100 bit0, preserving other bits.

This is a traced lighting-controller register transaction, distinct from the separate device EEPROM image and the explicit MCU hardware-save command. The generic routine supports other transfers, but the CLI exposes neither arbitrary chip/MCU registers nor multibyte writes. Vendor100ms sleeps occur between color channel operations (`0xbf0aa0`); the CLI conservatively waits100ms between color writes. Polling has a2ms host sleep to avoid a tight busy loop. Kernel USB control transfer timeouts can add to the1000ms polling deadline; it is not a hard whole-command time bound.

## Modes, colors, speeds and save separation

`0x5f413c` maps UI modes to MCU bytes. `0x600ca4` under UseMCU1/Protocol1 sends the color batch through `0x6022d0`, then speed through `0x602654`. Startup code uses the same order. `evidence/config-led-extra.md` records the alternate direct PWM path, which is not required by this configuration.

| UI mode | MCU speed register | Configured default | Color registers |
| --- | --- | --- | --- |
| Off0 | a1 | forced1 in code | none |
| Single1 | a2 | 0 | 27,28,29 |
| Blink2 | a3 | 168 | 2a,2b,2c |
| Breathe3 | a4 | 100 | 2d,2e,2f |
| Rainbow4 | a5 | 100 | seven triples, below |
| Multi breathe5 | a6 | 100 | seven triples, below; not exposed yet |
| Ring6 | ab | 128 | ten triples; not exposed yet |

Speed is a raw byte0..255; no time/frequency conversion has been established. A1 receives1 for off, regardless of config's speed array. Higher/lower speed direction and physical timing remain unmeasured.

Color route: `0x6022d0 → 0xbeb338 → 0xbf0d0c → 0xbf0aa0 → 0xbefae8`. Values are RGB bytes, extracted R first, then G, then B. `0xbf0aa0` derives rainbow color triple starts with **1-based** index i: `0x2e+3*i` for i<=5, `0x2f+3*i` for i>=6. This deliberate discontinuity skips0x40. Multi-breathe starts0x0e+3*i/0x0f+3*i. Ring starts0x4e+3*i for i<=5,0x4f+3*i for6..10,0x53+3*i thereafter. Unsupported mode bytes return errors in several branches.

The UI uses an exact palette remap (`0x5fc18c`, `[LED_ColorMap]`): e.g. its orange `ff6600` maps to wire RGB `ff0a00`. The CLI's `color` means **literal wire RGB**, intentionally bypassing the UI palette remap. Its rainbow uses the seven default UI colors after their configured remap: ff0000,ff2300,ff6400,00ff00,00ffff,0a0aff,ff00ff. No gamma/brightness conversion is claimed.

Hardware save: `0x6028ac → 0x602230 → 0xbeb43c → 0xbf0eec → 0xbf0ea8` writes value1 to MCU registerf7. This is separate from normal color/speed and absent from CLI. Do not test it until ordinary changes have been observed and persistence is explicitly revisited. Merely identifying f7 does not establish which memory medium the MCU uses.

## Remaining validation

Nine offline tests check golden buffer values, the rainbow discontinuity, safe register bounds, bridge bit preservation, cleanup on failure and no device open during dry run. They cannot verify hardware behavior. Live bridge status read returned00 (idle). User visually confirmed steady pink/magenta, pink fading in and out, rainbow/multiple colors, and rainbow turning off. Rainbow was restored afterward. See [validation status](evidence/status.md). Raw live-transfer logs remain local. Blink remains statically traced but visually untested. Record timestamps, result and any effect; do not claim success from ioctl completion alone. No firmware/configuration-tool execution is required.

Capture fallback was considered but not required for the tested effects. Vendor execution under Wine and a Windows VM with physical USB passthrough were not established as operational. A future capture attempt must verify physical device access before proposing vendor USB traffic capture. No EEPROM tool is required for ordinary lighting changes.
