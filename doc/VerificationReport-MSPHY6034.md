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

Top-level composition of the two stored netlists (from the `.lvsdb`) is
essentially identical:

| | Layout (extracted) | Schematic |
|---|---|---|
| top circuit | MSPHY6034 | MSPHY6034 |
| devices | 67 | 67 |
| subcircuits | 183 | 183 |
| nets | 121 | 120 |
| pins | 96 | 40 |

Device and subcircuit counts (Fillers, IOPads, `SAR_ADC`, `CS_DAC_10b`,
`serial2parallel`) match exactly. The mismatch is at the **top-level net/pin
level**:

- The layout top carries ~91 extra labelled nets/pins that have no schematic
  counterpart — sub-IP interface signals promoted to top-level pins
  (`analog_io_padres[*]`, `uo_c2p[*]`, `ui_p2c[*]`, `dout[0]`) plus internal
  nets (`NET1`–`NET39`, `5.*`, `VBAT`, `VH`, …).
- Relaxing the port check does not help: deep LVS still FAILs with
  `--ignore_top_ports_mismatch` and with `--ignore_top_ports_mismatch
  --disable_tap_extraction`, so there are also genuine net-level differences
  (the reference names appear upper-cased in the DB, e.g. `ANALOG_IO[n]` vs
  `analog_io[n]`; this alone is not fatal — the passing sub-IP runs show the
  same normalisation).

### Likely fix direction

Confine the sub-IP/pad interface labels to their own cells in the top layout
(or declare the matching top-level ports in the schematic) so the extracted
top netlist contains only the 40 chip ports; and align the remaining internal
net names. The per-block mismatches reported earlier (DAC deep hierarchy,
etc.) also propagate into the chip-level comparison.
