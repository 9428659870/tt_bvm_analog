#!/usr/bin/env python3
"""bias_gen -- 5-bit binary-weighted current mirror, layout generator.

    XM0..XM4   nd0..nd4  nbias_in VSS VSS   m = 1,2,4,8,16  W=4 L=2
    XSW0..XSW4 ncom      b0..b4   nd0..nd4  m = 1,2,4,8,16  W=4 L=0.15
    XMEN       iout      en       ncom      W=16 m=4        L=0.15

BINARY WEIGHTING COMES FROM DEVICE COUNT, NEVER FROM WIDTH.  All 31 mirror
units are identical bg_n4_l2 instances; a leg built as one nf=16 device
would have shared-diffusion parasitics a standalone nf=1 unit does not,
which is the same error in a different disguise and the usual reason a
trimmed mirror goes non-monotonic.

COMMON CENTROID.  31 units in a row admit an exact 1-D solution.  With a
dummy at each end the actives occupy positions 1..31 and the centre is 16:

    nd0  m=1   16                       centroid 16
    nd1  m=2   15, 17                   centroid 16
    nd2  m=4   13, 14, 18, 19           centroid 16
    nd3  m=8   9..12, 20..23            centroid 16
    nd4  m=16  1..8, 24..31             centroid 16

Every leg shares the centre, so a linear process gradient cancels for all
five -- which is what protects monotonicity at the major carry.

The SWITCHES need no matching, only Ron tracking their leg, so each is one
device of the summed width rather than m copies: 31 switch instances
collapse to 5.  bg_sw1 (nf=1) is the only DRC-dirty cell in the family
(met1.6, 58x46 gate islands); the parent patches it.

STAGE 2: placement + gate bus + VSS + substrate taps.  Drains and
switches follow.  Each stage is EXTRACTED as well as DRC'd -- on out_buf
a floating guard ring survived three clean DRC runs and only showed up in
the extracted netlist.

bg_n4_l2 has guard=0 and so no B port at all: its bulk is the substrate.
The parent must supply tapped psubdiffcont tied to VSS or all 31 mirror
devices extract with a floating bulk, which DRC will not mention.

1 internal unit = 0.005 um.
"""
import itertools, os, sys

OUT = os.path.join(os.path.dirname(__file__), "..", "layout", "bias_gen.mag")

BB = {
    "bg_n4_l2":  (-258, -488, 258, 488),
    "bg_sw1":    (-211, -610, 211, 610),
    "bg_sw2_w":  (-263, -610, 263, 610),
    "bg_sw4_w":  (-359, -610, 359, 610),
    "bg_sw8_w":  (-551, -610, 551, 610),
    "bg_sw16_w": (-935, -610, 935, 610),
}

PITCH, X0, YROW = 580, 500, 1000
NPOS = 33                      # 0 and 32 are dummies, 1..31 active

LEG = {0: "VSS", 32: "VSS"}
LEG[16] = "nd0"
for p in (15, 17):                              LEG[p] = "nd1"
for p in (13, 14, 18, 19):                      LEG[p] = "nd2"
for p in (9, 10, 11, 12, 20, 21, 22, 23):       LEG[p] = "nd3"
for p in list(range(1, 9)) + list(range(24, 32)): LEG[p] = "nd4"

assert len(LEG) == NPOS, f"LEG covers {len(LEG)} of {NPOS}"
for net, m in (("nd0", 1), ("nd1", 2), ("nd2", 4), ("nd3", 8), ("nd4", 16)):
    ps = [p for p, n in LEG.items() if n == net]
    assert len(ps) == m, f"{net}: {len(ps)} units, want {m}"
    assert sum(ps) == 16 * m, f"{net}: centroid {sum(ps)/m}, want 16"

YSW = 3600
PLACE = [("bg_n4_l2", f"u{p:02d}", X0 + p * PITCH, YROW) for p in range(NPOS)]
PLACE += [
    ("bg_sw1",    "u_sw0",  1200, YSW),
    ("bg_sw2_w",  "u_sw1",  2200, YSW),
    ("bg_sw4_w",  "u_sw2",  3400, YSW),
    ("bg_sw8_w",  "u_sw3",  5000, YSW),
    ("bg_sw16_w", "u_sw4",  7200, YSW),
    ("bg_sw16_w", "u_en",  10000, YSW),
]

MARGIN = 54                    # difftap spacing, no nwell anywhere here


def abs_bb(cell, tx, ty):
    a, b, c, d = BB[cell]
    return (a + tx, b + ty, c + tx, d + ty)



err = []

