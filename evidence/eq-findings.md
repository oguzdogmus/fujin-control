# Fujin EQ investigation and Linux implementation

2026-11-14. This extends the previously lighting-only scope at the user's explicit request. No vendor program was executed; no audio-related USB/HID, firmware, EEPROM or persistent memory command was transmitted.

## Confirmed vendor configuration

Source: the vendor AppConfig container, decoded and round-trip verified using [the offline decoder](../tools/decode_vendor_config.py). Original INI lines 430–514; full decoded text remains local.

- `EQ_WorkType=1`: the INI explicitly documents0=hardware,1=software(default).
- `EQ_UseEEPROM=0`.
- `EQ_SoftwareTurnOffHardware=1`.
- `EQ_MaxBandNumber=10`.
- Frequencies31.5,63,125,250,500,1000,2000,4000,8000,16000Hz.
- Gain bounds explicitly documented as−6..+6dB.
- Hardware EQ is documented as five fixed bands, distinct from the selected ten-band software EQ.
- Vendor Profile1 is unambiguous:4,2,0,−3,−2,−1,−3,0,1,3dB. Other profiles contain malformed comma decimal fragments and are deliberately not imported as presumed exact arrays.
- `EQ_SaveType=1` is application configuration save, not hardware persistence.

## Static trace: software EQ uses the Windows audio driver interface

Source identity is the same main_app_106.exe SHA256 recorded in `artifact-manifest.json`. Instruction evidence: `assembly/eq-control.asm`, `assembly/eq-audio-wrappers.asm`, `assembly/eq-windows-control.asm`, `assembly/eq-windows-ioctl.asm`.

`0x559878` selects software versus hardware enable paths based on the EQ structure's work-type field(offsetf4, absolute application offset3984); selected software type1 calls `0x559488`. That path can first disable the hardware EQ when configured, but then calls `0xbea764` with command selector0x0b and the requested enable byte at0x5595f6–0x559614. Its diagnostic string says AudioSetOnOff(SetEQ_OnOff_Software).

Gains: `0x5598c4`, selected software branch at0x5598f2, copies the float gain array into an0x84-byte parameter block and calls `0xbea7c0` with command selector0x0b at0x55992c–0x559951. The following diagnostic is AudioSetCommand(SetEQ_Profile_dB). Hardware takes the separate branch at0x55998c.

`0xbea764 → 0xbed774 → 0xbed6e8 → 0xbed654`; the parameter array wrapper `0xbea7c0 → 0xbed868 → 0xbed7cc → 0xbed654`. `0xbed654` calls imported DeviceIoControl(thunk0xc91f56, importIAT0xf905ac) with IOCTL0x08232800 and a driver buffer length0x11e. The enable-buffer construction puts command0x0b in byte0, operation0 in byte1, requested enable DWORD at+2. Parameter-array construction uses operation2 and copies its array at+2. These observations identify a Windows host audio-driver interface. They do not establish a Linux HID packet protocol or device-native EQ coefficients.

Thus sending the Windows driver buffer over the lighting HID channel would be unjustified. The Linux app uses PipeWire software DSP instead and leaves hardware/EEPROM settings alone.

## REA provenance (raw session files remain local)

REA6.8.0 / Ghidra12.1.4 completed a new immutable-source analysis session; closed afterward. Selected addresses were resolved to containing functions. The session IDs below identify locally retained outputs; raw results and decompiled C are not distributed:

- `eq-rea-0x559438.json`: `ev_683abaea6209c5cd3ea691b81677bfa6fd3d550a6b443778aa0b85ab503a97c8`; containing0x5593f4 gain comparison helper, not the gain-application routine.
- `eq-rea-0x5596ec.json`: `ev_f577583757ca5a0d8a3c9ffdc39c3ce5dbe6ac4f1fa4ef75c9af6b00a1e0f28c`; containing0x5596e4 hardware EQ enable alternative. Confirms it remains a separate path.
- `eq-rea-0xbea764.json`: `ev_b3e12084e9a63305a0b6a1569de9df5974c2f8b86b5371282e56d314e9f751e4`; audio enable wrapper.

