#!/usr/bin/env python3
"""pwm_dac -- two-stage RC low-pass + unity-gain buffer, layout generator.

    R1 pwm_in nf1   2 Mohm      rdac_2m   (l_eff 690.01 um -> 2.000 Mohm)
    C1 nf1    VSS   2 pF        2 x cc_1p (999.7 fF each)
    R2 nf1    nf2   2 Mohm      rdac_2m
    C2 nf2    VSS   2 pF        2 x cc_1p
    Xbuf nf2 vout vbias_n       out_buf   (closed, DRC 0 + LVS)

2 pF does not fit one MIM: wmax is 30 um, which caps a single
cap_mim_m3_1 near 1.82 pF.  Each stage is therefore two cc_1p in
parallel -- a cell that already exists.

THE FOUR CAPS ABUT.  At pitch 4866 their met3 bottom plates merge into a
single VSS plane, so the whole bottom-plate net needs no routing at all.
The capm plates still clear by 432 units and the met4 top-plate frames by
510, which keeps nf1 and nf2 apart.

SIGNAL FLOWS RIGHT TO LEFT.  pwm_in enters at u_r1's right terminal and
nf2 leaves at u_r2's left, which is the side out_buf's vin is on.  With
the resistors the other way round, nf2 would have to cross the whole
block to reach the buffer.

ROUTING AROUND out_buf.  Its internals are dense and not modelled here,
so nothing routes through its bounding box: VSS joins its rail by abutting
from the left, and every other parent shape stays outside x 3600..13700,
y 743..5257.  Routing met2 across it would short onto its ntail bus.

EACH CAP'S C2 MET4 STRIP SITS IN THE GAP between it and the next cap, at
cx+2333..cx+2429.  A met4 bridge straight across that gap shorts the top
plates onto VSS.  Instead each C1 frame is caught by a stub dropping to
y 10100 (the frame's top edge is at 10177) and the pair is bridged by a
bus at y 10560, clear of the C2 strips which stop at 10245.

CAPM.8: no via2/via3 within 20 units of a capm plate.  Vias onto the
merged met3 go in the windows between adjacent caps; vias feeding the met4
top plates sit above the cap row entirely.

1 internal unit = 0.005 um.
"""
import itertools, math, os, sys

OUT = os.path.join(os.path.dirname(__file__), "..", "layout", "pwm_dac.mag")

BB = {
    "rdac_2m": (-2458, -3898, 2458, 3898),
    "cc_1p":   (-2433, -2257, 2433, 2257),
    "out_buf": (600, 243, 10700, 4757),
}
CAPY, CAPP = 8000, 4866
PLACE = [
    ("cc_1p",   "u_c2a", 3000,  CAPY),
    ("cc_1p",   "u_c2b", 7866,  CAPY),
    ("cc_1p",   "u_c1a", 12732, CAPY),
    ("cc_1p",   "u_c1b", 17598, CAPY),
    ("rdac_2m", "u_r2",  3000,  15000),
    ("rdac_2m", "u_r1",  9000,  15000),
    ("out_buf", "u_buf", 3000,  500),
]
CAPS = {"u_c2a": "nf2", "u_c2b": "nf2", "u_c1a": "nf1", "u_c1b": "nf1"}

# ------------------------------------------------- child net envelopes
CHILD = []
def ch(lay, net, x1, y1, x2, y2): CHILD.append((lay, net, x1, y1, x2, y2))

for inst, cx, cy, lnet, rnet in (("u_r2", 3000, 15000, "nf2", "nf1"),
                                 ("u_r1", 9000, 15000, "nf1", "pwm_in")):
    ch("metal1", lnet, cx-2282, cy-3726, cx-2164, cy-3305)
    ch("metal1", rnet, cx+2164, cy-3726, cx+2282, cy-3305)
for inst, net in CAPS.items():
    cx = dict((i, x) for _, i, x, _ in PLACE)[inst]
    ch("metal3", "VSS", cx-2433, CAPY-2257, cx+2433, CAPY+2257)
    ch("metal4", net,   cx-2354, CAPY-2178, cx+2002, CAPY+2178)
    ch("metal4", "VSS", cx+2333, CAPY-2245, cx+2429, CAPY+2245)
BX, BY = 3000, 500
ch("metal1", "VSS",     600+BX, 640+BY, 5200+BX, 760+BY)
ch("metal2", "nf2",     600+BX, 1022+BY, 2745+BX, 1112+BY)
ch("metal2", "vbias_n", 600+BX, 2150+BY, 3945+BX, 2240+BY)
ch("metal1", "VDD",    1500+BX, 4150+BY, 4400+BX, 4270+BY)
ch("metal3", "vout",  10333+BX, 2450+BY, 10700+BX, 2560+BY)

R = []
def rect(lay, net, x1, y1, x2, y2):
    assert x2 > x1 and y2 > y1, (lay, net, x1, y1, x2, y2)
    R.append((lay, net, x1, y1, x2, y2))

# --- pwm_in: u_r1 right terminal, out to the right edge --------------
rect("via1",   "pwm_in", 11193, 11440, 11253, 11500)
rect("metal2", "pwm_in", 11178, 11425, 11900, 11515)

