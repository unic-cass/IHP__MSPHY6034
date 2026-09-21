# AGENTS.md

This is a mixed-signal hardware IP library (IHP SG13CMOS, `MSPHY6034`), not a software project. There is no code to build, test, lint, or typecheck — no Makefile, package manifest, or test runner exists in the repo. Do not invent run/verify commands.

## Layout

- Top IP: `MSPHY6034-main/` (live design data), `doc/`, `measurements/v.1.0.0/`, `release/v.1.0.0/`.
- Sub-IPs are vendored copies under `dependencies/{ADC,DAC,OTA,PMIC,S2P}/`, each with the identical skeleton (`<NAME>-main/`, `doc/`, `measurements/`, `release/`, own `.github/`). Edit a sub-IP inside its own directory, not from the top.
- Live cell skeleton (`<NAME>-main/`): `schematic/{xschem,qucs-s}/`, `layout/{klayout,magic,lef,def}/`, `model/{spice,verilog-A}/`, `netlist/{schematic,layout,pex,rcx}/`, `testbenches/{tran,ac,noise,corners}/{xschem,qucs-s}/`, `verification/{drc,lvs}/`, `timing/`. Almost all of these are currently empty placeholders.
- `release/v.1.0.0/{doc,gds,netlist}/` + `ReleaseNote.md` is the immutable delivery — never edit in place; new work goes in `<NAME>-main/` and `doc/`, cut a new `release/v.X/` for deliveries.
- `measurements/v.1.0.0/` holds per-release silicon/sim results; keep version-aligned with `release/`.

## Source of truth

- `doc/info.json` is the authoritative metadata (name, `top_cell_name`, `process: SG13CMOS`, `technology: IHP`, `trl`, `dependencies`, `release` paths). The top file additionally lists the five sub-IPs under `dependencies`. Trust it over prose; `Specification.md` / `Datasheet.md` / `ReleaseNote.md` are currently 0-byte stubs.
- `doc/TRL-Mixed-Signal-IP.md` is the TRL0–TRL9 quality checklist; all boxes are unchecked and `trl` is 0. Gate maturity claims on it.

## CI

- Only automation is `.github/workflows/check-workflow-sync.yml` (daily + manual dispatch): it stages upstream workflows from `IHP-GmbH/Open-Silicon-MPW` into `.github/workflows-staged/` and opens an issue. Enabling a staged workflow requires manually copying it to `.github/workflows/`. Never edit staged files in place.
