#!/usr/bin/env python3
"""cd_starved_inv -- one current-starved delay stage for clk_doubler.

    XMp  y  a   np  VDD  pfet L=0.15 W=2    cd_p2_l015
    XMn  y  a   nn  VSS  nfet L=0.15 W=1    cd_n1_l015
    XMps np vbn VDD VDD  pfet L=1    W=2    cd_p2_l1
    XMns nn vbn VSS VSS  nfet L=1    W=1    cd_n1_l1

TWO COLUMNS, ONE PER GATE NET.  Both gate nets span a PMOS and an NMOS,
so with a single column they would both want the same x and short.  The
`a` pair sits at x 0 and the `vbn` pair at x 900; each net is then one
straight met1 vertical between the facing gate islands, with no jog.

`y` goes on met2.  Its two drain strips sit at x -67..-21, which overlaps
the `a` vertical's -29..29, so a met1 run between them would short.

DEVICE GEOMETRY IS PARAMETRIC (half-width Wx, half-height H, width W um):
    D/S strips   y cy +/- W*100,  x cx -/+ (21..67) at L=0.15
                                      cx -/+ (106..152) at L=1
    gate islands y cy +/-(H-178 .. H-132)
                 x cx +/-29 at L=0.15,  cx +/-96 at L=1
    ring L/R     x cx -/+ (Wx-70 .. Wx-36),  y cy +/-(H-132)
    ring T/B     y cy +/-(H-70 .. H-36),     x cx +/-(Wx-132)
    H = W*100 + 210 (nfet) or W*100 + 219 (pfet);  Wx = 211 (L=0.15), 296 (L=1)

MET1.6 PATCH.  The L=0.15 islands are 58 x 46 = 0.067 um^2 against a
0.083 floor; the L=1 islands are 192 x 46 and already pass.  Widening to
x +/-45 gives 90 x 46 = 4140, which clears the D/S strips by 32 and the
ring by 62 -- better than extending in y, which collides with the ring
tap bus at the cell's far edge.

1 internal unit = 0.005 um.
"""
import itertools, math, os, sys

OUT = os.path.join(os.path.dirname(__file__), "..", "layout", "cd_starved_inv.mag")

BB = {"cd_p2_l015": (-211, -419, 211, 419), "cd_n1_l015": (-211, -310, 211, 310),
      "cd_p2_l1":   (-296, -419, 296, 419), "cd_n1_l1":   (-296, -310, 296, 310)}
PLACE = [("cd_p2_l015", "u_mp",  0,   1900),
         ("cd_n1_l015", "u_mn",  0,    900),
         ("cd_p2_l1",   "u_mps", 900, 1900),
         ("cd_n1_l1",   "u_mns", 900,  900)]

CHILD = []
def dev(cx, cy, W, H, Wx, gx, dnet, snet, gnet, bnet):
    s = W * 100
    t = 21 if gx == 29 else 106
    CHILD.append(("metal1", dnet, cx-t-46, cy-s, cx-t, cy+s))
    CHILD.append(("metal1", snet, cx+t, cy-s, cx+t+46, cy+s))
    CHILD.append(("metal1", gnet, cx-gx, cy+H-178, cx+gx, cy+H-132))
    CHILD.append(("metal1", gnet, cx-gx, cy-H+132, cx+gx, cy-H+178))
    for r in ((cx-Wx+36, cy-H+132, cx-Wx+70, cy+H-132),
              (cx+Wx-70, cy-H+132, cx+Wx-36, cy+H-132),
              (cx-Wx+132, cy+H-70, cx+Wx-132, cy+H-36),
              (cx-Wx+132, cy-H+36, cx+Wx-132, cy-H+70)):
        CHILD.append(("li", bnet, *r))

dev(0,   1900, 2, 419, 211, 29, "y",  "np",  "a",   "VDD")
dev(0,    900, 1, 310, 211, 29, "y",  "nn",  "a",   "VSS")
dev(900, 1900, 2, 419, 296, 96, "np", "VDD", "vbn", "VDD")
dev(900,  900, 1, 310, 296, 96, "nn", "VSS", "vbn", "VSS")

