# DAC — v.1.0.0 Release Note

Imported block: **CS_DAC_10b** (10-bit current-steering DAC, IHP SG13G2).

## Deliverables

- `doc/` — README with pinout, environment and simulation instructions.
- `gds/` — block and sub-cell layouts: `CS_DAC_10b.gds`, weighted segments
  (`4LSB_weighted.gds`, `6MSB.gds`), switch cells (`CS_Switch_1x..16x.gds`),
  `thermo_decoder.gds`, `Unit_cell.gds`, `inverter.gds`, `inv.gds`,
  `user_project_wrapper.gds`.
- `netlist/` — SPICE netlists (`spice/`), verification netlist
  `CS_DAC_10b.spice`, simulation netlists (`simulations/`).

## Verification notes

- LVS run exists for `CS_DAC_10b` (see `<NAME>-main/verification/lvs/`).
- Flattened layout copies and tool run outputs are excluded.