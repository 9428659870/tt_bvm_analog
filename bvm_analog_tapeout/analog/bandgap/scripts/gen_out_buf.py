#!/usr/bin/env python3
"""out_buf -- unity-gain output buffer, layout generator.

Two-stage Miller-compensated OTA, verified 2026-11-17:
offset 0.148 mV, gain_lf 0.0107 dB, f3db 13.1 MHz, step err 0.685 mV.

    XMtail ntail vbias_n VSS   VSS  ob_n4_l1
    XM1    n1    vout    ntail VSS  ob_n4_l1   feedback on the MIRROR
    XM2    n2    vin     ntail VSS  ob_n4_l1   REFERENCE side (see below)
    XM3    n1    n1      VDD   VDD  ob_p4_l1
    XM4    n2    n1      VDD   VDD  ob_p4_l1
    XM7    vout  n2      VDD   VDD  ob_xm7     W=20 L=0.5, 4 fingers
    XM8    vout  vbias_n VSS   VSS  ob_xm8     W=16 L=1,   4 fingers
    Rz1    n2    nz                 rz_4k      4002 ohm
    Cc1    nz    vout               cc_1p      999.7 fF

XM3 is the diode-connected load, so n1 is the mirror REFERENCE and n2 is
the mirror OUTPUT driving XM7's gate.  Feedback (vout) must sit on the n1
side.  Rev 1 had it on n2, which is positive feedback -- the cell latched
to a rail and, because it is instantiated twice, both ua[0] and ua[2]
were dead.  Same mistake and same fix as sc_ota.

THE CAPACITOR BLOCKS MET3 AND MET4.  cc_1p's met3 is the bottom plate
across the whole footprint, and mimcapcontact fills the capm interior
with met4, so NOTHING can cross it on either layer -- that is what
shorted sc_ota's Miller cap into `Xcc vout vout`.  Turned to advantage
here: the met3 IS terminal C2, so assigning C2 = vout lets parent met3
simply abut it with no via.  C1 (top plate) takes nz by abutting the met4
frame, with the via3 placed left of the cell where it clears capm by 477
units (capm.8 wants 20).  out_buf therefore USES MET4 and cannot be
placed under ua[2..7], same as ota_pair.

FLOORPLAN.  NMOS row low, PMOS row high, XM3 above XM1 and XM4 above XM2
so n1 and n2 are short vertical hops.  The PMOS pitch is 900, NOT 800:
at 800 the nwells are 208 units apart and nwell.2a wants 254 (1.27 um).
The rule is touching_ok, so merging them would also be legal, but then
the two guard rings land ~40 units apart against difftap's 54.

BB values are magic `box values` (geometry, nwell included), NOT
FIXED_BBOX -- cc_1p's abutment box stops at +2081 while its met4 reaches
+2433, and trusting FIXED_BBOX understated the cell by 352 units.

S and the local guard ring are the same supply on every FET here, so S
bridges sideways onto a ring vertical and taps there, rather than trying
to escape past a gate bracket that sits 10 units away in x.

STAGE 2: placement + power.  Signals follow.  Each stage is DRC'd on its
own -- on sc_ota the signal emit was accidentally called after the checks
and 26 rects were silently discarded.

1 internal unit = 0.005 um.
"""
import itertools, math, os, sys

OUT = os.path.join(os.path.dirname(__file__), "..", "layout", "out_buf.mag")
VS, VD = "VSS", "VDD"

BB = {
    "ob_n4_l1": (-296, -610, 296, 610),
    "ob_p4_l1": (-296, -619, 296, 619),
    "ob_xm7":   (-483, -719, 483, 719),
    "ob_xm8":   (-683, -610, 683, 610),
    "rz_4k":    (-201, -1020, 201, 1020),
    "cc_1p":    (-2433, -2257, 2433, 2257),
}
NWELL  = {"ob_p4_l1", "ob_xm7"}
MARGIN = 100
NWSP   = 254

