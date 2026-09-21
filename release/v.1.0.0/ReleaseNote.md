# MSPHY6034 — v.1.0.0 Release Note

Initial release of the MSPHY6034 IP library (IHP SG13CMOS).

## Contents by module

- **ADC** — 8-bit SAR ADC block (`SAR_ADC_8BIT_IHP`): xschem schematics,
  SPICE netlists, digital RTL (sar_logic, clk_gen, sar_algo), GDS layouts,
  LVS reports. See `dependencies/ADC/release/v.1.0.0/ReleaseNote.md`.
- **DAC** — 10-bit current-steering DAC (`CS_DAC_10b`): xschem schematics,
  SPICE netlists, GDS layouts, verification netlist. See
  `dependencies/DAC/release/v.1.0.0/ReleaseNote.md`.
- **PMIC** — Floating-gate DC-DC converter (`FloatingGateDCDC`): xschem
  schematics, layout GDS + Ringpad, SPICE netlists, DRC/LVS reports.
  See `dependencies/PMIC/release/v.1.0.0/ReleaseNote.md`.
- **S2P** — Serial-to-parallel digital block (`serial2parallel`): Verilog RTL
  and testbench, xschem symbol, OpenLane flow configs. See
  `dependencies/S2P/release/v.1.0.0/ReleaseNote.md`.
- **OTA** — Chopper-stabilized OTA block (`OTA5174`): xschem schematics
  (incl. `Clock_gen_using_transistor_hv/` sub-block), SPICE netlists, GDS
  layouts. See `dependencies/OTA/release/v.1.0.0/ReleaseNote.md`.

Deliverables are organized per module as `doc/`, `gds/`, `netlist/`.
Generated tool/build artifacts (Verilator/OpenROAD/ModelSim run outputs,
flattened layouts) are excluded from this release.