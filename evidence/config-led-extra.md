# Supplemental LED static trace

Supporting objdump assembly: `assembly/config-led-extra.asm`; main executable SHA256 as in config-findings.md. Addresses below are preferred virtual addresses (PE image base0x400000). Static evidence only.

## MCU mode and palette selection

`0x5f413c` maps application modes through an explicit jump table:

| Application mode | MCU mode byte |
|---|---|
| 0 off | A1 |
| 1 single | A2 |
| 2 blink | A3 |
| 3 breathe | A4 |
| 4 rainbow | A5 |
| 5 multi breathe | A6 |
| 6 ring | AB |

`0x5f4100` returns palette entry count for Protocol1: off=0, modes1–3=1, modes4–5=7, ring=LED_Number (10 for supplied config).

`0x600ca4` applies a chosen mode under UseMCU1 and Protocol1 by calling color batch wrapper `0x6022d0`, index argument=-1, followed by speed wrapper `0x602654`. Startup-side code `0x5f243a`–`0x5f2465` also calls the color batch then speed wrappers. No EEPROM-save call appears in these bounded paths.

Color wrapper calls `0x5fc18c` to map each stored color before extracting channels: R=(color>>16)&255, G=(color>>8)&255, B=color&255. It then passes R,G,B in that argument order to `0xbeb338`. Color index passed starts at1. Mode=-1 iterates modes1–6; normal mode runs its configured count, with no color packets for off. Exact internal color-map search semantics were not fully traced.

`0x602654` maps the mode via `0x5f413c`, obtains low byte from speedArray[applicationMode], and sends it through `0xbeb3c0`. **Off forces speed1**, ignoring the array. No scaling is applied in this wrapper. It then calls `0xbeace0`.

## Required trailing zero report is visible

`0xbeace0` -> `0xbef114` -> `0xbef0d0` is not merely handle cleanup. It opens the matched HID handle, zeroes an eight-byte buffer, puts the configured report ID (config[4]) in byte0, and submits via `0xbef168` with configured report length (config[5]), then closes handle.

Color wrapper invokes this after the color batch (not after every individual color), and speed wrapper invokes it after the speed operation. Its wire-level purpose is unknown here. For reportID0, length5 this produces `00 00 00 00 00`. Do not silently omit it from vendor-equivalent framing, and do not describe its meaning beyond observed buffer construction.

## Hardware-save stays separate

`0x6028ac` is a separate path gated on UseMCU and Protocol1, calls `0x602230`, and references the diagnostic `LED_Send_MCU_Save_Command_V1 (Save)` on failure. `0x602230` actually calls **0xbeb43c**, not0xbeb4b0. It also appends the zero report through `0xbeace0`. Exact persistence command must follow 0xbeb43c; no save operation was executed.

## Alternative direct hardware PWM path

These wrappers operate on chip registers, and do not belong to the supplied configuration's MCU lighting path:

- `0xbeb17c` -> `0xbf06cc` -> `0xbf0654` writes low/high halves of a16-bit value to chip registers0x041c/0x041d.
- `0xbeb1e8` -> `0xbf079c` -> `0xbf0724` writes low/high halves to0x041a/0x041b.
- `0xbeb254` -> `0xbf08b4` -> `0xbf07f4` reads0x0434/0x0435, clears low3bits and ORs a supplied byte, writes back.
- `0xbeb2c0` -> `0xbf0a3c` -> `0xbf090c` writes one R,G,B triple to registers0x043a–0x044e selected by an index1–7.

Calling these ordinary LED/PWM register operations is supported by their use in the alternative LED UI branch, not merely by their register addresses. They should not be introduced as required MCU initialization. This trace does not establish any chip register as safe for arbitrary writes.
