# Vendor device catalog

The current catalog combines 136 INF-backed product/driver labels with the configuration identities below: **149 unique IDs or patterns**, not 149 proven retail models. See the authoritative [product mapping findings](product-mappings.md) for names, hashes, source lines and remaining uncertainty. Only the owner-confirmed Fujin Pro 0600:9c16 has tested RGB transport.

The table below records the original 53 configuration entries before INF enrichment.

Sources, decoded offline and round-trip verified:

- `AppConfig.bin`, `[LED_ValueMap]`, original INI lines 642–689: 45 entries, seven visible and 38 hidden.
- `GamePowerAudioConfig.bin`, `[USB_VID_PID]`, original INI lines 1–12: 12 enumeration patterns. Four also occur in the LED table, giving 53 unique combined entries.
- Artifact hashes and offline decoding: [config findings](config-findings.md) and [artifact manifest](artifact-manifest.json).

`X` is interpreted as one hex wildcard nibble for **candidate discovery**. The original application’s entire matching algorithm has not been reconstructed. An exact LED entry takes precedence over a general enumeration pattern. A vendor Windows revision constraint is preserved in `devices.json`; Linux read-only discovery intentionally lists candidates even if their revision differs. That listing never authorizes a report.

The seven RGB-visible IDs are `0600:1316`, `0c76:1700`, `0600:9b16`, `0600:9c16`, `0600:2616`, `331a:5025`, `331a:5026`. A shared configuration does not prove identical HID report lengths, MCU firmware, I2C routing or initialization. For each additional device, establish its identity, interfaces and report descriptor, trace its selected transport branch, then test ordinary effects with its owner. No guessed packets, persistent save or EEPROM commands are permitted.

## App and CLI

**Device catalog** in the app lists every entry, its validation status, and matching connected products. It does not open device nodes. The CLI provides:

```sh
python3 fujin.py models
python3 fujin.py devices --all
```

`devices` without `--all` still returns only verified lighting matches. Actual RGB control and the EQ target remain restricted to the verified Fujin Pro. Neither catalog edits nor a matching VID/PID can bypass the transport’s independent descriptor and interface checks. Unknown device names are displayed as unknown rather than invented retail models.

The inventory reads cached sysfs text only; no USB requests, serial numbers or raw reports are read. USB topology and product text may still identify local equipment; keep its output private when appropriate.

## Complete catalog

| VID:PID / pattern | Vendor enumeration | Windows revision | Vendor RGB UI | Linux RGB |
| --- | --- | --- | --- | --- |
| 0600:0818 | LED table only | — | hidden | not enabled |
| 0600:1016 | LED table only | — | hidden | not enabled |
| 0600:1116 | LED table only | — | hidden | not enabled |
| 0600:1216 | LED table only | — | hidden | not enabled |
| 0600:1316 | LED table only | — | visible | not enabled |
| 0600:1416 | LED table only | — | hidden | not enabled |
| 0600:1516 | LED table only | — | hidden | not enabled |
| 0600:1616 | LED table only | — | hidden | not enabled |
| 0600:1710 | yes | 0100 | hidden | not enabled |
| 0600:1716 | LED table only | — | hidden | not enabled |
| 0600:1816 | LED table only | — | hidden | not enabled |
| 0600:1916 | LED table only | — | hidden | not enabled |
| 0600:1a16 | LED table only | — | hidden | not enabled |
| 0600:1b16 | LED table only | — | hidden | not enabled |
| 0600:1c16 | LED table only | — | hidden | not enabled |
| 0600:1d16 | LED table only | — | hidden | not enabled |
| 0600:1e16 | LED table only | — | hidden | not enabled |
| 0600:1f16 | LED table only | — | hidden | not enabled |
| 0600:2016 | LED table only | — | hidden | not enabled |
| 0600:2116 | LED table only | — | hidden | not enabled |
| 0600:2210 | LED table only | — | hidden | not enabled |
| 0600:2216 | LED table only | — | hidden | not enabled |
| 0600:2316 | LED table only | — | hidden | not enabled |
| 0600:2416 | LED table only | — | hidden | not enabled |
| 0600:2516 | LED table only | — | hidden | not enabled |
| 0600:2616 | LED table only | — | visible | not enabled |
| 0600:2716 | LED table only | — | hidden | not enabled |
| 0600:2816 | yes | 0100 | hidden | not enabled |
| 0600:3316 | LED table only | — | hidden | not enabled |
| 0600:3c16 | LED table only | — | hidden | not enabled |
| 0600:3d16 | LED table only | — | hidden | not enabled |
| 0600:3e16 | LED table only | — | hidden | not enabled |
| 0600:3f16 | LED table only | — | hidden | not enabled |
| 0600:6716 | LED table only | — | hidden | not enabled |
| 0600:7x16 | LED table only | — | hidden | not enabled |
| 0600:8x16 | LED table only | — | hidden | not enabled |
| 0600:9b16 | LED table only | — | visible | not enabled |
| 0600:9c16 | LED table only | — | visible | verified Fujin Pro |
| 0600:ax16 | LED table only | — | hidden | not enabled |
| 0600:bx16 | LED table only | — | hidden | not enabled |
| 0600:cx16 | LED table only | — | hidden | not enabled |
| 0600:xx16 | yes | 0100 | unspecified | not enabled |
| 0600:xx17 | yes | 0100 | unspecified | not enabled |
| 0600:xx18 | yes | 0100 | unspecified | not enabled |
| 0c76:1700 | LED table only | — | visible | not enabled |
| 0c76:1711 | yes | 0100 | unspecified | not enabled |
| 0c76:1712 | yes | 0100 | unspecified | not enabled |
| 0c76:1715 | yes | 0100 | unspecified | not enabled |
| 0c76:1720 | yes | 0100 | unspecified | not enabled |
| 0c76:172x | LED table only | — | hidden | not enabled |
| 0c76:xx16 | yes | 0100 | unspecified | not enabled |
| 331a:5025 | yes | 0100 | visible | not enabled |
| 331a:5026 | yes | 0100 | visible | not enabled |