# ------------------------------------------------- child net envelopes
UD  = (-252, -400, -206, 400)      # bg_n4_l2 drain strip
US  = (206, -400, 252, 400)        # source strip
UGT = (-196, 432, 196, 478)        # gate bar, top
UGB = (-196, -478, 196, -432)      # gate bar, bottom

CHILD = []
for p in range(NPOS):
    cx = X0 + p * PITCH
    for (a, b, c, d), net in ((UD, LEG[p]), (US, "VSS"),
                              (UGT, "nbias_in"), (UGB, "nbias_in")):
        CHILD.append(("metal1", net, a + cx, b + YROW, c + cx, d + YROW))

R = []
def rect(lay, net, x1, y1, x2, y2):
    assert x2 > x1 and y2 > y1, (lay, net, x1, y1, x2, y2)
    R.append((lay, net, x1, y1, x2, y2))

XL, XR = X0 - 196, X0 + (NPOS - 1) * PITCH + 196

# --- nbias_in: the gate bars all sit at the same y, so one met1 strip
#     spans the array and ties all 33 gates.
rect("metal1", "nbias_in", XL, YROW + 432, XR, YROW + 478)

# --- VSS: met2 bus along the array centre, via1 onto every source pad.
#     The dummies at each end have their drains tied here too.
rect("metal2", "VSS", X0 - 320, YROW - 45, XR + 320, YROW + 45)
for p in range(NPOS):
    cx = X0 + p * PITCH
    rect("metal1", "VSS", cx + 184, YROW - 45, cx + 274, YROW + 45)
    rect("via1",   "VSS", cx + 199, YROW - 30, cx + 259, YROW + 30)
for p in (0, NPOS - 1):                       # dummy drains -> VSS
    cx = X0 + p * PITCH
    rect("metal1", "VSS", cx - 306, YROW - 45, cx - 206, YROW + 45)
    rect("via1",   "VSS", cx - 281, YROW - 30, cx - 221, YROW + 30)

# --- substrate taps.  bg_n4_l2 carries no ring of its own, so the array
#     gets one tapped strip below it, reached by met2 risers that hop the
#     gate bars on a layer those bars do not occupy.
YTAP = 300
# (no array taps: the switch guard rings tap the substrate to VSS)

# --- bg_sw1 met1.6 patch: 58x46 = 0.067 um^2 against a 0.083 floor.
#     Extending each island to 58x64 = 3712 units^2 clears it; the ring
#     above sits at y+540 so there is room.
SW0X, SW0Y = 1200, YSW
rect("metal1", "b0", SW0X - 29, SW0Y + 432, SW0X + 29, SW0Y + 496)
rect("metal1", "b0", SW0X - 29, SW0Y - 496, SW0X + 29, SW0Y - 432)

# ---------------------------------------------- stage 3: signal routing
# Switch terminal geometry, derived from the wrapper configs.
SWG = {}
for inst, cx, Dp, Sp, tp in (
        ("u_sw1", 2200, [-96, 96], [0], [0]),
        ("u_sw2", 3400, [-192, 0, 192], [-96, 96], [0]),
        ("u_sw3", 5000, [-384, -192, 0, 192, 384], [-288, -96, 96, 288],
         [-269, 0, 269]),
        ("u_sw4", 7200, [-768, -576, -384, -192, 0, 192, 384, 576, 768],
         [-672, -480, -288, -96, 96, 288, 480, 672], [-653, 0, 653]),
        ("u_en", 10000, [-768, -576, -384, -192, 0, 192, 384, 576, 768],
         [-672, -480, -288, -96, 96, 288, 480, 672], [-653, 0, 653])):
    SWG[inst] = dict(
        cx=cx,
        D=(cx + min(Dp) - 45, YSW + 150, cx + max(Dp) + 45, YSW + 350),
        S=(cx + min(Sp) - 45, YSW - 350, cx + max(Sp) + 45, YSW - 150),
        G=(cx - 45, YSW + 431, cx + 45, YSW + 531),
        B=(cx + min(tp) - 60, YSW - 602, cx + max(tp) + 60, YSW - 512))
for inst, g in SWG.items():
    net = {"u_sw1": "nd1", "u_sw2": "nd2", "u_sw3": "nd3",
           "u_sw4": "nd4", "u_en": "ncom"}[inst]
    gate = {"u_sw1": "b1", "u_sw2": "b2", "u_sw3": "b3",
            "u_sw4": "b4", "u_en": "en"}[inst]
    drain = "ncom" if inst != "u_en" else "iout"
    CHILD.append(("metal2", drain, *g["D"]))
    CHILD.append(("metal2", net, *g["S"]))
    CHILD.append(("metal2", gate, *g["G"]))
    CHILD.append(("metal2", "VSS", *g["B"]))
