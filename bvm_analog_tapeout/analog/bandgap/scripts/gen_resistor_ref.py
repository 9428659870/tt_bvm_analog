#!/usr/bin/env python3
"""
gen_resistor_ref.py -- fallback current reference, layout generator.

Writes analog/bandgap/layout/resistor_ref.mag from four child cells:
    u_rset  rset_1p2m   1.2 MOhm res_xhigh_po_0p69 snake, 20 x 20.84 um
    u_mn    ref_n4_l2   NMOS W=4 L=2, diode-connected
    u_mnm   ref_n4_l2   NMOS W=4 L=2, mirror output
    u_mp    ref_p8_l2   PMOS W=8 L=2, diode-connected

Conventions (doc/STATUS.md):
  * .mag coords are INTERNAL units, 1 unit = 0.005 um.
  * painted via1 = 60 units inside a 90-unit met1 pad (cut + enclosure).
  * met1 must overlap an li contact by >= 6 (met1.4); we use 14.
  * met1 spacing (met1.2) = 28.
  * device guard rings carry li via p/nsubdiffcont but NO met1 -- tying
    them to a supply is the caller's job and DRC stays silent if omitted.

Terminal escape notes:
  * D/S met1 strips are only 46 wide -> every via1 needs a widened pad.
  * gate brackets come within 10 units of D/S in x, so there is no met1
    escape straight up or down.  XMN and XMP are diode-connected, so D
    and G are one net and the 10-unit gap is simply painted across.
    XMNm has D=iout_p vs G=iout_n, so that one leaves on met2.
  * S and the local guard ring are the same supply on all three FETs,
    so S bridges sideways onto the ring and taps there.
"""
import math, os, sys

OUT = os.path.join(os.path.dirname(__file__), "..", "layout", "resistor_ref.mag")

# ---------------------------------------------------------------- placement
T_RX, T_RY = 2422, 5082          # rset_1p2m origin shift (keeps all coords > 0)
MN  = (4300, 1300)               # ref_n4_l2  diode
MNM = (3400, 1300)               # ref_n4_l2  mirror
MP  = (2200, 1300)               # ref_p8_l2  diode

PLACE = [
    ("rset_1p2m", "u_rset", T_RX, T_RY, (-2405, -2465, 2405, 2465)),
    ("ref_n4_l2", "u_mn",   MN[0],  MN[1],  (-343, -557, 343, 557)),
    ("ref_n4_l2", "u_mnm",  MNM[0], MNM[1], (-343, -557, 343, 557)),
    ("ref_p8_l2", "u_mp",   MP[0],  MP[1],  (-343, -966, 343, 966)),
]

# ------------------------------------------------- child met1, as envelopes
# bracket shapes collapsed to their bounding box (conservative for spacing)
NMOS_M1 = {"D": (-252, -400, -206, 400), "S": (206, -400, 252, 400),
           "GT": (-196, 432, 196, 478),  "GB": (-196, -478, 196, -432)}
PMOS_M1 = {"D": (-252, -800, -206, 800), "S": (206, -800, 252, 800),
           "GT": (-196, 841, 196, 887),  "GB": (-196, -887, 196, -841)}
RSET_M1 = {"R1": (-2282, -2346, -2164, -1925), "R2": (2164, -2346, 2282, -1925)}

CHILD = []       # (layer, net, x1, y1, x2, y2)
def child(tab, cx, cy, nets):
    for k, (a, b, c, d) in tab.items():
        CHILD.append(("metal1", nets[k], a + cx, b + cy, c + cx, d + cy))

child(NMOS_M1, *MN,  {"D": "iout_n", "S": "VSS", "GT": "iout_n", "GB": "iout_n"})
child(NMOS_M1, *MNM, {"D": "iout_p", "S": "VSS", "GT": "iout_n", "GB": "iout_n"})
child(PMOS_M1, *MP,  {"D": "iout_p", "S": "VDD", "GT": "iout_p", "GB": "iout_p"})
child(RSET_M1, T_RX, T_RY, {"R1": "VDD", "R2": "iout_n"})