PLACE = [
    ("ob_n4_l1", "u_mtail",  900, 1500),
    ("ob_n4_l1", "u_m1",    1800, 1500),
    ("ob_n4_l1", "u_m2",    2700, 1500),
    ("ob_xm8",   "u_m8",    3900, 1500),
    ("ob_p4_l1", "u_m3",    1800, 3400),
    ("ob_p4_l1", "u_m4",    2700, 3400),
    ("ob_xm7",   "u_m7",    3900, 3400),
    ("rz_4k",    "u_rz",    5000, 2500),
    ("cc_1p",    "u_cc",    7900, 2500),
]

# ----------------------------------------------------- child net envelopes
NM  = {"D": (-152, -400, -106, 400), "S": (106, -400, 152, 400),
       "GT": (-96, 432, 96, 478),    "GB": (-96, -478, 96, -432)}
NR  = {"L": (-260, -478, -226, 478), "R": (226, -478, 260, 478),
       "T": (-164, 540, 164, 574),   "B": (-164, -574, 164, -540)}
PM  = {"D": (-152, -400, -106, 400), "S": (106, -400, 152, 400),
       "GT": (-96, 441, 96, 487),    "GB": (-96, -487, 96, -441)}
PR  = {"L": (-260, -487, -226, 487), "R": (226, -487, 260, 487),
       "T": (-164, 549, 164, 583),   "B": (-164, -583, 164, -549)}
X7  = {"D": (-361, 200, 361, 400),   "S": (-203, -400, 203, -200),
       "G": (-45, 540, 45, 640),     "B": (-310, -711, 310, -621)}
X8  = {"D": (-561, 150, 561, 350),   "S": (-303, -350, 303, -150),
       "G": (-45, 431, 45, 531),     "B": (-410, -602, 410, -512)}
# the wrappers' own met1 pads, which parent routing may legally merge with
X7M = {"D0": (-361, 255, -271, 345), "D1": (-45, 255, 45, 345),
       "D2": (271, 255, 361, 345),   "S0": (-203, -345, -113, -255),
       "S1": (113, -345, 203, -255), "G": (-45, 541, 45, 640),
       "B0": (-310, -711, -190, -621), "B1": (-60, -711, 60, -621),
       "B2": (190, -711, 310, -621)}
X8M = {"D0": (-561, 205, -471, 295), "D1": (-45, 205, 45, 295),
       "D2": (471, 205, 561, 295),   "S0": (-303, -295, -213, -205),
       "S1": (213, -295, 303, -205), "G": (-45, 432, 45, 530),
       "B0": (-410, -602, -290, -512), "B1": (-60, -602, 60, -512),
       "B2": (290, -602, 410, -512)}
RZ  = {"R1": (-25, 427, 25, 848),    "R2": (-25, -848, 25, -427)}
RZR = {"L": (-165, -888, -131, 888), "R": (131, -888, 165, 888),
       "T": (-69, 950, 69, 984),     "B": (-69, -984, 69, -950)}

CHILD = []
def add(tab, cx, cy, nets, lay="metal1"):
    for k, (a, b, c, d) in tab.items():
        if k in nets:
            CHILD.append((lay, nets[k], a+cx, b+cy, c+cx, d+cy))

def allnets(tab, net): return {k: net for k in tab}
# guard rings carry li (p/nsubdiffcont), NOT met1 -- inert for spacing

add(NM, 900, 1500, {"D": "ntail", "S": VS, "GT": "vbias_n", "GB": "vbias_n"})
add(NR, 900, 1500, allnets(NR, VS), "li")
add(NM, 1800, 1500, {"D": "n1", "S": "ntail", "GT": "vout", "GB": "vout"})
add(NR, 1800, 1500, allnets(NR, VS), "li")
add(NM, 2700, 1500, {"D": "n2", "S": "ntail", "GT": "vin", "GB": "vin"})
add(NR, 2700, 1500, allnets(NR, VS), "li")
add(PM, 1800, 3400, {"D": "n1", "S": VD, "GT": "n1", "GB": "n1"})
add(PR, 1800, 3400, allnets(PR, VD), "li")
add(PM, 2700, 3400, {"D": "n2", "S": VD, "GT": "n1", "GB": "n1"})
add(PR, 2700, 3400, allnets(PR, VD), "li")
add(X7, 3900, 3400, {"D": "vout", "S": VD, "G": "n2", "B": VD}, "metal2")
add(X7M, 3900, 3400, {"D0": "vout", "D1": "vout", "D2": "vout",
                      "S0": VD, "S1": VD, "G": "n2",
                      "B0": VD, "B1": VD, "B2": VD})
