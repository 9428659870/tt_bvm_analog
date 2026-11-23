#!/usr/bin/env python3
"""Render an ngspice `wrdata` CSV to a PNG.

WSL2 has no X display, so ngspice's own `plot` cannot draw. The decks
already call wrdata; this turns that file into an image you can open
from Windows at  \\\\wsl$\\<distro>\\home\\<user>\\...

    python3 scripts/plot_trace.py analog/bandgap/spice/bg_core_trace.csv

wrdata writes a time column before EVERY vector, so the file is
t v1 t v2 t v3 ... -- the odd columns are duplicates and get dropped.
"""
import sys, os

try:
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
except ImportError:
    sys.exit("matplotlib missing:  pip install --break-system-packages matplotlib")

src = sys.argv[1]
names = sys.argv[2].split(",") if len(sys.argv) > 2 else None

rows = []
for line in open(src):
    parts = line.split()
    if not parts:
        continue
    try:
        rows.append([float(p) for p in parts])
    except ValueError:
        continue
if not rows:
    sys.exit(f"no numeric rows in {src}")

ncol = len(rows[0])
t = [r[0] for r in rows]
sigs = [[r[c] for r in rows] for c in range(1, ncol, 2)]
if names is None or len(names) != len(sigs):
    names = [f"col{i+1}" for i in range(len(sigs))]

fig, axes = plt.subplots(len(sigs), 1, figsize=(11, 1.7 * len(sigs)),
                         sharex=True)
if len(sigs) == 1:
    axes = [axes]
for ax, y, nm in zip(axes, sigs, names):
    ax.plot([x * 1e6 for x in t], y, lw=0.9)
    ax.set_ylabel(nm, fontsize=9)
    ax.grid(alpha=0.3)
axes[-1].set_xlabel("time (us)")
fig.suptitle(os.path.basename(src), fontsize=10)
fig.tight_layout()
out = os.path.splitext(src)[0] + ".png"
fig.savefig(out, dpi=130)
print(f"wrote {out}   ({len(rows)} rows, {len(sigs)} signals)")