# bg_sw1 is unwrapped: raw met1 strips and a bare guard ring.
CHILD += [("metal1", "ncom", 1133, YSW - 400, 1179, YSW + 400),
          ("metal1", "nd0", 1221, YSW - 400, 1267, YSW + 400)]

# --- drain buses.  Verticals on met2, buses on met3: a vertical then
#     crosses the lower buses on a layer they do not occupy.
BUSY = {"nd0": 1600, "nd1": 1760, "nd2": 1920, "nd3": 2080, "nd4": 2240}
DROP = {"nd0": 1600, "nd1": 1800, "nd2": 3500, "nd3": 4500, "nd4": 6200}
for p in range(1, NPOS - 1):
    cx, net = X0 + p * PITCH, LEG[p]
    rect("metal1", net, cx - 252, 1200, cx - 162, 1290)
    rect("via1",   net, cx - 237, 1215, cx - 177, 1275)
    rect("metal2", net, cx - 252, 1200, cx - 162, BUSY[net] + 90)
    rect("via2",   net, cx - 235, BUSY[net] + 17, cx - 179, BUSY[net] + 73)
for net, y in BUSY.items():
    xs = [X0 + p * PITCH - 252 for p in range(1, NPOS - 1) if LEG[p] == net]
    xe = [X0 + p * PITCH - 162 for p in range(1, NPOS - 1) if LEG[p] == net]
    rect("metal3", net, min(min(xs), DROP[net] - 17), y,
                        max(max(xe), DROP[net] + 107), y + 90)
    rect("via2",   net, DROP[net] + 17, y + 17, DROP[net] + 73, y + 73)

# --- bus -> switch source.  The wrapped switches put their bulk bar
#     directly under the source bar, so each vertical rises beside the
#     switch and jogs in horizontally above that bulk bar.
for net, inst in (("nd1", "u_sw1"), ("nd2", "u_sw2"),
                  ("nd3", "u_sw3"), ("nd4", "u_sw4")):
    x, g = DROP[net], SWG[inst]
    rect("metal2", net, x, BUSY[net], x + 90, YSW - 205)
    rect("metal2", net, x, YSW - 295, g["S"][2], YSW - 205)
# nd0 reaches bg_sw1's bare met1 source strip directly.
rect("metal2", "nd0", DROP["nd0"], BUSY["nd0"], DROP["nd0"] + 90, YSW - 220)
rect("metal2", "nd0", 1221, YSW - 310, DROP["nd0"] + 90, YSW - 220)
rect("metal1", "nd0", 1221, YSW - 310, 1311, YSW - 220)
rect("via1",   "nd0", 1236, YSW - 295, 1296, YSW - 235)

# --- ncom: switch drains to the enable source, on met3 above the row.
NCY = 4400
NCX = {"u_sw1": 2273, "u_sw2": 3500, "u_sw3": 5150, "u_sw4": 7400}
rect("metal1", "ncom", 1089, YSW - 310, 1179, YSW - 220)
rect("via1",   "ncom", 1104, YSW - 295, 1164, YSW - 235)
rect("metal2", "ncom", 900, YSW - 310, 1179, YSW - 220)
rect("metal2", "ncom", 900, YSW - 220, 990, NCY + 90)
rect("via2",   "ncom", 917, NCY + 17, 973, NCY + 73)
for inst, x in NCX.items():
    rect("metal2", "ncom", x, SWG[inst]["D"][1], x + 90, NCY + 90)
    rect("via2",   "ncom", x + 17, NCY + 17, x + 73, NCY + 73)
rect("metal2", "ncom", 8300, YSW - 295, 8390, NCY + 90)
rect("via2",   "ncom", 8317, NCY + 17, 8373, NCY + 73)
rect("metal2", "ncom", 8300, YSW - 295, SWG["u_en"]["S"][2], YSW - 205)
rect("metal3", "ncom", 885, NCY, 8390, NCY + 90)

# --- switch bulk: a VSS met2 bus below the row, dropped to the main bus.
SWVY = 2700
rect("metal3", "VSS", 885, SWVY, 11040, SWVY + 90)
for inst in ("u_sw1", "u_sw2", "u_sw3", "u_sw4", "u_en"):
    cx = SWG[inst]["cx"]
    rect("metal2", "VSS", cx - 45, SWVY, cx + 45, SWG[inst]["B"][1])
    rect("via2",   "VSS", cx - 28, SWVY + 17, cx + 28, SWVY + 73)