add(X8, 3900, 1500, {"D": "vout", "S": VS, "G": "vbias_n", "B": VS}, "metal2")
add(X8M, 3900, 1500, {"D0": "vout", "D1": "vout", "D2": "vout",
                      "S0": VS, "S1": VS, "G": "vbias_n",
                      "B0": VS, "B1": VS, "B2": VS})
add(RZ, 5000, 2500, {"R1": "n2", "R2": "nz"})
add(RZR, 5000, 2500, allnets(RZR, VS), "li")
# grandchild met1 inside each wrapper: the gate band spans the full device
# width, and the five diffusion strips alternate D,S,D,S,D.  Omitting these
# is what let a VDD riser short onto XM7's gate at (4013,3947,4103,3981).
X7C = {"GT": (-316, 541, 316, 587),  "GB": (-316, -587, 316, -541),
       "F0": (-339, -500, -293, 500), "F1": (-181, -500, -135, 500),
       "F2": (-23, -500, 23, 500),    "F3": (135, -500, 181, 500),
       "F4": (293, -500, 339, 500)}
X8C = {"GT": (-516, 432, 516, 478),  "GB": (-516, -478, 516, -432),
       "F0": (-539, -400, -493, 400), "F1": (-281, -400, -235, 400),
       "F2": (-23, -400, 23, 400),    "F3": (235, -400, 281, 400),
       "F4": (493, -400, 539, 400)}

add(X7C, 3900, 3400, {"GT": "n2", "GB": "n2", "F0": "vout", "F1": VD,
                      "F2": "vout", "F3": VD, "F4": "vout"})
add(X8C, 3900, 1500, {"GT": "vbias_n", "GB": "vbias_n", "F0": "vout",
                      "F1": VS, "F2": "vout", "F3": VS, "F4": "vout"})

CHILD.append(("metal3", "vout", 5467, 243, 10333, 4757))
CHILD.append(("metal4", "nz",   5546, 322, 9902, 4678))
CHILD.append(("metal4", "vout", 10233, 255, 10329, 4745))

# ------------------------------------------------------------------ power
R = []
def rect(lay, net, x1, y1, x2, y2):
    assert x2 > x1 and y2 > y1, (lay, net, x1, y1, x2, y2)
    R.append((lay, net, x1, y1, x2, y2))

def ring_tap(net, x0, x1, y0, y1):
    """viali along a guard-ring run, met1 over it with 14 units of margin."""
    rect("viali", net, x0, y0, x1, y1)
    rect("metal1", net, x0 - 14, y0 - 14, x1 + 14, y1 + 14)

# VSS rail beneath the NMOS row
rect("metal1", VS, 600, 640, 5200, 760)
for cx in (900, 1800, 2700):
    ring_tap(VS, cx - 80, cx + 80, 926, 960)
    rect("metal1", VS, cx - 40, 700, cx + 40, 926)
rect("metal1", VS, 1006, 1440, 1174, 1564)       # mtail S -> its own ring
rect("viali",  VS, 1126, 1457, 1160, 1547)
rect("metal2", VS, 3650, 988, 3750, 1150)        # u_m8 B bar <-> S bar
rect("metal1", VS, 3655, 898, 3745, 988)
rect("via1",   VS, 3670, 913, 3730, 973)
rect("metal1", VS, 3660, 700, 3740, 898)
ring_tap(VS, 4940, 5060, 1516, 1550)             # rz bulk ring
rect("metal1", VS, 4970, 700, 5030, 1516)

# VDD rail above the PMOS row
rect("metal1", VD, 1500, 4150, 4400, 4270)
for cx in (1800, 2700):
    rect("metal1", VD, cx + 106, 3340, cx + 274, 3464)   # S -> ring right
    rect("viali",  VD, cx + 226, 3357, cx + 260, 3447)
    ring_tap(VD, cx - 164, cx - 60, 3949, 3983)          # ring top, left half
    rect("metal1", VD, cx - 152, 3997, cx - 72, 4150)
