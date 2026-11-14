# Product and driver USB mappings

Research date: 2026-11-14. All extraction and inspection was headless. No vendor program was executed, no device node was opened, and no hardware commands, firmware writes, EEPROM writes, memory writes or hardware saves were performed.

## Result and interpretation

The installer contains **136 distinct VID:PID model rows** in each of its 32-bit and 64-bit INF resources. The parsed model rows, labels, revisions, audio interfaces and source line numbers match exactly between resources. All rows specify revision `0100` and audio interface `00`. These Windows audio installation constraints are evidence of driver association, not a HID interface number or RGB transport protocol.

The original 53 configuration identities overlap 40 exact INF IDs: 53 + 136 − 40 = **149 catalog IDs/patterns**. There are 96 new exact entries. Wildcard families are retained and do not count as additional distinct retail models. Exact entries inherit the most specific existing lighting rule, including hidden rules, before gaining a driver label. Seven IDs remain RGB-visible in the vendor configuration; only 0600:9c16 is RGB verified.

## Primary sources and provenance

The primary mapping source is the vendor's [Virtual 7.1 v1.7 archive](https://gamepowerpc.com/downloads/gamepower_virtual_71_software_v17_win64.rar), linked through official product downloads such as [Fujin Pro](https://gamepowerpc.com/headset/fujin-pro/downloads) and [Mihawk Pro](https://gamepowerpc.com/headset/mihawk-pro/downloads). Archive member: `Gamepower Virtual 7.1 Software/GAMEPOWER_USB_Virtual7_1_Setup.exe`. Its INF resources are `.rsrc/1028/INF/113` (GamePowerExt32, NTx86) and `.rsrc/1028/INF/114` (GamePowerExt64, NTamd64), driver version `12/10/2024, 1.8.2024.1210`.

Raw proprietary artifacts stay outside this public repository. Hashes are SHA-256 over exact original bytes, before text conversion:

| Artifact | Bytes | SHA-256 |
| --- | ---: | --- |
| Virtual 7.1 source archive | 91142249 | `b3a220c52c179a146d00b69c2796edc6acb6dd224bee99c6a6436236ad40723a` |
| Installer member | 138710376 | `a75e649109d97736c1f1857db5cbc058612ab110c420d5f8854459a7ccca213b` |
| .rsrc/1028/INF/113 | 18047 | `65ca2350a9e27fc97dde39e842379485c99b15cf0dc619a4aaf4c1381f1a664b` |
| .rsrc/1028/INF/114 | 18051 | `57ef4c40bf28bd49a3a75cfecc6d92cf95d88770ce1b4b2484937e8aef2d06f8` |

Reproduce without executing any installer (use private paths for artifacts/output):

```sh
unrar p /private/gamepower_virtual_71_software_v17_win64.rar 'Gamepower Virtual 7.1 Software/GAMEPOWER_USB_Virtual7_1_Setup.exe' > /private/setup.exe
7z x -so /private/setup.exe .rsrc/1028/INF/113 > /private/113.inf
7z x -so /private/setup.exe .rsrc/1028/INF/114 > /private/114.inf
python3 tools/extract_inf_mappings.py /private/setup.exe > /private/derived-mappings.json
```

The script checks that both resource datasets match. Source line numbers below are 1-based, including blank lines, from original INF bytes split at CRLF. Each `model line` resolves its `%symbol%` through the `[Strings]` assignment at `string line`; numbers are identical in both resources. The table publishes derived identity facts, not the complete INF.

## 22 explicit GamePower labels

These labels are written literally in the INF, without adding a brand prefix:

| VID:PID | Driver label |
| --- | --- |
| 0600:1016 | RAIJIN |
| 0600:1116 | KIZARU |
| 0600:1216 | MIHAWK |
| 0600:1316 | FUJIN |
| 0600:1416 | KYRUSE |
| 0600:1516 | VOLDON |
| 0600:1616 | KUGON |
| 0600:1716 | JIN |
| 0600:1816 | MEDUSA |
| 0600:1916 | MEDUSA RAINBOW |
| 0600:1a16 | MEI RGB |
| 0600:1b16 | LUNA |
| 0600:1c16 | WARLORD |
| 0600:1d16 | RANGER |
| 0600:1e16 | TINKER |
| 0600:1f16 | TINKER V2 |
| 0600:2316 | KYRUSE PRO |
| 0600:2416 | KIZARU PRO |
| 0600:2516 | MIHAWK PRO |
| 0600:2616 | FUJIN PRO |
| 0600:2716 | KAI TITANIUM |
| 0600:2816 | RYO |

