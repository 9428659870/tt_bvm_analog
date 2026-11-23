#!/usr/bin/env python3
"""Bandgap current mirror: 9 unit_p5_l2 in one well.

Structurally mirror_load with a different unit and count. Four nets:

    vdd   all 9 sources
    npd   all 9 gates AND the diode unit's drain (the diode connection)
    ve    the single always-on unit's drain      -> 1 unit  in phi2
    nx8   the other seven drains, steered        -> 8 units in phi1

The 8:1 current ratio is exact BY UNIT COUNT -- in phi1 the emitter
draws from ve+nx8 = 8 units, in phi2 from ve = 1 -- so it holds only
as well as the units match. The always-on unit therefore sits at the
centre of the eight that conduct. The diode sits at the end: its own
mismatch shifts every mirror equally and cancels in the ratio.

unit_p5_l2 blocks met1 like every other device cell: gate rail at
x +/-196 against terminal strips from +/-206, a 10-unit corridor.
So: no parent met1 routing, only local 90x90 widenings.
"""

import collections, itertools, sys

CHILD, RING = "unit_p5_l2", "nwell_ring_bg"
# nwell_draw is given a LAMBDA box of -250 -550 2600 600, i.e. internal
# -500..5200 x -1100..1200, and grows the well 53 units beyond it.
RING_BB = (-553, -1153, 5253, 1253)
PITCH = 588                         # abutting; nwell.2a is touching_ok
PAT   = ["D", "B", "B", "B", "A", "B", "B", "B", "B"]
BB_HW, BB_HH = 294, 600

TERM_DX, TERM_HW, GATE_HW = 229, 23, 196
RAIL_LO, RAIL_HI = 541, 587
PAD1, PAD3, V1, V2 = 45, 60, 30, 30
YV   = 300                          # drain/source via y, inside +/-500
GVC  = -630                         # gate via centre, below the rail
GW   = (-680, -541)                 # gate met1 widening

B_M2_NPD = (-680, -580)
B_M3_VDD = (-900, -255)
B_M2_VE  = (  700,  800)
B_M3_NX8 = (  900, 1000)

cx       = lambda k: PITCH * k
# NOT mirrored. ota_pair and mirror_load alternate orientation to abut
# sources and interleave two nets; here all nine units are the same
# device in a 1:7 split, so identical orientation avoids any
# orientation-dependent mismatch -- and it spaces the drains evenly,
# which puts the always-on unit within half a pitch of the conducting
# centroid instead of 0.89.
mirrored = lambda k: False

def term_x(k, which):
    off = -TERM_DX if which == "D" else TERM_DX
    return cx(k) + (-off if mirrored(k) else off)

L = collections.defaultdict(list)
def rect(lay, x1, y1, x2, y2):
    assert x2 > x1 and y2 > y1, (lay, x1, y1, x2, y2)
    L[lay].append((x1, y1, x2, y2))
def pad(lay, xc, yc, hw, hh): rect(lay, xc-hw, yc-hh, xc+hw, yc+hh)

src  = [term_x(k, "S") for k in range(len(PAT))]
gat  = [cx(k) for k in range(len(PAT))]
d_D  = [term_x(k, "D") for k, g in enumerate(PAT) if g == "D"]
d_A  = [term_x(k, "D") for k, g in enumerate(PAT) if g == "A"]
d_B  = [term_x(k, "D") for k, g in enumerate(PAT) if g == "B"]
assert len(d_D) == 1 and len(d_A) == 1 and len(d_B) == 7, (d_D, d_A, d_B)

# the single always-on unit against the centroid of the eight conducting
cond = d_A + d_B
off  = abs(d_A[0] - sum(cond)/len(cond)) / PITCH

# ---- vdd: sources down to a met3 plate -------------------------------
for x in src:
    pad("metal1", x, -YV, PAD1, PAD1)
    pad("via1",   x, -YV, V1,   V1)
    pad("metal2", x, -YV, PAD1, PAD1)
    pad("via2",   x, -YV, V2,   V2)