# --- nf1: r2.R2 <-> r1.R1 on met1, then up and over to the c1 pair ---
rect("metal1", "nf1", 5164, 11425, 6836, 11515)
rect("via1",   "nf1", 6494, 11440, 6554, 11500)
rect("metal2", "nf1", 6479, 10560, 6569, 11515)
rect("metal2", "nf1", 6479, 10560, 14830, 10650)
rect("via2",   "nf1", 14730, 10575, 14786, 10631)
rect("metal3", "nf1", 14700, 10545, 15100, 10665)
rect("via3",   "nf1", 14950, 10575, 15020, 10645)
rect("metal4", "nf1", 12632, 10560, 17698, 10660)        # bus above the row
rect("metal4", "nf1", 12632, 10100, 12832, 10660)        # stub onto c1a C1
rect("metal4", "nf1", 17498, 10100, 17698, 10660)        # stub onto c1b C1

# --- nf2: r2.R1, up and over to the c2 pair, down to out_buf's vin ---
rect("via1",   "nf2", 747, 11440, 807, 11500)
rect("metal2", "nf2", 718, 10650, 836, 11515)
rect("metal2", "nf2", 718, 10560, 5420, 10650)
rect("via2",   "nf2", 5320, 10575, 5376, 10631)
rect("metal3", "nf2", 5290, 10545, 5690, 10665)
rect("via3",   "nf2", 5540, 10575, 5610, 10645)
rect("metal4", "nf2", 2900, 10560, 7966, 10660)
rect("metal4", "nf2", 2900, 10100, 3100, 10660)
rect("metal4", "nf2", 7766, 10100, 7966, 10660)
rect("metal2", "nf2", 2500, 1522, 2600, 10650)
rect("metal2", "nf2", 2500, 1522, 3600, 1612)            # abuts out_buf vin

# --- VSS: resistor rings down to the merged met3 ---------------------
for cx in (3000, 9000):
    rect("viali",  "VSS", cx-1500, 11138, cx-1300, 11172)
rect("metal1", "VSS", 1486, 11100, 7714, 11200)
rect("via1",   "VSS", 5970, 11125, 6030, 11185)
rect("metal2", "VSS", 5955, 10690, 6045, 11200)
rect("via2",   "VSS", 5972, 10712, 6028, 10768)
rect("metal3", "VSS", 5955, CAPY+2257, 6045, 10785)

# --- VSS: out_buf's rail, left of everything, onto the met3 plane ----
#     The drop crosses nothing: nf2 runs at x 2500 and the via2 lands
#     BELOW the cap row, 197 units clear of capm.
rect("metal1", "VSS", 1500, 1140, 3600, 1260)            # abuts out_buf rail
rect("via1",   "VSS", 1520, 1170, 1580, 1230)
rect("metal2", "VSS", 1490, 1140, 1610, 5610)
rect("via2",   "VSS", 1512, 5530, 1568, 5586)
rect("metal3", "VSS", 1470, 5500, 1630, CAPY-2257)

# --- supplies and remaining ports -----------------------------------
rect("metal1", "VDD",     3000, 4650, 4500, 4770)
rect("metal2", "vbias_n", 3000, 2650, 3600, 2740)
rect("metal3", "vout",   13700, 2950, 14200, 3060)

LABELS = [("metal2", "pwm_in", 11700, 11470), ("metal3", "vout", 14000, 3005),
          ("metal2", "vbias_n", 3200, 2695), ("metal1", "VDD", 3500, 4710),
          ("metal1", "VSS", 2000, 1200)]

# ------------------------------------------------------------- checks
LAYERS = {"metal1", "metal2", "metal3", "metal4",
          "via1", "via2", "via3", "viali"}
MINW   = {"via1": 52, "via2": 56, "via3": 64, "viali": 34,
          "metal1": 28, "metal2": 28, "metal3": 28, "metal4": 32}
SPACE  = {"metal1": 28, "metal2": 28, "metal3": 60, "metal4": 32}
ENC    = {"via1": (("metal1", 15), ("metal2", 15)),
          "via2": (("metal2", 15), ("metal3", 15)),
          "via3": (("metal3", 15), ("metal4", 15))}
CAPM   = [(cx-2393, CAPY-2217, cx+2041, CAPY+2217)
          for _, i, cx, _ in PLACE if i in CAPS]
err = []

def gap(a, b):
    dx = max(0, a[2]-b[4], b[2]-a[4])
    dy = max(0, a[3]-b[5], b[3]-a[5])
    if dx == 0 and dy == 0:
        return -1.0
    return math.hypot(dx, dy) if (dx and dy) else float(max(dx, dy))

for ly, net, x1, y1, x2, y2 in R:
    if ly not in LAYERS:
        err.append(f"unknown layer {ly}")
    if ly in MINW and min(x2-x1, y2-y1) < MINW[ly]:
        err.append(f"{ly} {net} painted {x2-x1}x{y2-y1} < {MINW[ly]}")

