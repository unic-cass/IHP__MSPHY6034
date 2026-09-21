#!/bin/bash
# Reproducible top-level DRC + LVS for MSPHY6034.
#
# Runs:
#   - DRC  : run_drc.py (default tables: main + density + sg13g2_maximal, deep)
#   - LVS  : run_lvs.py --run_mode flat
#   - LVS  : run_lvs.py --run_mode deep
#
# Usage:
#   run_verification.sh [PDK_ROOT] [RUN_TAG]
#
#   PDK_ROOT : ihp-sg13g2 PDK root (default 2026.09.03.dev-cfc0e22)
#   RUN_TAG  : suffix for run directories (default 2026_09_03dev)
#
# Netlist .include paths are rewritten to PDK_ROOT into a per-run
# *_netlist_fixed.spice; the release netlist/layout are never modified.
# Generated *.lvsdb marker databases are not committed (see /.gitignore).
set -u

PDK_ROOT="${1:-/home/dkits/ihp-sg13g2/2026.09.03.dev-cfc0e22/ihp-sg13g2}"
RUN_TAG="${2:-2026_09_03dev}"

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE="$(cd "$HERE/.." && pwd)"                 # MSPHY6034-main
REPO="$(cd "$BASE/.." && pwd)"                 # repo root

TOP=MSPHY6034
GDS="$REPO/MSPHY6034-main/layout/klayout/${TOP}.gds"
NET="$REPO/MSPHY6034-main/netlist/schematic/${TOP}.spice"

DRC_DIR="$BASE/verification/drc/drc_run_${RUN_TAG}_${TOP}"
LVF_DIR="$BASE/verification/lvs/lvs_run_${TOP}_${RUN_TAG}"
LVD_DIR="$BASE/verification/lvs/lvs_run_${TOP}_deep_${RUN_TAG}"

mkdir -p "$DRC_DIR" "$LVF_DIR" "$LVD_DIR"

echo "PDK_ROOT = $PDK_ROOT"
echo "GDS      = $GDS"
echo "NET      = $NET"

echo "== DRC =="
python3 "$PDK_ROOT/libs.tech/klayout/tech/drc/run_drc.py" \
  --path "$GDS" --topcell "$TOP" --run_dir "$DRC_DIR"
grep -hE "Violated rules|Total DRC Run time" "$DRC_DIR"/drc_run_*.log || true

for MODE in flat deep; do
  if [ "$MODE" = flat ]; then RD="$LVF_DIR"; else RD="$LVD_DIR"; fi
  FIXED="$RD/${TOP}_netlist_fixed.spice"
  sed "s|/opt/pdks/ihp-sg13g2|$PDK_ROOT|g" "$NET" > "$FIXED"
  echo "== LVS ($MODE) =="
  python3 "$PDK_ROOT/libs.tech/klayout/tech/lvs/run_lvs.py" \
    --layout "$GDS" --netlist "$FIXED" --topcell "$TOP" \
    --run_mode "$MODE" --run_dir "$RD"
  grep -hE "Status|Outcome" "$RD"/lvs_run_*.log | head -2 || true
done

echo "== done =="
