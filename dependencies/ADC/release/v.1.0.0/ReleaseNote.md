# ADC — v.1.0.0 Release Note

Imported block: **SAR_ADC_8BIT_IHP** (8-bit SAR ADC, IHP SG13G2).

## Deliverables

- `doc/` — README, block documentation (`docs/comparator.md`,
  `docs/digital_comps.md`, `docs/sar_adc.md`), block diagram.
- `gds/` — `SAR_ADC.gds` (block layout), `user_project_wrapper.gds` (wrapper).
- `netlist/` — SPICE netlists (`spice/`), top verification netlist
  `SAR_ADC.spice`, LVS-extracted netlist `SAR_ADC_extracted.cir`, and
  digital RTL (`sar_logic.v`, `sar_logic_tb.v`, `sar_algo.v`,
  `sar_algo_tb.v`, `clk_gen.v`, `tb_clk_gen.v`, `sim_clk*`).

## Verification notes

- LVS run report and extracted netlist included for `SAR_ADC`
  (see `<NAME>-main/verification/lvs/`).
- Generated tool/build outputs (Verilator `*_obj_dir`, OpenROAD `runs/`,
  kpex outputs, ModelSim/ngspice wave artifacts) are excluded.