# capm.8: no via2/via3 within 20 units of a MIM plate
for v in R:
    if v[0] in ("via2", "via3"):
        for c in CAPM:
            if (v[2] < c[2]+20 and c[0]-20 < v[4]
                    and v[3] < c[3]+20 and c[1]-20 < v[5]):
                err.append(f"capm.8 {v[0]} {v[1]} {v[2:]} within 20 of capm {c}")

ALL = R + CHILD
uf = list(range(len(ALL)))
def find(i):
    while uf[i] != i:
        uf[i] = uf[uf[i]]
        i = uf[i]
    return i
for i in range(len(ALL)):
    for j in range(i+1, len(ALL)):
        if (ALL[i][0] == ALL[j][0] and ALL[i][1] == ALL[j][1]
                and gap(ALL[i], ALL[j]) < 0):
            ri, rj = find(i), find(j)
            if ri != rj:
                uf[ri] = rj
for i in range(len(ALL)):
    for j in range(i+1, len(ALL)):
        a, b = ALL[i], ALL[j]
        if a[0] != b[0] or a[0] not in SPACE:
            continue
        g = gap(a, b)
        if g < 0:
            if a[1] != b[1]:
                err.append(f"SHORT {a[0]}: {a[1]}/{b[1]} {a[2:]} {b[2:]}")
            continue
        if a[1] == b[1] and find(i) == find(j):
            continue
        if g < SPACE[a[0]]:
            err.append(f"{a[0]} spacing {g:.1f} < {SPACE[a[0]]}: "
                       f"{a[1]}/{b[1]} {a[2:]} {b[2:]}")

for v in R:
    if v[0] not in ENC:
        continue
    for need, m in ENC[v[0]]:
        if not any(w[0] == need and w[1] == v[1] and
                   w[2] <= v[2]-m and w[3] <= v[3]-m and
                   w[4] >= v[4]+m and w[5] >= v[5]+m for w in ALL):
            err.append(f"{v[0]} {v[1]} {v[2:]} not enclosed by {need} + {m}")

for ly, net, x, y in LABELS:
    if not any(w[0] == ly and w[1] == net and
               w[2] <= x <= w[4] and w[3] <= y <= w[5] for w in R):
        err.append(f"label {net} {ly} ({x},{y}) not on parent {ly}")

def abs_bb(cell, tx, ty):
    a, b, c, d = BB[cell]
    return (a+tx, b+ty, c+tx, d+ty)
boxes = [(cell, inst, abs_bb(cell, tx, ty)) for cell, inst, tx, ty in PLACE]
for (ca, na, a), (cb, nb, b) in itertools.combinations(boxes, 2):
    if a[0] < b[2] and b[0] < a[2] and a[1] < b[3] and b[1] < a[3]:
        err.append(f"OVERLAP {na}/{nb}: {a} {b}")
        continue
    dx = max(0, a[0]-b[2], b[0]-a[2])
    dy = max(0, a[1]-b[3], b[1]-a[3])
    need = 0 if (ca == "cc_1p" and cb == "cc_1p") else 100
    if max(dx, dy) < need:
        err.append(f"gap {na}/{nb} = {max(dx,dy)} < {need}")

if err:
    print(f"=== FAIL: {len(err)} ===")
    for e in err[:25]:
        print("  " + e)
    sys.exit(1)

by = {}
for ly, net, x1, y1, x2, y2 in R:
    by.setdefault(ly, []).append((x1, y1, x2, y2))
out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
for cell, inst, tx, ty in PLACE:
    bb = abs_bb(cell, tx, ty)
    out += [f"use {cell} {inst}", "timestamp 0",
            f"transform 1 0 {tx} 0 1 {ty}",
            f"box {bb[0]} {bb[1]} {bb[2]} {bb[3]}"]
for ly in ("viali", "metal1", "via1", "metal2", "via2",
           "metal3", "via3", "metal4"):
    if ly in by:
        out.append(f"<< {ly} >>")
        out += [f"rect {r[0]} {r[1]} {r[2]} {r[3]}" for r in sorted(by[ly])]
out.append("<< labels >>")
for n, (ly, net, x, y) in enumerate(LABELS, 1):
    out += [f"rlabel {ly} {x} {y} {x} {y} 0 {net}", f"port {n} nsew"]
out += ["<< end >>", ""]
open(OUT, "w").write("\n".join(out))

xs = [b[0] for _, _, b in boxes] + [b[2] for _, _, b in boxes]
ys = [b[1] for _, _, b in boxes] + [b[3] for _, _, b in boxes]
print("=== pwm_dac checks PASS ===")
print("  rects : " + ", ".join(f"{k} {len(v)}" for k, v in sorted(by.items())))
print(f"  insts : {len(PLACE)}   child envelopes: {len(CHILD)}   labels: {len(LABELS)}")
print(f"  extent x {min(xs)}..{max(xs)}  y {min(ys)}..{max(ys)}"
      f"   ({(max(xs)-min(xs))/200:.2f} x {(max(ys)-min(ys))/200:.2f} um)")
print(f"  wrote {os.path.normpath(OUT)}")
