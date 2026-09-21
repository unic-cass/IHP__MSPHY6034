# Verification Report — top-level `MSPHY6034`

DRC / LVS of the top-level chip (padring + sub-IP integration) with
`ihp-sg13g2/2026.09.03.dev-cfc0e22`.

- Layout: `MSPHY6034-main/layout/klayout/MSPHY6034.gds` (top cell `MSPHY6034`,
  2 mm × 2 mm).
- Netlist: `MSPHY6034-main/netlist/schematic/MSPHY6034.spice`.
- Run dirs: `MSPHY6034-main/verification/{drc,lvs}/…_2026_09_03dev_*`.
- `.include` paths rewritten to the PDK root into per-run `*_netlist_fixed.spice`.

## DRC — FAIL

`run_drc.py` (default tables main + density + sg13g2_maximal, deep),
runtime 1414.89 s, **1476 violations over 27 rules**. Dominated by pad/IO and
fill/via rules:

| Rule | Count | Rule | Count |
|---|---:|---|---:|
| Pad.fR_M2 | 546 | V3.b | 27 |
| MIM.gR | 404 | V4.b | 25 |
| Pad.fR_TM2 | 91 | M2Fil.h | 16 |
| Pad.d1R | 60 | V1.b / V2.b | 15 each |
| Pad.fR_TM1/M3/M4/M5 | 52 each | M1Fil.h | 14 |
| | | AFil.g2 | 13 |
| | | M4/M3/M5Fil.h | 11/10/7 |
| | | TV1.d | 6 |

plus `M1.j`–`M5.j`, `TM2.c`, `GFil.g`, `AFil.g` (1 each).

## LVS — FAIL (flat and deep)

| Mode | Result | Runtime |
|---|---|---|
| flat | FAIL | 3315 s |
| deep | FAIL | 155 s |

### Diagnosis

Comparing the 27 circuits of the two stored deep netlists, **only the top
circuit differs** — all 26 sub-circuits (Fillers, IOPads, `SAR_ADC`,
`CS_DAC_10b`, `serial2parallel`, …) match exactly in device, net and pin
counts.

| | Layout (extracted) | Schematic |
|---|---|---|
| top circuit | MSPHY6034 | MSPHY6034 |
| devices | 67 | 67 |
| subcircuits | 183 | 183 |
| nets | 121 | 120 |
| pins | 96 | 40 |

The mismatch is therefore entirely at the **top-level net/pin level**. The top
cell carries 102 text labels over five layers; 52 of them (40 unique names) on
layer `134/25` are the real chip ports, while 50 extra labels on layers
`8/25`, `30/25`, `50/25`, `67/25` are internal/sub-IP signals
(`analog_io_padres[*]`, `uo_c2p[*]`, `ui_p2c[*]`, `dout[0]`, `VBAT/VH/…`).

Experiment: stripping those 50 stray top-cell labels (on a copy) dropped the
extracted layout pins from 96 to 56 — the 40 port names then align. Tracing the
remaining 16 extra pins (`$7.*`, `$8.*`) locates their labels inside the PMIC
hierarchy (`FULL_FLOATING_GATE`: `B, IN, Y, Q, Qn, Reset, set, Vboot, vboot,
VFE, VRE`; `gate_driver$2`: `vgmd1/vgmd5/vgmd78`). Removing all 42 of those
labels as well **still** leaves LVS failing (nets 121 vs 120), so the extra
labels are not the sole cause.

Relaxing the checks does not help either: deep LVS still FAILs with
`--ignore_top_ports_mismatch` and with `--ignore_top_ports_mismatch
--disable_tap_extraction`. (The upper-cased reference names, e.g.
`ANALOG_IO[n]` vs `analog_io[n]`, are not the cause — the passing sub-IP runs
show the same normalisation.)

### Likely fix direction

Converging the chip-level LVS needs the top-level netlist reconciled between
schematic and layout: align the chip ports (avoid extra top-level labels) **and**
reconcile the top-level net names — the xschem schematic carries auto-generated
internal names (`NET1`–`NET39`, …) that have no counterpart in the extracted
layout netlist, and one extra net is present in the layout. This is a
design/netlist task rather than a verification-flow change.