rect("metal2", VD, 3750, 2779, 3850, 3000)       # u_m7 B bar <-> S bar
rect("metal2", VD, 4103, 3000, 4400, 3200)       # extend u_m7 S bar east
rect("metal2", VD, 4310, 3200, 4400, 4250)       # riser, clear of D bar
rect("via1",   VD, 4325, 4175, 4385, 4235)       # up into the met1 rail


# ----------------------------------------------------------------- signals
# ntail: three met1 strips in the NMOS row, bussed on met2.
for x in (749, 1951, 2851):
    rect("metal1", "ntail", x-45, 1455, x+45, 1545)
    rect("via1",   "ntail", x-30, 1470, x+30, 1530)
rect("metal2", "ntail", 704, 1455, 2896, 1545)

# n1: u_m1.D and u_m3.D share x, so met1 joins them directly.  XM3 is
# diode-connected, so D and G are one net and the 10-unit gate gap is
# simply painted across.
rect("metal1", "n1", 1612, 1900, 1676, 3000)   # clears gate bars by 28
rect("metal1", "n1", 1612, 2913, 1845, 3000)      # diode bridge, reaches pad
rect("metal1", "n1", 1755, 2869, 1845, 2959)
rect("via1",   "n1", 1770, 2884, 1830, 2944)
rect("metal1", "n1", 2655, 2869, 2745, 2959)      # u_m4 gate
rect("via1",   "n1", 2670, 2884, 2730, 2944)
rect("metal2", "n1", 1755, 2869, 2745, 2959)      # hops over the n2 riser

# n2: u_m2.D/u_m4.D share x.  XM4 is NOT diode-connected, so this one
# leaves on met2 and reaches XM7's gate through the 140-unit window
# between that wrapper's D bar (ends 3800) and G bar (starts 3940).
rect("metal1", "n2", 2512, 1900, 2576, 3000)   # clears gate bars by 28
rect("metal1", "n2", 2504, 3355, 2594, 3445)
rect("via1",   "n2", 2519, 3370, 2579, 3430)
rect("metal2", "n2", 2504, 3000, 2594, 3910)
rect("metal2", "n2", 2504, 3830, 3900, 3910)
rect("metal2", "n2", 3855, 3910, 3945, 3940)
# ... and reaches Rz on met3, which rides over the VDD met2 riser
rect("via2",   "n2", 2521, 3015, 2577, 3071)
rect("metal3", "n2", 2506, 3000, 5045, 3086)
rect("via2",   "n2", 4972, 3015, 5028, 3071)
rect("metal2", "n2", 4955, 3000, 5045, 3290)
rect("via1",   "n2", 4970, 3215, 5030, 3275)
rect("metal1", "n2", 4955, 3200, 5045, 3290)

# vout: XM7.D and XM8.D each reach the cap's met3 independently -- that
# met3 IS terminal C2, one shape, so they join through it and no vertical
# run past XM7's met2 bars is needed.
rect("via2",   "vout", 4115, 1722, 4171, 1778)
rect("metal3", "vout", 4100, 1707, 5500, 1793)
rect("via2",   "vout", 4115, 3672, 4171, 3728)
rect("metal3", "vout", 4100, 3657, 5500, 3743)
rect("metal1", "vout", 1755, 1932, 1845, 2022)    # feedback to XM1 gate
rect("via1",   "vout", 1770, 1947, 1830, 2007)
rect("metal2", "vout", 1755, 1932, 3400, 2022)
rect("metal2", "vout", 3310, 1750, 3400, 2022)
rect("metal3", "vout", 10333, 2450, 10700, 2560)  # right-edge port stub

# nz: Rz to the cap's top plate.  The via3 sits 472 units clear of capm
# (capm.8 wants 20); met4 then abuts the C1 frame with no via over it.
rect("metal1", "nz", 4955, 1960, 5045, 2050)
rect("via1",   "nz", 4970, 1975, 5030, 2035)
rect("metal2", "nz", 4955, 1960, 5045, 2050)
rect("via2",   "nz", 4972, 1977, 5028, 2033)
rect("metal3", "nz", 4945, 1950, 5055, 2060)
rect("via3",   "nz", 4965, 1970, 5035, 2040)
rect("metal4", "nz", 4945, 1950, 5600, 2060)