## Independent PS5 package cross-checks

Official package downloads were inspected as archives only. Their 512-byte images were read into process memory for hashing and identity inspection, never transmitted or written to hardware. Filenames and embedded identity bytes agree with these INF IDs. The image identity is an intended firmware identity, not proof that every retail revision enumerates that way.

- [Fujin Pro official package](https://gamepowerpc.com/downloads/gamepower_fujin_pro_ps5_driver_v10_win64.rar): archive 939502 bytes, SHA-256 `817d650523c866566ab7bffd25f0aad4bc87d785b609613a4f794e4171c1c6b7`. Member `FUJIN PRO/SSS1700-VID=0600-PID=2616-PS=FUJIN PRO-24C04-20231207(EQLED)16Bit24Bit48K96K.bin`: 512 bytes, SHA-256 `8f4dd73c9e7e7728bf3d48b230fa458b388f96e8639104dcfe7e463744912098`. Little-endian VID/PID bytes at image byte offset 24 match `0600:2616`; ASCII product string is `FUJIN PRO`.
- [Mihawk Pro official package](https://gamepowerpc.com/downloads/gamepower_mihawk_pro_ps5_driver_v100_playstation_5.rar): archive 939411 bytes, SHA-256 `e6b2421a328c2740a26ea57519424126cda94168b8a24740d057c851b787a71f`. Member `MIHAWK PRO/SSS1700-VID=0600-PID=2516-PS=MIHAWK PRO-24C04-20231208.bin`: 512 bytes, SHA-256 `aafab7707c8c75a0c78af5d3883d76fbb0e7bc38ebf43d0784e936ff6a214ad9`. Little-endian VID/PID bytes at image byte offset 24 match `0600:2516`; ASCII product string is `MIHAWK PRO`.
- [Raijin official package](https://gamepowerpc.com/downloads/gamepower_raijin_ps5_driver_v100_playstation_5.rar): archive 939389 bytes, SHA-256 `ce09850d1f162ab7429e61fb70cb1717b3e9c95f464a5e764ca57b674f7db067`. Member `RAIJIN/SSS1700-VID=0600-PID=1016-PS=RAIJIN-24C04-20231208(48K96K).bin`: 512 bytes, SHA-256 `58bd3f7feffebc214cc6ad1c73860e8dc3d330af3f25cc89a54088e76821f386`. Little-endian VID/PID bytes at image byte offset 24 match `0600:1016`; ASCII product string is `RAIJIN`.

## Conflicts and limits

- `0600:9c16` resolves to generic driver label `USBFC1S-RGB`. Its owner-confirmed product name remains **GamePower Fujin Pro**, stored separately from `driver_name`. `0600:2616` is explicitly `FUJIN PRO` in both INF and the official PS5 image. These are distinct evidence-backed identities; neither implies shared RGB transport.
- `331a:5025` and `331a:5026` explicitly resolve to Genesis Neon 764 Black/White labels in this first-party bundled INF. These are driver labels from a shared multi-brand package, not evidence of a GamePower retail model.
- Generic labels such as `USBFC1-A`, numeric labels `710`/`711`/`712`, and repeated labels remain literal driver labels. No unique retail name is invented. The INF covers ABKO, COX and other brands; package membership does not establish manufacturer ownership or interoperability.
- The configuration's `0600:1710` and `0600:2210` remain separate IDs; do not silently correct them to similarly numbered INF IDs. All 13 configuration-only rows/patterns retain unknown driver labels unless separately owner-confirmed.
- Matching is candidate discovery only, intentionally independent of Windows revision qualification. LED visibility still comes from configuration, not the presence of RGB in a driver label. No new packet format, effect, EQ target or write authorization follows from these findings. The transport remains limited to VID/PID 0600:9c16, product USBFC1S-RGB, its exact 62-byte descriptor and HID interface 3.

## Complete 136-row INF mapping

Source for every row: both hashed installer resources above. Model and string line numbers apply to both.

| VID:PID | Revision | Audio MI | Driver label | Symbol | Model line | String line |
| --- | --- | --- | --- | --- | ---: | ---: |
| 0600:0818 | 0100 | 00 | USBZH3 | `USBZH3` | 19 | 285 |
| 0600:3316 | 0100 | 00 | USBZH5XK | `USBZH5XK` | 20 | 287 |
| 0600:7016 | 0100 | 00 | COX CH57 | `COX_CH57` | 21 | 236 |
| 0600:7316 | 0100 | 00 | USBFC1 WENC | `USBFC1_WENC` | 22 | 268 |
| 0600:7e16 | 0100 | 00 | ABKO N995 | `ABKO_N995` | 23 | 229 |
| 0600:7f16 | 0100 | 00 | ABKO N620 | `ABKO_N620` | 24 | 226 |
| 0600:8416 | 0100 | 00 | COX CH42 | `COX_CH42` | 25 | 233 |
| 0600:8516 | 0100 | 00 | USBZH5XK-ENC | `USBZH5XK-ENC` | 26 | 288 |
| 0600:8a16 | 0100 | 00 | USBFC1-A | `USBFC1-A` | 27 | 263 |
| 0600:8b16 | 0100 | 00 | USBFC1-A | `USBFC1-A` | 28 | 263 |
| 0600:9616 | 0100 | 00 | 2.4G USB Gaming Headset | `2.4G_USB_Gaming_Headset` | 29 | 217 |
| 0600:9716 | 0100 | 00 | 2.4G USB Gaming Headset | `2.4G_USB_Gaming_Headset` | 30 | 217 |
| 0600:a116 | 0100 | 00 | FH-VIRTUAL7.1 | `FH-VIRTUAL7.1` | 31 | 239 |
| 0600:a216 | 0100 | 00 | AG0501 | `AG0501` | 32 | 230 |
| 0600:a416 | 0100 | 00 | ABKO N550 | `ABKO_N550` | 33 | 225 |
| 0600:a616 | 0100 | 00 | USBFC1 | `USBFC1` | 34 | 262 |
| 0600:a716 | 0100 | 00 | USBFC1 | `USBFC1` | 35 | 262 |
| 0600:ad16 | 0100 | 00 | USBGHY1 | `USBGHY1` | 36 | 281 |
| 0600:bc16 | 0100 | 00 | COX CH43 | `COX_CH43` | 37 | 234 |
| 0600:be16 | 0100 | 00 | ABKO EH550 | `ABKO_EH550` | 38 | 223 |
| 0600:c416 | 0100 | 00 | ABKO M550 | `ABKO_M550` | 39 | 224 |
| 0600:c516 | 0100 | 00 | COX SCARLET | `COX_SCARLET` | 40 | 237 |
| 0600:c716 | 0100 | 00 | ABKO B890U | `ABKO_B890U` | 41 | 222 |
| 0600:c816 | 0100 | 00 | ABKO N810 | `ABKO_N810` | 42 | 227 |
| 0600:c916 | 0100 | 00 | ABKO B850U | `ABKO_B850U` | 43 | 221 |
| 0600:cc16 | 0100 | 00 | ABKO N990 | `ABKO_N990` | 44 | 228 |
| 0c76:1712 | 0100 | 00 | COX CH47 | `COX_CH47` | 45 | 235 |
| 0600:6716 | 0100 | 00 | USBZH5XK | `USBZH5XK` | 47 | 287 |
| 0600:8116 | 0100 | 00 | USBZH3-ENC | `USBZH3-ENC` | 48 | 286 |
| 0600:8d16 | 0100 | 00 | USBFC1-A | `USBFC1-A` | 49 | 263 |
| 0600:9c16 | 0100 | 00 | USBFC1S-RGB | `USBFC1S-RGB` | 50 | 267 |
| 0600:aa16 | 0100 | 00 | USBZH5XK-ENC | `USBZH5XK-ENC` | 51 | 288 |
| 0600:ac16 | 0100 | 00 | USBFC6 | `USBFC6` | 52 | 269 |
| 0600:b416 | 0100 | 00 | USBFC1-A | `USBFC1-A` | 53 | 263 |
| 0600:1016 | 0100 | 00 | RAIJIN | `RAIJIN` | 55 | 254 |
| 0600:1116 | 0100 | 00 | KIZARU | `KIZARU` | 56 | 242 |
| 0600:1216 | 0100 | 00 | MIHAWK | `MIHAWK` | 57 | 249 |
| 0600:1316 | 0100 | 00 | FUJIN | `FUJIN` | 58 | 240 |
| 0600:1416 | 0100 | 00 | KYRUSE | `KYRUSE` | 59 | 244 |
| 0600:1516 | 0100 | 00 | VOLDON | `VOLDON` | 60 | 292 |
| 0600:1616 | 0100 | 00 | KUGON | `KUGON` | 61 | 243 |
| 0600:1716 | 0100 | 00 | JIN | `JIN` | 62 | 241 |
| 0600:1816 | 0100 | 00 | MEDUSA | `MEDUSA` | 63 | 246 |
| 0600:1916 | 0100 | 00 | MEDUSA RAINBOW | `MEDUSA_RAINBOW` | 64 | 247 |
| 0600:1a16 | 0100 | 00 | MEI RGB | `MEI_RGB` | 65 | 248 |
| 0600:1b16 | 0100 | 00 | LUNA | `LUNA` | 66 | 245 |
| 0600:1c16 | 0100 | 00 | WARLORD | `WARLORD` | 67 | 293 |
| 0600:1d16 | 0100 | 00 | RANGER | `RANGER` | 68 | 255 |
| 0600:1e16 | 0100 | 00 | TINKER | `TINKER` | 69 | 258 |
| 0600:1f16 | 0100 | 00 | TINKER V2 | `TINKER_V2` | 70 | 259 |
| 0600:2016 | 0100 | 00 | 710 | `710` | 71 | 218 |
| 0600:2116 | 0100 | 00 | 711 | `711` | 72 | 219 |
| 0600:2216 | 0100 | 00 | 712 | `712` | 73 | 220 |
| 0600:2218 | 0100 | 00 | USBGH1XK | `USBGH1XK` | 75 | 279 |
| 0600:2318 | 0100 | 00 | USBGH1XK | `USBGH1XK` | 76 | 279 |
| 0600:6516 | 0100 | 00 | USBZH11S | `USBZH11S` | 77 | 283 |
| 0600:7416 | 0100 | 00 | USBFC1 WENC | `USBFC1_WENC` | 78 | 268 |
| 0600:7816 | 0100 | 00 | USBFC1 WENC | `USBFC1_WENC` | 79 | 268 |
| 0600:8216 | 0100 | 00 | ZH20-C-ENC | `ZH20-C-ENC` | 80 | 294 |
| 0600:8316 | 0100 | 00 | USBGH8-Plus-7.1-ENC | `USBGH8-Plus-7.1-ENC` | 81 | 280 |
| 0600:a016 | 0100 | 00 | ZH21 | `ZH21` | 82 | 295 |
| 0600:b516 | 0100 | 00 | USBFH10 | `USBFH10` | 83 | 271 |
| 0600:bd16 | 0100 | 00 | USBFC1-L | `USBFC1-L` | 84 | 264 |
| 0600:bf16 | 0100 | 00 | USBSH1 | `USBSH1` | 85 | 282 |
| 0600:c016 | 0100 | 00 | USBFH20 | `USBFH20` | 86 | 273 |
| 0600:c116 | 0100 | 00 | USBFH25 | `USBFH25` | 87 | 275 |
| 0600:c216 | 0100 | 00 | USBZH29 | `USBZH29` | 88 | 284 |
| 0600:cb16 | 0100 | 00 | USBFH26 | `USBFH26` | 89 | 276 |
| 0600:cd16 | 0100 | 00 | USBFH22 | `USBFH22` | 90 | 274 |
| 0600:7716 | 0100 | 00 | MONSTER AIRMARS N3S | `MONSTER_AIRMARS_N3S` | 92 | 252 |
| 0600:7c16 | 0100 | 00 | AIRMARS KMH7 HEADPHONE | `AIRMARS_KMH7_HEADPHONE` | 93 | 232 |
| 0600:7d16 | 0100 | 00 | AIRMARS KMH7 HEADPHONE | `AIRMARS_KMH7_HEADPHONE` | 94 | 232 |
| 0600:b116 | 0100 | 00 | AIRMARS KMH5 HEADPHONE | `AIRMARS_KMH5_HEADPHONE` | 95 | 231 |
| 0600:b316 | 0100 | 00 | AIRMARS KMH5 HEADPHONE | `AIRMARS_KMH5_HEADPHONE` | 96 | 231 |
| 0600:b816 | 0100 | 00 | MONSTER AIRMARS N1S | `MONSTER_AIRMARS_N1S` | 97 | 250 |
| 0600:b916 | 0100 | 00 | MONSTER AIRMARS N3 | `MONSTER_AIRMARS_N3` | 98 | 251 |
| 0c76:1715 | 0100 | 00 | MONSTER AIRMARS N1S | `MONSTER_AIRMARS_N1S` | 99 | 250 |
| 0c76:1711 | 0100 | 00 | USBFC1S | `USBFC1S` | 101 | 266 |
| 0c76:1720 | 0100 | 00 | USBFH11 | `USBFH11` | 102 | 272 |
| 0600:8e16 | 0100 | 00 | 2.4G USB Audio Device | `2.4G_USB_Audio_Device` | 104 | 216 |
| 0600:9b16 | 0100 | 00 | USBFC1-RGB | `USBFC1-RGB` | 105 | 265 |
| 0600:8c16 | 0100 | 00 | Tronsmart Glary | `Tronsmart_Glary` | 107 | 260 |
| 0600:9316 | 0100 | 00 | ORYX X330 | `ORYX_X330` | 108 | 253 |
| 0600:9d16 | 0100 | 00 | USB Gaming Headset HX500 | `USB_Gaming_Headset_HX500` | 109 | 290 |
| 0600:a816 | 0100 | 00 | USB BANSHEE HS-P18 | `USB_BANSHEE_HS-P18` | 110 | 289 |
| 0600:ab16 | 0100 | 00 | USBFC6-MUTE | `USBFC6-MUTE` | 111 | 270 |
| 0600:ae16 | 0100 | 00 | Tronsmart Sparkle | `Tronsmart_Sparkle` | 112 | 261 |
| 0600:b016 | 0100 | 00 | USB YHP3035 | `USB_YHP3035` | 113 | 291 |
| 0600:c316 | 0100 | 00 | SHUOMENG SM-H1PRO | `SHUOMENG_SM-H1PRO` | 114 | 256 |
| 0600:c616 | 0100 | 00 | SHUOMENG SM-H2PRO | `SHUOMENG_SM-H2PRO` | 115 | 257 |
| 0600:d016 | 0100 | 00 | USBFH29 | `USBFH29` | 116 | 277 |
| 0600:d116 | 0100 | 00 | USBFH30 | `USBFH30` | 117 | 278 |
| 0c76:7216 | 0100 | 00 | FC1S-WENC | `FC1S-WENC` | 118 | 238 |
| 0c76:7616 | 0100 | 00 | FC1S-WENC | `FC1S-WENC` | 119 | 238 |
| 0c76:9416 | 0100 | 00 | FC1S-WENC | `FC1S-WENC` | 122 | 238 |
| 0600:1700 | 0100 | 00 | USBFC3S WENC | `USBFC3S_WENC` | 123 | 298 |
| 0600:3016 | 0100 | 00 | USBZH21min | `USBZH21min` | 124 | 299 |
| 0600:3116 | 0100 | 00 | USBZH29min | `USBZH29min` | 125 | 300 |
| 0600:3216 | 0100 | 00 | USBFH28S | `USBFH28S` | 126 | 301 |
| 0600:3716 | 0100 | 00 | ABKO N950 | `ABKO_N950` | 129 | 304 |
| 0600:3616 | 0100 | 00 | ABKO N530 | `ABKO_N530` | 130 | 305 |
| 0600:2316 | 0100 | 00 | KYRUSE PRO | `KYRUSE_PRO` | 131 | 306 |
| 0600:2416 | 0100 | 00 | KIZARU PRO | `KIZARU_PRO` | 132 | 307 |
| 0600:2516 | 0100 | 00 | MIHAWK PRO | `MIHAWK_PRO` | 133 | 308 |
| 0600:2616 | 0100 | 00 | FUJIN PRO | `FUJIN_PRO` | 134 | 309 |
| 0600:3816 | 0100 | 00 | USBFH10 | `USBFH10` | 135 | 271 |
| 0600:3416 | 0100 | 00 | HX35 | `HX35` | 136 | 310 |
| 0600:3516 | 0100 | 00 | GAME HX7 | `GAME_HX7` | 137 | 311 |
| 0600:3916 | 0100 | 00 | dbE Otogai | `dbE_Otogai` | 140 | 314 |
| 0600:4016 | 0100 | 00 | YHP 3036NEXUS | `YHP_3036NEXUS` | 141 | 315 |
| 0600:3a16 | 0100 | 00 | GT Orion | `GT_Orion` | 142 | 316 |
| 0600:3b16 | 0100 | 00 | FC1S-WENC-A | `FC1S-WENC-A` | 143 | 317 |
| 0600:2716 | 0100 | 00 | KAI TITANIUM | `KAI_TITANIUM` | 144 | 318 |
| 0600:3c16 | 0100 | 00 | USBFC1S-BASS | `USBFC1S-BASS` | 147 | 321 |
| 0600:3d16 | 0100 | 00 | dbE GM300 | `dbE_GM300` | 148 | 322 |
| 0600:3e16 | 0100 | 00 | USBFC1S-SE | `USBFC1S-SE` | 149 | 323 |
| 0600:3f16 | 0100 | 00 | USBZHXK3-SE | `USBZHXK3-SE` | 150 | 324 |
| 331a:5025 | 0100 | 00 | Genesis Neon 764 Black | `Genesis_Neon_764_Black` | 151 | 325 |
| 331a:5026 | 0100 | 00 | Genesis Neon 764 White | `Genesis_Neon_764_White` | 152 | 326 |
| 0600:4116 | 0100 | 00 | USBFH11 | `USBFH11` | 155 | 272 |
| 0600:4516 | 0100 | 00 | ABKO N980 | `ABKO_N980` | 156 | 330 |
| 0600:ca16 | 0100 | 00 | dbE GM210 | `dbE_GM210` | 157 | 331 |
| 0600:4616 | 0100 | 00 | USBFH832 | `USBFH832` | 158 | 332 |
| 0600:4816 | 0100 | 00 | USBFH839 | `USBFH839` | 161 | 335 |
| 0600:4916 | 0100 | 00 | COX CH31 | `COX_CH31` | 162 | 336 |
| 0600:5016 | 0100 | 00 | COX CH7 | `COX_CH7` | 163 | 337 |
| 0600:5216 | 0100 | 00 | DYNOXIFY E200-USB | `DYNOXIFY_E200-USB` | 164 | 338 |
| 0600:5316 | 0100 | 00 | DYNOXIFY D350-USB | `DYNOXIFY_D350-USB` | 165 | 339 |
| 0600:4416 | 0100 | 00 | Beast MSA-010 | `Beast_MSA-010` | 166 | 340 |
| 0600:2816 | 0100 | 00 | RYO | `RYO` | 169 | 343 |
| 0600:2916 | 0100 | 00 | JD713 | `JD713` | 170 | 344 |
| 0600:5516 | 0100 | 00 | INFINITEX SOUND FORCE | `INFINITEX_SOUND_FORCE` | 171 | 345 |
| 0600:5616 | 0100 | 00 | GH01BE | `GH01BE` | 172 | 346 |
| 0600:5716 | 0100 | 00 | USBFH22S-A | `USBFH22S-A` | 173 | 347 |
| 0600:5816 | 0100 | 00 | ZGH30 | `ZGH30` | 174 | 348 |
| 0600:5916 | 0100 | 00 | FH31W | `FH31W` | 175 | 349 |

## Integration validation

The catalog CLI returns 149 rows with 136 driver labels. All 53 original entries retain every original field value; new exact entries inherit existing wildcard lighting rules. The full headless suite passes 32 tests, including source-line resolution, architecture mismatch rejection, owner/driver separation, generic and other-brand names, wildcard precedence, GUI labels and refusal of unverified catalog identities by the independent write transport. Directory and Git-history gitleaks scans pass. No raw vendor artifacts or machine captures are included.
