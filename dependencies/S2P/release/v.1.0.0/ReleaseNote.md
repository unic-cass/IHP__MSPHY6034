# S2P — v.1.0.0 Release Note

Imported block: **serial2parallel** (12-bit serial-to-parallel shift register,
digital, IHP SG13G2).

## Deliverables

- `netlist/` — Verilog RTL `serial2parallel.v`, testbench `s2p_tb.v`,
  xschem symbol `serial2parallel.sym`, OpenLane flow config
  (`config.json`, `pin_order.cfg`).
- `doc/` — none supplied in source.
- `gds/` — `serial2parallel.gds` (OpenLane final layout).

## Notes

- The layout deliverables (`gds/`, plus `layout/{klayout,lef,def,magic}` and
  `netlist/layout/` in `S2P-main/`) were extracted from the OpenLane run's
  `final/` outputs. The generated `runs/`/`work/` trees themselves are excluded.