R = []
def rect(lay, net, x1, y1, x2, y2):
    assert x2 > x1 and y2 > y1, (lay, net, x1, y1, x2, y2)
    R.append((lay, net, x1, y1, x2, y2))

# gate nets: one straight vertical each, between facing islands
rect("metal1", "a",   -29, 1032,  29, 1659)
rect("metal1", "vbn", 804, 1032, 996, 1659)
# met1.6 patches on the two islands the verticals do not merge
rect("metal1", "a",  -45, 2141,  45, 2187)
rect("metal1", "a",  -45,  722,  45,  768)
# y on met2, clear of the `a` vertical
rect("metal1", "y", -111, 1750, -21, 1840)
rect("via1",   "y",  -96, 1765, -36, 1825)
rect("metal1", "y", -111,  820, -21,  910)
rect("via1",   "y",  -96,  835, -36,  895)
rect("metal2", "y", -111,  820, -21, 1840)
# np / nn cross between the columns on met1, same y as their strips
rect("metal1", "np", 67, 1850, 748, 1940)
rect("metal1", "nn", 67,  870, 748,  960)
# supplies: ring-top and ring-bottom buses, plus each L=1 source to its ring
rect("metal1", "VDD", -74, 2235, 1014, 2297)
rect("viali",  "VDD", -60, 2249,   60, 2283)
rect("viali",  "VDD", 800, 2249, 1000, 2283)
rect("metal1", "VDD", 1006, 1850, 1174, 1940)
rect("viali",  "VDD", 1126, 1867, 1160, 1923)
rect("metal1", "VSS", -74,  612, 1014,  674)
rect("viali",  "VSS", -60,  626,   60,  660)
rect("viali",  "VSS", 800,  626, 1000,  660)
rect("metal1", "VSS", 1006,  870, 1174,  960)
rect("viali",  "VSS", 1126,  887, 1160,  943)

LABELS = [("metal1", "a", 0, 1300), ("metal2", "y", -66, 1300),
          ("metal1", "vbn", 900, 1300), ("metal1", "VDD", 400, 2266),
          ("metal1", "VSS", 400, 643)]

LAYERS = {"metal1", "metal2", "via1", "viali"}
MINW = {"via1": 52, "viali": 34, "metal1": 28, "metal2": 28}
SPACE = {"metal1": 28, "metal2": 28}
ENC = {"via1": (("metal1", 15), ("metal2", 15)), "viali": (("metal1", 6),)}
MINAREA = 3320
err = []

def gap(a, b):
    dx = max(0, a[2]-b[4], b[2]-a[4]); dy = max(0, a[3]-b[5], b[3]-a[5])
    if dx == 0 and dy == 0: return -1.0
    return math.hypot(dx, dy) if (dx and dy) else float(max(dx, dy))

for ly, net, x1, y1, x2, y2 in R:
    if ly not in LAYERS: err.append(f"unknown layer {ly}")
    if ly in MINW and min(x2-x1, y2-y1) < MINW[ly]:
        err.append(f"{ly} {net} painted {x2-x1}x{y2-y1} < {MINW[ly]}")

ALL = R + CHILD
uf = list(range(len(ALL)))
def find(i):
    while uf[i] != i: uf[i] = uf[uf[i]]; i = uf[i]
    return i
for i in range(len(ALL)):
    for j in range(i+1, len(ALL)):
        if (ALL[i][0] == ALL[j][0] and ALL[i][1] == ALL[j][1]
                and gap(ALL[i], ALL[j]) < 0):
            ri, rj = find(i), find(j)
            if ri != rj: uf[ri] = rj
for i in range(len(ALL)):
    for j in range(i+1, len(ALL)):
        a, b = ALL[i], ALL[j]
        if a[0] != b[0] or a[0] not in SPACE: continue
        g = gap(a, b)
        if g < 0:
            if a[1] != b[1]:
                err.append(f"SHORT {a[0]}: {a[1]}/{b[1]} {a[2:]} {b[2:]}")
            continue
        if a[1] == b[1] and find(i) == find(j): continue
        if g < SPACE[a[0]]:
            err.append(f"{a[0]} spacing {g:.1f} < {SPACE[a[0]]}: "
                       f"{a[1]}/{b[1]} {a[2:]} {b[2:]}")

