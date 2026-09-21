# MSPHY6034-main

Top-level cell `MSPHY6034` — chip integration (padring + sub-IPs).

## Contents

- `schematic/xschem/` — chip-top xschem schematic (`MSPHY6034.sch`,
  `user_project_wrapper.sch`/`.sym`, project `xschemrc`).
- `schematic/xschem/openpdk-libraries/` — vendored `sg13g2_io` IO/pad library
  (`ihp-sg13g2/sg13g2_io`): xschem symbols/schematics, KLayout per-cell GDS and
  netlists, required to open/edit the padring. The library's `example/` padframe
  demo is omitted; the complete library is in
  `dependencies/unic_cass_2025_team04_padring.zip`.
- `layout/klayout/MSPHY6034.gds` — chip-top layout including the padring.
- `netlist/schematic/MSPHY6034.spice` — xschem-generated top-level netlist.
- `dependencies/` — upstream archives (`unic_cass_2025_team04_padring.zip`,
  `release.zip`).

The chip top instantiates the sub-IPs (`SAR_ADC`, `CS_DAC_10b`, `Full_Layout`,
`serial2parallel`) and the `user_project_wrapper` inside the padring.