rect("metal3", min(src)-PAD1, B_M3_VDD[0], max(src)+PAD1, B_M3_VDD[1])

# ---- vdd: tie the well ring to the plate -----------------------------
# nwell_draw leaves the ring on li with NO metal, so without this the
# nine wells merge into one floating node and every body extracts as
# u_D0/w_...# instead of vdd. mirror_load does the same thing.
# Ring bottom segment: the box edge +/-17, horizontals inset 43.
RING_LI = (-1117, -1083)
TAPX    = [500, 2400, 4300]
for x in TAPX:
    rect("locali", x-PAD1, RING_LI[0], x+PAD1, RING_LI[1])
    rect("viali",  x-PAD1, RING_LI[0], x+PAD1, RING_LI[1])
    pad("metal1",  x, -1100, 60,   PAD1)      # met1.4 wants >= 6 over li
    pad("via1",    x, -1100, V1,   V1)
    pad("metal2",  x, -1100, PAD1, PAD1)
    pad("via2",    x, -1100, V2,   V2)
rect("metal3", min(TAPX)-70, -1145, max(TAPX)+70, B_M3_VDD[1])

# ---- npd: gate bus, plus the diode drain brought DOWN to it ---------
for x in gat:
    rect("metal1", x-PAD1, GW[0], x+PAD1, GW[1])
    pad("via1",    x, GVC, V1, V1)
dx = d_D[0]
pad("metal1", dx, -YV, PAD1, PAD1)
pad("via1",   dx, -YV, V1,   V1)
rect("metal2", dx-PAD1, B_M2_NPD[1], dx+PAD1, -YV+PAD1)   # down to the bus
rect("metal2", min(dx-PAD1, min(gat)-PAD1), B_M2_NPD[0],
               max(gat)+PAD1, B_M2_NPD[1])

# ---- ve: the one always-on drain, up on met2 ------------------------
pad("metal1", d_A[0], YV, PAD1, PAD1)
pad("via1",   d_A[0], YV, V1,   V1)
rect("metal2", d_A[0]-PAD1, YV-PAD1, d_A[0]+PAD1, B_M2_VE[1])

# ---- nx8: seven drains, up on met3 ----------------------------------
for x in d_B:
    pad("metal1", x, YV, PAD1, PAD1)
    pad("via1",   x, YV, V1,   V1)
    pad("metal2", x, YV, PAD1, PAD1)
    pad("via2",   x, YV, V2,   V2)
# If neighbouring drains ever land closer than 200, 90-wide met3 stubs
# would sit under met3's 60 minimum spacing. They are the SAME net, so
# merge each cluster into one shape instead of spacing them.
_cl = []
for x in sorted(d_B):
    if _cl and x - _cl[-1][-1] < 200:
        _cl[-1].append(x)
    else:
        _cl.append([x])
for grp in _cl:
    rect("metal3", grp[0]-PAD1, YV-PAD1, grp[-1]+PAD1, B_M3_NX8[1])
rect("metal3", min(d_B)-PAD1, B_M3_NX8[0], max(d_B)+PAD1, B_M3_NX8[1])

# ---- checks ---------------------------------------------------------
MINW = {"metal1":28,"metal2":28,"metal3":60,"via1":52,"via2":56,
        "viali":34,"locali":34}
for lay, rs in L.items():
    for r in rs:
        w = min(r[2]-r[0], r[3]-r[1])
        assert w >= MINW[lay], f"{lay} width {w} < {MINW[lay]} at {r}"

for (x1, y1, x2, y2) in L["metal1"]:
    for k in range(len(PAT)):
        gl, gr = cx(k)-GATE_HW, cx(k)+GATE_HW
        for s in (1, -1):
            ry1, ry2 = (RAIL_LO, RAIL_HI) if s > 0 else (-RAIL_HI, -RAIL_LO)
            if y2 <= ry1 or y1 >= ry2: continue
            if max(gl-x2, x1-gr, 0) < 28 and abs((x1+x2)/2 - cx(k)) > 1e-9:
                raise AssertionError(f"met1 {(x1,y1,x2,y2)} near rail {k}")
    hits = [(k,w) for k in range(len(PAT)) for w in ("D","S")
            if x1 < term_x(k,w)+TERM_HW and x2 > term_x(k,w)-TERM_HW
            and y1 < 500 and y2 > -500]
    assert len(hits) <= 1, f"met1 {(x1,y1,x2,y2)} bridges {hits}"