# met1.6: every met1 shape (merged) must reach 0.083 um^2
area = {}
for i, w in enumerate(ALL):
    if w[0] == "metal1":
        area.setdefault(find(i), 0)
        area[find(i)] += (w[4]-w[2]) * (w[5]-w[3])
for root, a in area.items():
    if a < MINAREA:
        err.append(f"met1.6 shape {ALL[root][1]} {ALL[root][2:]} area {a} < {MINAREA}")

for v in R:
    if v[0] not in ENC: continue
    for need, m in ENC[v[0]]:
        if not any(w[0] == need and w[1] == v[1] and
                   w[2] <= v[2]-m and w[3] <= v[3]-m and
                   w[4] >= v[4]+m and w[5] >= v[5]+m for w in ALL):
            err.append(f"{v[0]} {v[1]} {v[2:]} not enclosed by {need} + {m}")
for ly, net, x, y in LABELS:
    if not any(w[0] == ly and w[1] == net and
               w[2] <= x <= w[4] and w[3] <= y <= w[5] for w in R):
        err.append(f"label {net} {ly} ({x},{y}) not on parent {ly}")

def abs_bb(c, tx, ty):
    a, b, cc, d = BB[c]; return (a+tx, b+ty, cc+tx, d+ty)
boxes = [(c, i, abs_bb(c, tx, ty)) for c, i, tx, ty in PLACE]
for (ca, na, a), (cb, nb, b) in itertools.combinations(boxes, 2):
    if a[0] < b[2] and b[0] < a[2] and a[1] < b[3] and b[1] < a[3]:
        err.append(f"OVERLAP {na}/{nb}"); continue
    dx = max(0, a[0]-b[2], b[0]-a[2]); dy = max(0, a[1]-b[3], b[1]-a[3])
    nw = ca.startswith("cd_p") and cb.startswith("cd_p")
    need = 254 if nw else 100
    if max(dx, dy) < need:
        err.append(f"{'nwell.2a' if nw else 'margin'} {na}/{nb} = {max(dx,dy)} < {need}")

if err:
    print(f"=== FAIL: {len(err)} ===")
    for e in err[:25]: print("  " + e)
    sys.exit(1)

by = {}
for ly, net, x1, y1, x2, y2 in R:
    by.setdefault(ly, []).append((x1, y1, x2, y2))
out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
for c, i, tx, ty in PLACE:
    bb = abs_bb(c, tx, ty)
    out += [f"use {c} {i}", "timestamp 0", f"transform 1 0 {tx} 0 1 {ty}",
            f"box {bb[0]} {bb[1]} {bb[2]} {bb[3]}"]
for ly in ("viali", "metal1", "via1", "metal2"):
    if ly in by:
        out.append(f"<< {ly} >>")
        out += [f"rect {r[0]} {r[1]} {r[2]} {r[3]}" for r in sorted(by[ly])]
out.append("<< labels >>")
for n, (ly, net, x, y) in enumerate(LABELS, 1):
    out += [f"rlabel {ly} {x} {y} {x} {y} 0 {net}", f"port {n} nsew"]
out += ["<< end >>", ""]
open(OUT, "w").write("\n".join(out))
xs = [b[0] for _,_,b in boxes] + [b[2] for _,_,b in boxes]
ys = [b[1] for _,_,b in boxes] + [b[3] for _,_,b in boxes]
print("=== cd_starved_inv checks PASS ===")
print("  rects : " + ", ".join(f"{k} {len(v)}" for k, v in sorted(by.items())))
print(f"  extent x {min(xs)}..{max(xs)}  y {min(ys)}..{max(ys)}"
      f"   ({(max(xs)-min(xs))/200:.2f} x {(max(ys)-min(ys))/200:.2f} um)")
print(f"  wrote {os.path.normpath(OUT)}")
