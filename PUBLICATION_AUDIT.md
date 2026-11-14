# Publication audit — 2026-11-14

This repository was assembled from an explicit allowlist into a new directory with a fresh Git history. The original investigation remains local. No original raw evidence directory or prior history was pushed.

The local scan found usernames and absolute home paths in documentation, launcher metadata and REA output; USB topology in udev captures; and unrelated application/device details in PipeWire graph captures. These were removed from the publication set. Gitleaks 8.30.1 scanned the curated tree with redacted reporting and found no leaks. Its official release archive matched the published SHA-256 checksum. An additional pattern scan found no absolute home paths, local login names, email addresses, credential tokens or private LAN addresses in the publication tree. That is a pattern-scan result, not a guarantee against every possible secret format.

Excluded material:

- Local `.state` settings, EQ configs/locks/logs, caches and session metadata.
- Raw PipeWire/USB inventories, REA session JSON and diagnostic logs, machine paths and user-specific launcher files.
- Vendor installers/executables, firmware and EEPROM images, full decrypted INI files, complete disassembly and decompiled C.
- Downloaded Ghidra/REA engines, archives and unrelated keyboard-control work.
- Third-party design-reference images and desktop-wide captures.

Changes made for publication:

- The app's permission help uses the current login instead of a hard-coded local username.
- EQ discovery tests use a synthetic minimal fixture instead of a complete captured audio graph.
- Installation documentation uses relative paths and a per-user launcher generator.
- Git author metadata uses the GitHub account's public noreply address, not a private email.
- Screenshots contain only the app's client area, captured from a visible Wayland instance. No settings were applied for capture. PNGs contain pixel data and no textual metadata.

Reviewed publication content includes original Python code, tests, artwork, screenshot pixels, documentation, artifact hashes and focused vendor instruction excerpts. The vendor's fixed DES config key is documented for offline decoding; it is not a personal credential. USB product IDs, the common product name and the vendor container GUID are protocol identifiers, not personal serial numbers.

`.gitignore` guards against adding common local artifacts. Re-scan the staged tree before future pushes, especially when adding raw evidence or screenshots. This audit applies to the initial publication, not automatically to later changes.
