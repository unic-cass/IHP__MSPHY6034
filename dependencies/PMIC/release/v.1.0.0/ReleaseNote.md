# PMIC — v.1.0.0 Release Note

Imported block: **FloatingGateDCDC** (floating-gate DC-DC converter,
IHP SG13G2).

## Deliverables

- `doc/` — README with pinout table and verification status.
- `gds/` — `Full_Layout.gds`, `Full_Layout_Ringpad.rar` (ringpad layout).
- `netlist/` — top netlist `Full_Layout.spice` (schematic and simulation
  variants), extracted netlists `Full_Layout_extracted.cir` (layout and LVS).

## Verification notes

- DRC: only MIM.gR recommendation; LVS: **passed** (source README).
- Reports live under `<NAME>-main/verification/{drc,lvs}/`.
- The flattened 83 MB layout copy and tool intermediates are excluded.