rect("metal1", "VSS", 1116, 2900, 1214, 3074)
rect("viali",  "VSS", 1130, 3026, 1200, 3060)
rect("via1",   "VSS", 1135, 2920, 1195, 2980)
rect("metal2", "VSS", 1120, SWVY, 1210, 2995)
rect("via2",   "VSS", 1137, SWVY + 17, 1193, SWVY + 73)
rect("metal2", "VSS", 10950, YROW + 45, 11040, SWVY + 90)
rect("via2",   "VSS", 10967, SWVY + 17, 11023, SWVY + 73)

# --- bg_sw1 gate: widen the met1.6 patch to take a via1, then up as b0.
rect("metal1", "b0", 1155, YSW + 432, 1245, YSW + 522)
rect("via1",   "b0", 1170, YSW + 447, 1230, YSW + 507)
rect("metal2", "b0", 1155, YSW + 432, 1245, 4800)

# --- remaining gate signals and iout straight up to the top edge
for gate, inst in (("b1", "u_sw1"), ("b2", "u_sw2"), ("b3", "u_sw3"),
                   ("b4", "u_sw4"), ("en", "u_en")):
    cx = SWG[inst]["cx"]
    rect("metal2", gate, cx - 45, SWG[inst]["G"][3], cx + 45, 4800)
rect("metal2", "iout", SWG["u_en"]["D"][2], YSW + 200, 11200, YSW + 300)

# --- VDD is a port of bias_gen but no device connects to it.
rect("metal2", "VDD", 300, 4600, 600, 4700)

LABELS = [("metal1", "nbias_in", XL + 100, YROW + 455),
          ("metal2", "b0", 1200, 4750), ("metal2", "b1", 2200, 4750),
          ("metal2", "b2", 3400, 4750), ("metal2", "b3", 5000, 4750),
          ("metal2", "b4", 7200, 4750), ("metal2", "en", 10000, 4750),
          ("metal2", "iout", 11100, YSW + 250),
          ("metal2", "VDD", 450, 4650),
          ("metal2", "VSS", X0 - 240, YROW)]

# ------------------------------------------------------------- checks
LAYERS = {"metal1", "metal2", "metal3", "via1", "via2", "viali",
          "psubdiffcont", "locali"}
MINW   = {"via1": 52, "via2": 56, "viali": 34,
          "metal1": 28, "metal2": 28, "metal3": 28, "psubdiffcont": 34,
          "locali": 34}
SPACE  = {"metal1": 28, "metal2": 28, "metal3": 60}
ENC    = {"via1": (("metal1", 15), ("metal2", 15)),
          "via2": (("metal2", 15), ("metal3", 15)),
          "viali": (("metal1", 6),)}

def gap(a, b):
    dx = max(0, a[2] - b[4], b[2] - a[4])
    dy = max(0, a[3] - b[5], b[3] - a[5])
    if dx == 0 and dy == 0:
        return -1.0
    return (dx * dx + dy * dy) ** 0.5 if (dx and dy) else float(max(dx, dy))

for ly, net, x1, y1, x2, y2 in R:
    if ly not in LAYERS:
        err.append(f"unknown layer {ly}")
    if ly in MINW and min(x2 - x1, y2 - y1) < MINW[ly]:
        err.append(f"{ly} {net} painted {x2-x1}x{y2-y1} < {MINW[ly]}")

ALL = R + CHILD

# Same-layer same-net rects that touch are ONE shape to magic, so a 22-unit
# gap between two rects that both abut a third is not a violation.  Merge
# them first, then only compare across distinct shapes.
uf = list(range(len(ALL)))
def find(i):
    while uf[i] != i:
        uf[i] = uf[uf[i]]
        i = uf[i]
    return i
for i in range(len(ALL)):
    for j in range(i + 1, len(ALL)):
        if (ALL[i][0] == ALL[j][0] and ALL[i][1] == ALL[j][1]
                and gap(ALL[i], ALL[j]) < 0):
            ri, rj = find(i), find(j)
            if ri != rj:
                uf[ri] = rj

for i in range(len(ALL)):
    for j in range(i + 1, len(ALL)):
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


boxes = [(inst, abs_bb(cell, tx, ty)) for cell, inst, tx, ty in PLACE]
for (na, a), (nb, b) in itertools.combinations(boxes, 2):
    dx = max(0, a[0] - b[2], b[0] - a[2])
    dy = max(0, a[1] - b[3], b[1] - a[3])
    if dx == 0 and dy == 0:
        err.append(f"OVERLAP {na}/{nb}: {a} {b}")
    elif max(dx, dy) < MARGIN:
        err.append(f"gap {na}/{nb} = {max(dx,dy)} < {MARGIN}")

