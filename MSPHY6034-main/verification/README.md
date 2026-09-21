# MSPHY6034 — top-level verification

DRC / LVS for the top-level chip (`MSPHY6034`), run with
`ihp-sg13g2/2026.09.03.dev-cfc0e22`.

## Run

```sh
module load opentools/1.0 klayout/v0.30.5 ihp-sg13g2/2026.09.03.dev-cfc0e22
export KL_PY=/home/tools/opentools/klayout/v0.30.5/pymod
export PYTHONPATH=$KL_PY:$(echo $KLAYOUT_PYTHONPATH | cut -d: -f1)

./run_verification.sh                     # default PDK + tag
./run_verification.sh <PDK_ROOT> <TAG>    # custom
```

It runs `run_drc.py` (default tables main + density + sg13g2_maximal, deep) and
`run_lvs.py --run_mode flat` and `--run_mode deep`, writing to:

- `drc/drc_run_<TAG>_MSPHY6034/`
- `lvs/lvs_run_MSPHY6034_<TAG>/` (flat)
- `lvs/lvs_run_MSPHY6034_deep_<TAG>/` (deep)

Netlist `.include` paths are rewritten into a per-run `*_netlist_fixed.spice`;
the release netlist/layout are never modified. Generated `*.lvsdb` marker
databases are git-ignored.

## Current status (`2026.09.03.dev-cfc0e22`)

| Check | Result | Notes |
|---|---|---|
| DRC | **FAIL** | 1476 violations / 27 rules — pad/IO dominated (`Pad.fR_M2` 546, `MIM.gR` 404, …) |
| LVS flat | **FAIL** | top-level port/label mismatch |
| LVS deep | **FAIL** | top circuit only; all 26 sub-circuits match |

See `doc/VerificationReport-MSPHY6034.md` for the full analysis and the LVS
root-cause investigation.

Note: DRC/LVS results are dominated by the imported padring/IO cells and the
top-level netlist reconciliation; both need design-side fixes to converge.
