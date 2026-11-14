# Instruction excerpts

These are bounded x86 `objdump` instruction excerpts from the Windows vendor executable identified in [the artifact manifest](../artifact-manifest.json). Addresses are preferred PE virtual addresses with image base `0x400000`. They support the register and command traces in [PROTOCOL.md](../../PROTOCOL.md) and [EQ findings](../eq-findings.md).

- `hid-write.asm`, `hid-read.asm`, `report-preprocessor.asm`: HID report construction and transport.
- `i2c.asm`, `led-low.asm`, `mcu.asm`, `speed-save.asm`: bridge and MCU lighting operations, including a separately identified save path that is never invoked by the app.
- `led-builders.asm`, `config-led-ui.asm`, `config-led-wrappers.asm`, `config-led-extra.asm`: mode selection, channel ordering and UI wrappers.
- `eq-*.asm`: software/hardware EQ branches and Windows host driver IOCTL wrappers.
- `config-crypto-disassembly.txt`: offline configuration decoding evidence.

These files are vendor-derived instruction listings for interoperability research, not original project source or a complete disassembly. No license over the vendor's code is asserted; the root MIT license applies to original project code, documentation and artwork, not these listings. The executable, installers, firmware images and full decompiled code are not included.
