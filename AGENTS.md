# AGENTS.md

This is a mixed-signal hardware IP library (IHP SG13CMOS, `MSPHY6034`), not a software project. There is no code to build, test, lint, or typecheck — no Makefile, package manifest, or test runner exists in the repo. Do not invent run/verify commands.

## Layout

- Top IP: `MSPHY6034-main/` (live design data), `doc/`, `measurements/v.1.0.0/`, `release/v.1.0.0/`.
- Sub-IPs are vendored copies under `dependencies/{ADC,DAC,OTA,PMIC,S2P}/`, each with the identical skeleton (`<NAME>-main/`, `doc/`, `measurements/`, `release/`, own `.github/`). Edit a sub-IP inside its own directory, not from the top.
- Live cell skeleton (`<NAME>-main/`): `schematic/{xschem,qucs-s}/`, `layout/{klayout,magic,lef,def}/`, `model/{spice,verilog-A}/`, `netlist/{schematic,layout,pex,rcx}/`, `testbenches/{tran,ac,noise,corners}/{xschem,qucs-s}/`, `verification/{drc,lvs}/`, `timing/`.
- Imported design content (ADC: `SAR_ADC_8BIT_IHP`, DAC: `CS_DAC_10b`, PMIC: `FloatingGateDCDC`, S2P: `s2p`) is distributed into each `<NAME>-main/`; the extracted upstream sources + their `.zip` archives stay in `dependencies/<NAME>/dependencies/`. OTA has no content yet.
- Distribution conventions: xschem `.sch/.sym` → `schematic/xschem/`; `.gds` → `layout/klayout/`; `.spice` cell netlists → `netlist/schematic/`; digital Verilog RTL → `rtl/` (added to the skeleton); OpenLane/kpex flow configs (`config.json`, `pin_order.cfg`, `Makefile`, scripts) → `netlist/` or `netlist/pex/`; DRC/LVS logs and verification netlists → `verification/{drc,lvs}/`; SPICE testbench netlists → `testbenches/tran/qucs-s/`, testbench schematics → `testbenches/tran/xschem/`; markdown docs and READMEs → `doc/`.
- `release/v.1.0.0/{doc,gds,netlist}/` + `ReleaseNote.md` is the delivery — snapshots of the design (documents, GDS, netlists). New work goes in `<NAME>-main/` and `doc/`; cut a new `release/v.X/` for deliveries and note it in the ReleaseNote.
- `measurements/v.1.0.0/` holds per-release silicon/sim results; keep version-aligned with `release/`.
- Never commit generated tool/build outputs (Verilator `*_obj_dir`, OpenROAD `runs/`, ModelSim `work/`/`*.wlf`/`transcript`, kpex `pex_output/`, ngspice `.raw`/`.save`, `.lvsdb`, flattened layout copies).

## Source of truth

- `doc/info.json` is the authoritative metadata (name, `top_cell_name`, `process: SG13CMOS`, `technology: IHP`, `trl`, `dependencies`, `release` paths). The top file additionally lists the five sub-IPs under `dependencies`. Trust it over prose; `Specification.md` / `Datasheet.md` are still 0-byte stubs, and each module's `release/v.1.0.0/ReleaseNote.md` now states its contents.
- `doc/TRL-Mixed-Signal-IP.md` is the TRL0–TRL9 quality checklist; all boxes are unchecked and `trl` is 0. Gate maturity claims on it.

## CI

- Only automation is `.github/workflows/check-workflow-sync.yml` (daily + manual dispatch): it stages upstream workflows from `IHP-GmbH/Open-Silicon-MPW` into `.github/workflows-staged/` and opens an issue. Enabling a staged workflow requires manually copying it to `.github/workflows/`. Never edit staged files in place.