REA output has the same incomplete Borland calling-convention issue as earlier lighting analysis: Ghidra omits some arguments/stores. Exact buffer offsets and command values above therefore come from the retained x86 instructions, not invented pseudocode. No claim of recovered original DSP source is made.

## Functional Linux EQ backend

`fujin_eq.py` creates a session-only PipeWire filter-chain virtual stereo playback sink named**Fujin Pro Equalizer**, feeding only the verified USB0600:9c16 playback node. It never creates a microphone/source filter and never changes the default sink, firmware or device memory.

The ten center frequencies, gain limits, and VendorProfile1 come from the confirmed configuration. Peaking biquads with Q1.4 and input headroom attenuation equal to the maximum positive gain are **Linux implementation choices**, not recovered Windows coefficients. Headroom reduces clipping risk but is not a limiter or proof against every clipped input. Graph built from the installed PipeWire filter-chain manual and `/usr/share/pipewire/filter-chain/sink-eq6.conf`; builtin mixer gain and bq_peaking Freq/Q/Gain controls are documented there. Stereo automatically duplicates the mono graph.

Primary documentation: [PipeWire filter-chain](https://docs.pipewire.org/page_module_filter_chain.html).

Discovery cross-checks the PipeWire sink's audio-device parentVID/PID/product name, USB ALSA components and stereo channels; mere matching display text is insufficient. More than one matching physical sink is refused.

The existing EasyEffects session was found to intercept ordinary autoconnected filter output, even with target.object set. The backend therefore disables output autoconnection, explicitly links FL/FR ports to the verified headset, and checks that exactly two outgoing links still reach only that node. If routing changes or the headset disappears, it stops. The corrected two-link graph was verified locally; raw audio-graph captures are excluded because they enumerate unrelated applications and machine information.

Only newly observed Pulse playback streams already using the physical headset are automatically moved into this session's virtual sink. Streams on EasyEffects or other devices, native DSP streams, and this filter's own output are excluded. It does not override a user's later manual move of an already-seen stream. When none is routed, select**Fujin Pro Equalizer** for the desired application's output in KDE. Existing EasyEffects processing is not silently bypassed.

On stop, playback streams currently using the EQ sink are returned to the physical headset before the owned filter process is terminated. Cleanup runs even if restoration fails. Native Linux parent-death signals make the backend stop when the GUI dies and terminate the PipeWire child even if the backend is killed. No startup service or persistent PipeWire configuration is installed; temporary graph configs live under project`.state` and are removed after clean stop.

## Integration API

- `FREQUENCIES`, `VENDOR_PROFILE_1`.
- `probe()` returns available,target_name,sink_name or availablefalse,error.
- `python fujin_eq.py probe` emits that JSON.
- `python fujin_eq.py dry-run --gains '[0,0,0,0,0,0,0,0,0,0]'` emits graph without any device operation.
- GUI owns `python fujin_eq.py run --gains '[...]'` through QProcess. Its first stdout JSON readytrue is emitted only after sink creation, explicit output linking and verification. It includes routed_count and preamp_db.
- Send SIGTERM for normal stop; wait for process exit before starting a replacement graph.

## Validation and limits

Four offline tests in `test_fujin_eq.py` cover exact frequencies and finite gain bounds, stereo graph/headroom generation, parent device identity, and routing isolation including native/self-stream exclusion. Tests can be repeated with `python -m unittest -v`.

Live graph trials with flat and VendorProfile1 created the virtual sink, produced the correct two physical stereo links, kept the global default sink unchanged, and stopped cleanly. No playback was generated for a test; existing playback stayed on its previous processing sink. Graph lifecycle validation is not a user listening test or proof that current playback uses the EQ sink. The GUI must guide the output selection and distinguish a running filter from confirmed audible processing.
