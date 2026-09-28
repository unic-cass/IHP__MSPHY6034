# Verification Report — top-level `MSPHY6034`

DRC / LVS of the top-level chip (padring + sub-IP integration + SG13_dev
`sealring` + PDK metal/Activ/GatPoly fill) with
`ihp-sg13g2/2026.09.03.dev-cfc0e22`.

- Layout: `MSPHY6034-main/layout/klayout/MSPHY6034.gds` (top cell `MSPHY6034`,
  2 mm × 2 mm). Built from the fixed top geometry (`fix-MSPHY6034`) with the
  SG13_dev `sealring` PCell and the PDK `filler.py` fill (Metal1–5,
  TopMetal1/2, Activ, GatPoly).
- Netlist: `MSPHY6034-main/netlist/schematic/MSPHY6034.spice`
  (= `release/v.1.0.0/netlist/MSPHY6034.spice`).
- Run dirs: `MSPHY6034-main/verification/{drc,lvs}/…_final_2026_09_03dev/`
  (`lvs_run_final_flat_2026_09_03dev/` for the flat run).
- `.include` paths rewritten to the PDK root into per-run `*_netlist_fixed.spice`.

## DRC — PASS on all non-recommended rules

`run_drc.py` (default tables main + density + sg13g2_maximal, deep),
runtime 1397.73 s, **1309 violations — every one a *recommended* rule**.
The deck flags these with the `R` suffix and gates them with
`RECOMMENDED = !$no_recommended`; `--no_recommended` would report 0.

| Rule | Count | Meaning |
|---|---:|---|
| Pad.fR_M2 | 546 | Min. recommended Metal2 exit length |
| MIM.gR | 404 | Max. recommended total MIM area per chip |
| Pad.fR_TM2 | 91 | Min. recommended TopMetal2 exit length |
| Pad.d1R | 60 | Min. recommended Pad to Activ (inside chip area) space |
| Pad.fR_M3 | 52 | Min. recommended Metal3 exit length |
| Pad.fR_M4 | 52 | Min. recommended Metal4 exit length |
| Pad.fR_M5 | 52 | Min. recommended Metal5 exit length |
| Pad.fR_TM1 | 52 | Min. recommended TopMetal1 exit length |

The density table is clean (no report, `final_MSPHY6034_density.log`).

This supersedes the earlier pre-fix / unfilled run (1476 violations over 27
rules, dominated by the same pad/MIM advisories plus 82 `V1–V4.b` via-bar,
6 `TV1.d` and 79 fill/density rules). The fixed top geometry removes the
via-bar and `TV1.d` violations, and the regenerated fill removes the
fill/density violations — leaving only the pre-existing recommended
advisories above.

## LVS — PASS (deep)

| Mode | Result | Runtime |
|---|---|---|
| deep | PASS (0 errors / 0 warnings) | 1182 s |
| flat | (see `lvs_run_final_flat_2026_09_03dev/`) | — |

Deep-mode comparison matches the extracted layout against the release
netlist; the extracted device/net/pin counts of the top circuit now align
with the schematic.