MIN = {"metal1":28,"metal2":28,"metal3":60,"via1":34,"via2":40,
       "viali":34,"locali":34}
chk = {k: list(v) for k, v in L.items()}
for k in range(len(PAT)):
    for (x1,y1,x2,y2) in ((-252,-500,-206,500), (206,-500,252,500),
                          (-196,RAIL_LO,196,RAIL_HI),
                          (-196,-RAIL_HI,196,-RAIL_LO)):
        chk["metal1"].append((x1+PITCH*k, y1, x2+PITCH*k, y2))
viol = 0
for lay, rs in chk.items():
    for a, b in itertools.combinations(rs, 2):
        dx_, dy_ = max(b[0]-a[2], a[0]-b[2], 0), max(b[1]-a[3], a[1]-b[3], 0)
        if dx_ == 0 and dy_ == 0: continue
        g = (dx_*dx_ + dy_*dy_) ** 0.5
        if g < MIN[lay]:
            print(f"  SPACING {lay}: {g:.1f} < {MIN[lay]}  {a} {b}"); viol += 1
assert viol == 0, f"{viol} spacing violations"

# ---- write ----------------------------------------------------------
out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
for k, grp in enumerate(PAT):
    a, c = (-1 if mirrored(k) else 1), cx(k)
    out += [f"use {CHILD} u_{grp}{k}", "timestamp 0",
            f"transform {a} 0 {c} 0 1 0",
            f"box {c-BB_HW} {-BB_HH} {c+BB_HW} {BB_HH}"]
out += [f"use {RING} u_ring", "timestamp 0", "transform 1 0 0 0 1 0",
        f"box {RING_BB[0]} {RING_BB[1]} {RING_BB[2]} {RING_BB[3]}"]
for lay in ("locali","viali","metal1","via1","metal2","via2","metal3"):
    if L[lay]:
        out.append(f"<< {lay} >>")
        out += [f"rect {r[0]} {r[1]} {r[2]} {r[3]}" for r in L[lay]]
ports = [("vdd","metal3",(sum(src)//len(src), sum(B_M3_VDD)//2)),
         ("npd","metal2",(sum(gat)//len(gat), sum(B_M2_NPD)//2)),
         ("ve", "metal2",(d_A[0], B_M2_VE[1]-50)),
         ("nx8","metal3",(sum(d_B)//len(d_B), sum(B_M3_NX8)//2))]
out.append("<< labels >>")
for i, (nm, lay, (px, py)) in enumerate(ports, 1):
    out += [f"rlabel {lay} {int(px)} {py} {int(px)} {py} 0 {nm}", f"port {i} nsew"]
out.append("<< end >>")

path = sys.argv[1] if len(sys.argv) > 1 else "bg_mirror.mag"
open(path, "w").write("\n".join(out) + "\n")

allr = [r for v in L.values() for r in v]
X1, X2 = min(r[0] for r in allr), max(r[2] for r in allr)
print(f"wrote {path}")
print(f"  pattern {' '.join(PAT)}   pitch {PITCH}")
print(f"  vdd  {len(src)} sources")
print(f"  npd  {len(gat)} gates + diode drain at {d_D[0]}")
print(f"  ve   {d_A}   nx8 {d_B}")
print(f"  always-on unit is {off:.2f} pitch off the conducting centroid")
for lay in ("locali","viali","metal1","via1","metal2","via2","metal3"):
    if L[lay]: print(f"  {lay:<8} {len(L[lay]):3d} rects")
print(f"  array x {-BB_HW}..{cx(len(PAT)-1)+BB_HW}   routing x {X1}..{X2}")
print(f"  y {min(r[1] for r in allr)}..{max(r[3] for r in allr)}")
print("  width + spacing + met1 checks passed")