if err:
    print(f"=== FAIL: {len(err)} ===")
    for e in err[:20]:
        print("  " + e)
    sys.exit(1)

out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
for cell, inst, tx, ty in PLACE:
    bb = abs_bb(cell, tx, ty)
    out += [f"use {cell} {inst}", "timestamp 0",
            f"transform 1 0 {tx} 0 1 {ty}",
            f"box {bb[0]} {bb[1]} {bb[2]} {bb[3]}"]
by = {}
for ly, net, x1, y1, x2, y2 in R:
    by.setdefault(ly, []).append((x1, y1, x2, y2))
for ly in ("psubdiffcont", "viali", "metal1", "via1", "metal2", "via2", "metal3"):
    if ly in by:
        out.append(f"<< {ly} >>")
        out += [f"rect {r[0]} {r[1]} {r[2]} {r[3]}" for r in sorted(by[ly])]
out.append("<< labels >>")
for n, (ly, net, x, y) in enumerate(LABELS, 1):
    out += [f"rlabel {ly} {x} {y} {x} {y} 0 {net}", f"port {n} nsew"]
out += ["<< end >>", ""]
open(OUT, "w").write("\n".join(out))

xs = [b[0] for _, b in boxes] + [b[2] for _, b in boxes]
ys = [b[1] for _, b in boxes] + [b[3] for _, b in boxes]
SP = os.path.join(os.path.dirname(__file__), "..", "..",
                  "bias_gen", "spice", "bias_gen_lvs.spice")
NF = "sky130_fd_pr__nfet_01v8"
sp = ["* bias_gen -- LVS netlist, generated by gen_bias_gen.py.",
      "* Hierarchy and port orders mirror the EXTRACTED layout netlist;",
      "* magic reorders ports per cell, so bg_sw16_w is S G D B while the",
      "* other wrappers are D S G B.",
      "",
      ".subckt bg_n4_l2 D S G VSUBS",
      f"XM0 D G S VSUBS {NF} L=2 W=4 nf=1 m=1",
      ".ends bg_n4_l2",
      "",
      ".subckt bg_sw1 B D S G",
      f"XM0 D G S B {NF} L=0.15 W=4 nf=1 m=1",
      ".ends bg_sw1"]
for nf in (2, 4, 8, 16):
    n = nf + 1
    terms = ["D" if k % 2 == 0 else "S" for k in range(n)]
    names = [f"{t}{k}" for k, t in enumerate(terms)]
    sp += ["", f".subckt bg_sw{nf} B " + " ".join(
               [names[0], "G"] + names[1:])]
    for k in range(nf):
        sp.append(f"XM{k} {names[k]} G {names[k+1]} B {NF} L=0.15 W=4 nf=1 m=1")
    order = "S G D B" if nf == 16 else "D S G B"
    sp += [f".ends bg_sw{nf}", "",
           f".subckt bg_sw{nf}_w {order}",
           "Xu_dev B " + " ".join(["D", "G"] + terms[1:]) + f" bg_sw{nf}",
           f".ends bg_sw{nf}_w"]
sp += ["", ".subckt bias_gen nbias_in b0 b1 b2 b3 b4 en iout VDD VSS"]
for p in range(NPOS):
    d = "VSS" if LEG[p] == "VSS" else LEG[p]
    sp.append(f"Xu{p:02d} {d} VSS nbias_in VSS bg_n4_l2")
sp += ["Xu_sw0 VSS ncom nd0 b0 bg_sw1",
       "Xu_sw1 ncom nd1 b1 VSS bg_sw2_w",
       "Xu_sw2 ncom nd2 b2 VSS bg_sw4_w",
       "Xu_sw3 ncom nd3 b3 VSS bg_sw8_w",
       "Xu_sw4 nd4 b4 ncom VSS bg_sw16_w",
       "Xu_en  ncom en iout VSS bg_sw16_w",
       ".ends bias_gen", ""]
open(os.path.normpath(SP), "w").write("\n".join(sp))
print("=== bias_gen: all stages PASS ===")
print(f"  netlist: {os.path.normpath(SP)}")
print("  rects : " + ", ".join(f"{k} {len(v)}" for k, v in sorted(by.items())))
print(f"  {len(PLACE)} instances  ({NPOS} array units + 6 switches)")
print("  centroids: all five legs on position 16")
print(f"  extent x {min(xs)}..{max(xs)}  y {min(ys)}..{max(ys)}"
      f"   ({(max(xs)-min(xs))/200:.2f} x {(max(ys)-min(ys))/200:.2f} um)")
print(f"  wrote {os.path.normpath(OUT)}")