# ------------------------------------------------------------ parent shapes
R = []           # (layer, net, x1, y1, x2, y2)
def rect(layer, net, x1, y1, x2, y2):
    R.append((layer, net, x1, y1, x2, y2))

# --- iout_n ---------------------------------------------------------------
rect("metal1", "iout_n", 4048, 1700, 4130, 1778)   # u_mn  D<->G, across the 10u gap
rect("metal1", "iout_n", 4255, 1688, 4345, 1778)   # u_mn  G via1 pad
rect("metal1", "iout_n", 3355, 1688, 3445, 1778)   # u_mnm G via1 pad
rect("metal1", "iout_n", 4590, 2755, 4700, 2845)   # R2 via1 pad (strip is 118 wide)
rect("via1",   "iout_n", 4270, 1703, 4330, 1763)
rect("via1",   "iout_n", 3370, 1703, 3430, 1763)
rect("via1",   "iout_n", 4615, 2770, 4675, 2830)
rect("metal2", "iout_n", 3355, 1688, 4690, 1778)   # G bus, u_mnm -> u_mn -> riser
rect("metal2", "iout_n", 4600, 1778, 4690, 2845)   # riser up to R2

# --- iout_p ---------------------------------------------------------------
rect("metal1", "iout_p", 1948, 2100, 2030, 2187)   # u_mp D<->G, across the 10u gap
rect("metal1", "iout_p", 3104, 1255, 3194, 1345)   # u_mnm D via1 pad
rect("metal1", "iout_p", 1904, 1255, 1994, 1345)   # u_mp  D via1 pad
rect("via1",   "iout_p", 3119, 1270, 3179, 1330)
rect("via1",   "iout_p", 1919, 1270, 1979, 1330)
rect("metal2", "iout_p", 1904, 1255, 3194, 1345)   # over u_mnm.S and u_mp ring

# --- VSS ------------------------------------------------------------------
rect("metal1", "VSS", 4506, 1350, 4674, 1474)      # u_mn  S -> ring right
rect("viali",  "VSS", 4626, 1367, 4660, 1457)
rect("metal1", "VSS", 3606, 1350, 3774, 1474)      # u_mnm S -> ring right
rect("viali",  "VSS", 3726, 1367, 3760, 1457)
rect("metal1", "VSS", 4186,  712, 4414,  774)      # u_mn  ring bottom tap
rect("viali",  "VSS", 4200,  726, 4400,  760)
rect("metal1", "VSS", 4250,  200, 4350,  712)
rect("metal1", "VSS", 3286,  712, 3514,  774)      # u_mnm ring bottom tap
rect("viali",  "VSS", 3300,  726, 3500,  760)
rect("metal1", "VSS", 3350,  200, 3450,  712)
rect("metal1", "VSS", 3766, 2586, 3934, 2648)      # rset ring bottom tap
rect("viali",  "VSS", 3780, 2600, 3920, 2634)
rect("metal1", "VSS", 3820,  120, 3880, 2586)      # riser, in the mnm/mn gap
rect("metal1", "VSS", 3350,  120, 4350,  200)      # bus, below u_mp's nwell

# --- VDD ------------------------------------------------------------------
rect("metal1", "VDD", 2406, 1550, 2574, 1674)      # u_mp S -> ring right
rect("viali",  "VDD", 2526, 1567, 2560, 1657)
rect("metal1", "VDD", 2086, 2235, 2314, 2420)      # u_mp ring top tap + riser
rect("viali",  "VDD", 2100, 2249, 2300, 2283)
rect("metal1", "VDD",  160, 2340, 2314, 2420)      # bus, just above the nwell
rect("metal1", "VDD",  160, 2420,  240, 2736)      # up to R1

LABELS = [("metal2", "iout_n", 4000, 1733), ("metal2", "iout_p", 2500, 1300),
          ("metal1", "VDD",    1200, 2380), ("metal1", "VSS",    3850,  160)]

