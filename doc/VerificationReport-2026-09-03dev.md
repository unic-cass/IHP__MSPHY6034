# Verification Report — PDK `ihp-sg13g2/2026.09.03.dev-cfc0e22`

Scope: rerun of the sub-IP release DRC/LVS verification (ADC, DAC, OTA, PMIC)
with PDK `ihp-sg13g2/2026.09.03.dev-cfc0e22`, compared against the previously
committed `v0.3.0` baselines (`bb07922`, `ac11d57`).

## Flow

- DRC: `run_drc.py` with the default table set (main, density, sg13g2_maximal),
  default `--run_mode deep`; per-run dirs `drc_run_2026_09_03dev_<TOP>/`.
- LVS: `run_lvs.py --run_mode flat|deep` (strict port mode) per run dir
  `lvs_run_<TOP>_2026_09_03dev/` and `lvs_run_<TOP>_deep_2026_09_03dev/`.
- Netlist `.include` paths rewritten to the new PDK root (sed) into per-run
  `*_netlist_fixed.spice`; the release netlists/GDS were not modified.
- Committed artifacts: per-run logs, `*_full.lyrdb`, `*_extracted.cir`,
  `*_netlist_fixed.spice`. `.lvsdb` marker DBs are excluded (not DRC databases).
- Commit: `4822a53` (master, not pushed; no remote configured).

## DRC — unchanged (still FAIL on all four)

Per-rule violation sets are **identical** to the v0.3.0 runs:

| Module | Violations (rules, counts) | v0.3.0 | 2026.09.03.dev |
|---|---|---|---|
| ADC (`SAR_ADC`) | AFil.g 1, GFil.g 1, M1.j–M5.j 1 each, TM2.c 1 | 8 | 8 |
| DAC (`CS_DAC_10b`) | same 8 + TM1.c 1 | 9 | 9 |
| OTA (`OTA5174`) | same 8 + M3.a 1 + TM1.c 1 | 10 | 10 |
| PMIC (`Full_Layout`) | MIM.gR 2, AFil.g 1, GFil.g 1, M1.j–M4.j 1 each, M5.k 1, TM2.c 1 | 10 | 10 |

## LVS — flat mode

| Module | v0.3.0 | 2026.09.03.dev | Extracted (flat) v0.3.0 → new |
|---|---|---|---|
| ADC | FAIL | **PASS** | 1002/986 lv + 27 cap_cmim + 1 ntap1 → 1003/986 + 27 + 1 |
| DAC | FAIL | **PASS** | 202 hv + 1713 lv_n + 1512 lv_p → 203 hv + 1713 + 1512 |
| OTA | FAIL | **PASS** | 63/43 hv + 11 cap_cmim → 64/44 hv + 11 |
| PMIC | FAIL (ports) | FAIL (ports) | 17 hv_n/20 hv_p/13 lv_n/13 lv_p + 2 cap_cmim (unchanged) |

## LVS — deep mode

| Module | v0.3.0 | 2026.09.03.dev |
|---|---|---|
| ADC | FAIL | **PASS** |
| DAC | FAIL | FAIL (stdcell instances don't align) |
| OTA | FAIL | FAIL |
| PMIC | PASS | PASS |

## Root cause of the flat-mode flip (verified)

The ADC/DAC/OTA flat flip is a **deck change**, not a data or extraction change:

1. v0.3.0 `rule_decks/rfmos_model_mapping.lvs` ended the RF-MOS model mapping
   step with an *unconditional* `target_netlist.purge_devices` +
   `target_netlist.purge`, which stripped devices from the layout netlist
   before comparison. `2026.09.03.dev` removed those two lines.
2. A/B test (same GDS + same netlist content): old deck FAIL, new deck PASS.
   Removing only those two lines from the v0.3.0 deck reproduces the PASS on
   ADC, DAC, and OTA.
3. The new comparison is still strict: perturbing a single transistor
   (`nand_gate`, `sg13_lv_nmos` → `sg13_lv_pmos`) makes the new flat run FAIL.

## Summary

- DRC: no change; same 8/9/10/10 violations across PDK versions.
- LVS flat: ADC/DAC/OTA now PASS (deck fix — spurious layout netlist purge
  removed); PMIC still FAILs on port labeling.
- LVS deep: ADC now PASS; DAC/OTA still FAIL (hierarchy/stdcell alignment);
  PMIC still PASS.