# OTA — v.1.0.0 Release Note

Imported block: **OTA5174** (chopper-stabilized OTA with clock-gain block,
IHP SG13CMOS, source: `IHP__MSPHY8281/dependencies/OTA/OTA5174-main`).

## Deliverables

- `doc/` — `OTA5174-main-README.md`, TRL assessment (`TRL-Analog.md`).
- `gds/` — block and sub-cell layouts: `OTA5174.gds` (top), `CHOPPER.gds`,
  `single_stage.gds`, `imp_boost_tech.gds`, `digital_pulse_ina*.gds`,
  `vcm_ref_vicm_ref_gen.gds`, `Differntial_ended_symbol_making.gds`, and the
  `Clock_gen_using_transistor_hv/` sub-block GDS set
  (`and`, `buffer`, `inverter`, `nor`, `pulse_gen_circuit`, `top_file`).
- `netlist/` — SPICE netlists (`OTA5174.spice` top, plus the sub-block
  netlists: `CHOPPER`, `digital_pulse_ina_temp_TOP`, `imp_boost_tech`,
  `vcm_ref_vicm_ref_gen`, `Differntial_ended_symbol_making`).

## Notes

- Vendored upstream source kept in `dependencies/OTA/dependencies/OTA5174-main/`.
- Dist architecture: schematics → `OTA-main/schematic/xschem/` (incl.
  `Clock_gen_using_transistor_hv/`), layouts → `OTA-main/layout/klayout/`,
  netlists → `OTA-main/netlist/schematic/`.
- No DRC/LVS reports or testbenches were supplied in the source; the
  `verification/` and `testbenches/` directories remain empty until results
  are available.