# ------------------------------------------------------------------- checks
LAYERS = {"metal1", "metal2", "via1", "viali"}
MINW   = {"via1": 52, "via2": 56, "via3": 64, "viali": 34}
SPACE  = {"metal1": 28, "metal2": 28}
ENC    = {"via1": ("metal1", "metal2", 15), "viali": ("metal1", None, 6)}
err    = []

for ly, net, x1, y1, x2, y2 in R:
    if ly not in LAYERS:
        err.append("unknown layer %s" % ly)
    if x2 <= x1 or y2 <= y1:
        err.append("%s %s degenerate %s" % (ly, net, (x1, y1, x2, y2)))
    if ly in MINW and min(x2 - x1, y2 - y1) < MINW[ly]:
        err.append("%s %s painted %dx%d < %d" %
                   (ly, net, x2 - x1, y2 - y1, MINW[ly]))

def gap(a, b):
    dx = max(0, a[2] - b[4], b[2] - a[4])
    dy = max(0, a[3] - b[5], b[3] - a[5])
    if dx == 0 and dy == 0:
        return -1.0
    return math.hypot(dx, dy) if (dx and dy) else float(max(dx, dy))

ALL = R + CHILD
for i in range(len(ALL)):
    for j in range(i + 1, len(ALL)):
        a, b = ALL[i], ALL[j]
        if a[0] != b[0] or a[0] not in SPACE or a[1] == b[1]:
            continue
        g = gap(a, b)
        if g < 0:
            err.append("SHORT %s: %s/%s %s %s" % (a[0], a[1], b[1], a[2:], b[2:]))
        elif g < SPACE[a[0]]:
            err.append("%s spacing %.1f < %d: %s/%s %s %s" %
                       (a[0], g, SPACE[a[0]], a[1], b[1], a[2:], b[2:]))

def inside(v, w, m):
    return (w[2] <= v[2] - m and w[3] <= v[3] - m and
            w[4] >= v[4] + m and w[5] >= v[5] + m)

for v in R:
    if v[0] not in ENC:
        continue
    lo, hi, m = ENC[v[0]]
    for need in (lo, hi):
        if need is None:
            continue
        if not any(inside(v, w, m) for w in ALL
                   if w[0] == need and w[1] == v[1]):
            err.append("%s %s %s not enclosed by %s + %d" %
                       (v[0], v[1], v[2:], need, m))

for ly, net, x, y in LABELS:
    if not any(w[0] == ly and w[1] == net and
               w[2] <= x <= w[4] and w[3] <= y <= w[5] for w in R):
        err.append("label %s %s (%d,%d) not on parent %s" % (net, ly, x, y, ly))

if err:
    print("=== FAIL: %d check(s) ===" % len(err))
    for e in err:
        print("  " + e)
    sys.exit(1)

# -------------------------------------------------------------------- emit
by = {}
for ly, net, x1, y1, x2, y2 in R:
    by.setdefault(ly, []).append((x1, y1, x2, y2))

out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
for cell, inst, tx, ty, bb in PLACE:
    out += ["use %s %s" % (cell, inst),
            "timestamp 0",
            "transform 1 0 %d 0 1 %d" % (tx, ty),
            "box %d %d %d %d" % (bb[0] + tx, bb[1] + ty, bb[2] + tx, bb[3] + ty)]
for ly in ("metal1", "metal2", "via1", "viali"):
    if ly in by:
        out.append("<< %s >>" % ly)
        out += ["rect %d %d %d %d" % r for r in sorted(by[ly])]
out.append("<< labels >>")
for n, (ly, net, x, y) in enumerate(LABELS, 1):
    out += ["rlabel %s %d %d %d %d 0 %s" % (ly, x, y, x, y, net),
            "port %d nsew" % n]
out += ["<< end >>", ""]

with open(OUT, "w") as f:
    f.write("\n".join(out))

print("=== checks PASS ===")
print("  rects : %s" % ", ".join("%s %d" % (k, len(v)) for k, v in sorted(by.items())))
print("  insts : %d   labels: %d" % (len(PLACE), len(LABELS)))
print("  wrote : %s" % os.path.normpath(OUT))