# vbias_n: tail gate to XM8 gate, out to the left edge as a port
rect("metal1", "vbias_n", 855, 1932, 945, 2022)
rect("via1",   "vbias_n", 870, 1947, 930, 2007)
rect("metal2", "vbias_n", 855, 1932, 945, 2240)
rect("metal2", "vbias_n", 600, 2150, 3945, 2240)
rect("metal2", "vbias_n", 3855, 2031, 3945, 2150)

# vin: XM2's lower gate bar (the upper one is in vout's met2 band)
rect("metal1", "vin", 2655, 1022, 2745, 1112)
rect("via1",   "vin", 2670, 1037, 2730, 1097)
rect("metal2", "vin", 600, 1022, 2745, 1112)

LABELS = [("metal2", "vin", 650, 1067), ("metal3", "vout", 10500, 2505),
          ("metal2", "vbias_n", 650, 2195), ("metal1", VD, 2000, 4210),
          ("metal1", VS, 1000, 700)]

# ------------------------------------------------------------------ checks
LAYERS = {"metal1", "metal2", "metal3", "metal4", "via1", "via2", "via3", "viali"}
MINW   = {"via1": 52, "via2": 56, "via3": 64, "viali": 34,
          "metal1": 28, "metal2": 28, "metal3": 28, "metal4": 32}
SPACE  = {"metal1": 28, "metal2": 28, "metal3": 60, "metal4": 32}
ENC    = {"via1": (("metal1", 15), ("metal2", 15)),
          "via2": (("metal2", 15), ("metal3", 15)),
          "via3": (("metal3", 15), ("metal4", 15)),
          "viali": (("metal1", 6),)}
err = []

for ly, net, x1, y1, x2, y2 in R:
    if ly not in LAYERS:
        err.append(f"unknown layer {ly}")
    if ly in MINW and min(x2 - x1, y2 - y1) < MINW[ly]:
        err.append(f"{ly} {net} painted {x2-x1}x{y2-y1} < {MINW[ly]}")

def gap(a, b):
    dx = max(0, a[2] - b[4], b[2] - a[4])
    dy = max(0, a[3] - b[5], b[3] - a[5])
    if dx == 0 and dy == 0:
        return -1.0
    return math.hypot(dx, dy) if (dx and dy) else float(max(dx, dy))

ALL = R + CHILD
for a, b in itertools.combinations(ALL, 2):
    if a[0] != b[0] or a[0] not in SPACE:
        continue
    g = gap(a, b)
    if g < 0:
        if a[1] != b[1]:
            err.append(f"SHORT {a[0]}: {a[1]}/{b[1]} {a[2:]} {b[2:]}")
        continue                      # same net overlapping/abutting: merged
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
    return (a + tx, b + ty, c + tx, d + ty)

boxes = [(cell, inst, abs_bb(cell, tx, ty)) for cell, inst, tx, ty in PLACE]
for (ca, na, a), (cb, nb, b) in itertools.combinations(boxes, 2):
    dx = max(0, a[0] - b[2], b[0] - a[2])
    dy = max(0, a[1] - b[3], b[1] - a[3])
    g = max(dx, dy)
    need = NWSP if (ca in NWELL and cb in NWELL) else MARGIN
    if dx == 0 and dy == 0:
        err.append(f"OVERLAP {na}/{nb}")
    elif g < need:
        err.append(f"{'nwell.2a' if need == NWSP else 'margin'} "
                   f"{na}/{nb} = {g} < {need}")

if err:
    print(f"=== FAIL: {len(err)} check(s) ===")
    for e in err:
        print("  " + e)
    sys.exit(1)

# -------------------------------------------------------------------- emit
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

print("=== stage 3 (placement + power + signals) checks PASS ===")
print("  rects : " + ", ".join(f"{k} {len(v)}" for k, v in sorted(by.items())))
print(f"  insts : {len(PLACE)}   child envelopes: {len(CHILD)}"
      f"   labels: {len(LABELS)}")
print(f"  wrote : {os.path.normpath(OUT)}")
