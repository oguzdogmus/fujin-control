# Product image review — 2026-11-14

Every one of the 22 named GamePower products was checked against its official product page and hero image. Source pages and images were downloaded for offline review; local HTML and diagnostic contact sheets remain outside the published repository. The app uses the original listing images, not a recolored generic illustration. A generic illustration remains only for unpictured third-party/OEM driver entries.

The media references below are direct first-party sources. Exact image URLs, SHA-256 hashes and product-page links are also in [the image manifest](../assets/products/manifest.json). Four standard/Pro pairs share identical image bytes on the vendor site; those assets are reused. There are 22 image mappings and 18 unique images. Product photos do not show current headset lighting and do not establish protocol compatibility.

| Product | Official page | Visual review |
| --- | --- | --- |
| RAIJIN | [Product listing](https://gamepowerpc.com/headset/raijin) | Rounded rectangular cups, twin suspension rails, perimeter rainbow light. |
| KIZARU | [Product listing](https://gamepowerpc.com/headset/kizaru) | Triangular outer shell and cut-out suspension yoke. |
| MIHAWK | [Product listing](https://gamepowerpc.com/headset/mihawk) | Angular polygonal cups with inset polygon light border. |
| FUJIN | [Product listing](https://gamepowerpc.com/headset/fujin) | Angular pentagonal cup, wide outer bracket, forward boom microphone. |
| KYRUSE | [Product listing](https://gamepowerpc.com/headset/kyruse) | Elongated triangular cup and suspension headband. |
| VOLDON | [Product listing](https://gamepowerpc.com/headset/voldon) | Round cups with segmented illuminated outer ring. |
| KUGON | [Product listing](https://gamepowerpc.com/headset/kugon) | Round closed cups with thin perimeter light. |
| JIN | [Product listing](https://gamepowerpc.com/headset/jin) | Round cups, broad outer rails and thin circular lighting. |
| MEDUSA | [Product listing](https://gamepowerpc.com/headset/medusa) | Green geometric grille and green microphone accents. |
| MEDUSA RAINBOW | [Product listing](https://gamepowerpc.com/headset/medusa-rainbow) | Similar geometric grille, with multicolor lighting rather than solid green. |
| MEI RGB | [Product listing](https://gamepowerpc.com/headset/mei) | Round cups with red outer support arcs and microphone accent. |
| LUNA | [Product listing](https://gamepowerpc.com/headset/luna) | Round cups and thin multicolor perimeter ring. |
| WARLORD | [Product listing](https://gamepowerpc.com/headset/warlord) | Round cups, thick cushions, dark shell and subtle ring. |
| RANGER | [Product listing](https://gamepowerpc.com/headset/ranger) | Rounded triangular housing with red outer support accents. |
| TINKER | [Product listing](https://gamepowerpc.com/headset/tinker) | Official listing shows a white outer shell with black cushions. Color is not inferred from the USB ID. |
| TINKER V2 | [Product listing](https://gamepowerpc.com/headset/tinker-v2-black) | Official Tinker V2 Black listing shows dark cups and a smaller central lit ring. |
| KYRUSE PRO | [Product listing](https://gamepowerpc.com/headset/kyruse-pro) | Official hero image is byte-identical to Kyruse; no invented visible variation. |
| KIZARU PRO | [Product listing](https://gamepowerpc.com/headset/kizaru-pro) | Official hero image is byte-identical to Kizaru; no invented visible variation. |
| MIHAWK PRO | [Product listing](https://gamepowerpc.com/headset/mihawk-pro) | Official hero image is byte-identical to Mihawk; no invented visible variation. |
| FUJIN PRO | [Product listing](https://gamepowerpc.com/headset/fujin-pro) | Official hero image is byte-identical to Fujin; no invented visible variation. |
| KAI TITANIUM | [Product listing](https://gamepowerpc.com/headset/kai-titanium) | Oblong rectangular shell, padded single band, green accents and microphone tip detail. |
| RYO | [Product listing](https://gamepowerpc.com/headset/ryo-rainbow) | Oblong flat-front cups, broad side bracket and suspension headband. |

## Page behavior

Products opens an integrated, scrollable card gallery matching the dark Qt interface. GamePower products are shown first, with access to all driver entries, name/USB-ID search, tested-profile and connected-device filters, and product details. Fujin Pro's owner-confirmed and INF identities share one product card while retaining separate validation labels.

The gallery adapts between two and three columns. Official imagery is static; browsing does not start an EQ session or transmit HID reports. Only the existing verified transport can perform lighting changes. The gallery's Connected badge means a matching cached USB identity was found, not that its descriptor or write permissions passed every transport check.

Third-party product images retain their original rights and are excluded from the project's MIT grant; see [image notice](../assets/products/NOTICE.md). No original image file was retouched. The product previews were visually checked only on the 1080p eDP-1 display after compositor placement was verified.
