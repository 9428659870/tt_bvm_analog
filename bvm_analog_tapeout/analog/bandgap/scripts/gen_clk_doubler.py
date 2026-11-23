#!/usr/bin/env python3
"""clk_doubler -- fifth and last analog block.  Emits four leaf cells plus
the top level, and the matching device-level LVS netlist.

WHY LEAF CELLS AND NOT A FLAT TOP.  A bare device's D strip sits at
x cx-67..cx-21 and its gate islands at cx-29..cx+29, so the two overlap
in x: drain and gate cannot both be met1 verticals in one column.
cd_starved_inv settled this -- gate on met1 between the facing islands,
drain on met2 at cx-111..cx-21 with met1 pads + via1 at the strip ends.
Every leaf cell here repeats that pattern, so the top level routes
cell ports instead of re-deriving the escape twelve times.

MET1.6.  An nf=1 L=0.15 gate island is 58 x 46 = 2668 against a 3320
floor, so EVERY island the parent does not merge needs a +/-45 patch
(90 x 46 = 4140).  Clears the D/S strips by 32 (nfet) or 41 (pfet) and
the ring by 62.

BULK TAPS.  Guard rings carry li and no met1, so each ring needs a
painted met1 pad + viali (34 min, 6 enclosure).  Where a device's S is
its own supply, bridge it sideways onto the ring's right vertical at
x cx+141..cx+175 rather than routing it out -- cd_starved_inv's trick.

TOP-LEVEL LAYERS.  met1 = supply rails and gate taps, met2 = drain
escapes, met3 = all long-haul signal lanes (the stage row leaves met1
and met2 fully blocked), met4 = cap top plates only.
1 internal unit = 0.005 um.
"""
import itertools, math, os, re, sys

LAY = os.path.join(os.path.dirname(__file__), "..", "layout")
SPI = os.path.join(os.path.dirname(__file__), "..", "..")

MINW  = {"viali": 34, "via1": 52, "via2": 56, "via3": 64,
         "metal1": 28, "metal2": 28, "metal3": 60, "metal4": 60}
SPACE = {"metal1": 28, "metal2": 28, "metal3": 60, "metal4": 60}
ENC   = {"viali": (("metal1", 6),), "via1": (("metal1", 15), ("metal2", 15)),
         "via2":  (("metal2", 17), ("metal3", 17)),
         "via3":  (("metal3", 18), ("metal4", 18))}
ORDER = ("viali", "metal1", "via1", "metal2", "via2", "metal3", "via3", "metal4")
MINAREA, CAPM_CLR, CAPM_M3 = 3320, 20, 268   # capm.11: 1.34 um to unrelated met3

def gap(a, b):
    dx = max(0, a[2]-b[4], b[2]-a[4]); dy = max(0, a[3]-b[5], b[3]-a[5])
    if dx == 0 and dy == 0: return -1.0
    return math.hypot(dx, dy) if (dx and dy) else float(max(dx, dy))

class Cell:
    def __init__(self, name, bb):
        self.name, self.bb = name, bb
        self.R, self.C, self.U, self.L, self.CAPM = [], [], [], [], []
        self.CI, self.cur = [], None
    def rect(self, lay, net, x1, y1, x2, y2):
        assert x2 > x1 and y2 > y1, (self.name, lay, net, x1, y1, x2, y2)
        self.R.append((lay, net, x1, y1, x2, y2))
    def child(self, lay, net, x1, y1, x2, y2):
        self.C.append((lay, net, x1, y1, x2, y2)); self.CI.append(self.cur)
    def use(self, c, inst, tx, ty, bb):
        self.U.append((c, inst, tx, ty, bb)); self.cur = inst
    def label(self, lay, net, x, y):
        self.L.append((lay, net, x, y))
    def dev(self, cx, cy, W, H, Wx, gx, d, s, g, b):
        """Parametric FET envelope.  Verified against every B label in the
        port dump: cd_p8_l015's B at -966 == (-983 + -949)/2."""
        n = W * 100; t = 21 if gx == 29 else 106
        self.child("metal1", d, cx-t-46, cy-n, cx-t, cy+n)
        self.child("metal1", s, cx+t, cy-n, cx+t+46, cy+n)
        self.child("metal1", g, cx-gx, cy+H-178, cx+gx, cy+H-132)
        self.child("metal1", g, cx-gx, cy-H+132, cx+gx, cy-H+178)
        for r in ((cx-Wx+36, cy-H+132, cx-Wx+70, cy+H-132),
                  (cx+Wx-70, cy-H+132, cx+Wx-36, cy+H-132),
                  (cx-Wx+132, cy+H-70, cx+Wx-132, cy+H-36),
                  (cx-Wx+132, cy-H+36, cx+Wx-132, cy-H+70)):
            self.child("li", b, *r)

    def check(self):
        err = []
        for ly, net, x1, y1, x2, y2 in self.R:
            if ly not in ORDER: err.append(f"unknown layer {ly}")
            if ly in MINW and min(x2-x1, y2-y1) < MINW[ly]:
                err.append(f"{ly} {net} painted {x2-x1}x{y2-y1} < {MINW[ly]}")
        ALL = self.R + self.C
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
        area = {}
        for i, w in enumerate(ALL):
            if w[0] == "metal1":
                area.setdefault(find(i), 0)
                area[find(i)] += (w[4]-w[2]) * (w[5]-w[3])
        for root, a in area.items():
            if a < MINAREA:
                err.append(f"met1.6 {ALL[root][1]} {ALL[root][2:]} area {a} < {MINAREA}")
        for v in self.R:
            if v[0] not in ENC: continue
            for need, m in ENC[v[0]]:
                if not any(w[0] == need and w[1] == v[1] and
                           w[2] <= v[2]-m and w[3] <= v[3]-m and
                           w[4] >= v[4]+m and w[5] >= v[5]+m for w in ALL):
                    err.append(f"{v[0]} {v[1]} {v[2:]} not enclosed by {need}+{m}")
        for v in self.R:
            for cm in self.CAPM:
                g = gap(v, cm)
                if v[0] in ("via2", "via3") and g < CAPM_CLR:
                    err.append(f"capm.8 {v[0]} {v[1]} {v[2:]} within {g:.1f} of capm")
                if v[0] == "metal3" and g < CAPM_M3:
                    err.append(f"capm.11 metal3 {v[1]} {v[2:]} within {g:.1f} of capm")
        INST = [None]*len(self.R) + self.CI
        for ids in {k: [i for i, w in enumerate(ALL)
                        if INST[i] is not None and (INST[i], w[1]) == k]
                    for k in {(INST[i], w[1]) for i, w in enumerate(ALL)
                              if INST[i] is not None}}.values():
            for j in ids[1:]:
                ra, rb = find(ids[0]), find(j)
                if ra != rb: uf[ra] = rb
        VP = {"viali": ("li", "metal1"), "via1": ("metal1", "metal2"),
              "via2": ("metal2", "metal3"), "via3": ("metal3", "metal4")}
        for i, v in enumerate(ALL):
            if v[0] not in VP: continue
            for j, w in enumerate(ALL):
                if w[0] in VP[v[0]] and w[1] == v[1] and gap(v, w) < 0:
                    ra, rb = find(i), find(j)
                    if ra != rb: uf[ra] = rb
        comp = {}
        for i, w in enumerate(ALL):
            comp.setdefault(w[1], set()).add(find(i))
        for net, roots in sorted(comp.items()):
            if len(roots) > 1:
                err.append(f"OPEN net {net}: {len(roots)} disconnected pieces")
        for ly, net, x, y in self.L:
            if not any(w[0] == ly and w[1] == net and
                       w[2] <= x <= w[4] and w[3] <= y <= w[5] for w in self.R):
                err.append(f"label {net} {ly} ({x},{y}) not on parent {ly}")
        for (ca, na, _, _, a), (cb, nb, _, _, b) in itertools.combinations(self.U, 2):
            if a[0] < b[2] and b[0] < a[2] and a[1] < b[3] and b[1] < a[3]:
                err.append(f"OVERLAP {na}/{nb}"); continue
            dx = max(0, a[0]-b[2], b[0]-a[2]); dy = max(0, a[1]-b[3], b[1]-a[3])
            nw = (("_p" in ca) or ca in NWELL) and (("_p" in cb) or cb in NWELL)
            need = 254 if nw else 100
            if max(dx, dy) < need:
                err.append(f"{'nwell.2a' if nw else 'margin'} {na}/{nb}"
                           f" = {max(dx,dy)} < {need}")
        return err

    def write(self):
        by = {}
        for ly, net, x1, y1, x2, y2 in self.R:
            by.setdefault(ly, []).append((x1, y1, x2, y2))
        out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
        for c, i, tx, ty, bb in self.U:
            out += [f"use {c} {i}", "timestamp 0", f"transform 1 0 {tx} 0 1 {ty}",
                    f"box {bb[0]} {bb[1]} {bb[2]} {bb[3]}"]
        for ly in ORDER:
            if ly in by:
                out.append(f"<< {ly} >>")
                out += [f"rect {r[0]} {r[1]} {r[2]} {r[3]}" for r in sorted(by[ly])]
        out.append("<< labels >>")
        for n, (ly, net, x, y) in enumerate(self.L, 1):
            out += [f"rlabel {ly} {x} {y} {x} {y} 0 {net}", f"port {n} nsew"]
        out += ["<< end >>", ""]
        p = os.path.join(LAY, self.name + ".mag")
        open(p, "w").write("\n".join(out))
        return p

NWELL = {"cd_starved_inv", "cd_inv", "cd_obuf", "cd_nand2"}
BB = {"cd_starved_inv": (-211, 590, 1196, 2319), "cd_c40f": (-645, -469, 645, 469),
      "cd_inv": (-211, 590, 211, 2319), "cd_obuf": (-211, 590, 211, 4119),
      "cd_nand2": (-211, 590, 911, 3319), "cd_tg2": (-211, 590, 811, 1700)}

# ---------------------------------------------------------------- leaf cells
def pair_cell(name, pc, nc, Wp, Hp, Wn, Hn, cyp, cyn, ygap, extra_ports=()):
    """One PMOS over one NMOS, gate on met1 between the facing islands,
    drain on met2, both sources bridged onto their own rings."""
    c = Cell(name, BB[name])
    c.use(pc, "u_mp", 0, cyp, (-211, cyp-Hp, 211, cyp+Hp))
    c.dev(0, cyp, Wp, Hp, 211, 29, "y", "VDD", "a", "VDD")
    c.use(nc, "u_mn", 0, cyn, (-211, cyn-Hn, 211, cyn+Hn))
    c.dev(0, cyn, Wn, Hn, 211, 29, "y", "VSS", "a", "VSS")
    gl, gh = cyn+Hn-178, cyp-Hp+178              # facing islands
    c.rect("metal1", "a", -29, gl, 29, gh)
    c.rect("metal1", "a", -45, cyn-Hn+132, 45, cyn-Hn+178)
    c.rect("metal1", "a", -45, cyp+Hp-178, 45, cyp+Hp-132)
    for cy, W in ((cyn, Wn), (cyp, Wp)):
        ym = cy - W*100 + 100 if cy == cyn else cy + W*100 - 100
        c.rect("metal1", "y", -111, ym-45, -21, ym+45)
        c.rect("via1",   "y",  -96, ym-30, -36, ym+30)
    ymn = cyn - Wn*100 + 100; ymp = cyp + Wp*100 - 100
    c.rect("metal2", "y", -111, ymn-45, -21, ymp+45)
    for cy, sup in ((cyp, "VDD"), (cyn, "VSS")):
        c.rect("metal1", sup, 21, cy-45, 200, cy+45)
        c.rect("viali",  sup, 141, cy-28, 175, cy+28)
    c.rect("metal1", "VDD", -74, cyp+Hp-84, 74, cyp+Hp-22)
    c.rect("viali",  "VDD", -60, cyp+Hp-70, 60, cyp+Hp-36)
    c.rect("metal1", "VSS", -74, cyn-Hn+22, 74, cyn-Hn+84)
    c.rect("viali",  "VSS", -60, cyn-Hn+36, 60, cyn-Hn+70)
    c.label("metal1", "a", 0, (gl+gh)//2)
    c.label("metal2", "y", -66, (ymn+ymp)//2)
    c.label("metal1", "VDD", 0, cyp+Hp-53)
    c.label("metal1", "VSS", 0, cyn-Hn+53)
    return c

cd_inv  = pair_cell("cd_inv",  "cd_p2_l015", "cd_n1_l015", 2, 419, 1, 310, 1900,  900, 0)
cd_obuf = pair_cell("cd_obuf", "cd_p8_l015", "cd_n4_l015", 8, 1019, 4, 610, 3100, 1200, 0)

def nand_cell():
    c = Cell("cd_nand2", BB["cd_nand2"])
    cyp, cyn, Hp, Hn, P = 2700, 1200, 619, 610, 700
    for x, g, nd, ns in ((0, "a", "y", "nmid"), (P, "b", "nmid", "VSS")):
        c.use("cd_p4_l015", "u_g1a" if x == 0 else "u_g1b", x, cyp,
              (x-211, cyp-Hp, x+211, cyp+Hp))
        c.dev(x, cyp, 4, Hp, 211, 29, "y", "VDD", g, "VDD")
        c.use("cd_n4_l015", "u_g2a" if x == 0 else "u_g2b", x, cyn,
              (x-211, cyn-Hn, x+211, cyn+Hn))
        c.dev(x, cyn, 4, Hn, 211, 29, nd, ns, g, "VSS")
        c.rect("metal1", g, x-29, cyn+Hn-178, x+29, cyp-Hp+178)
        c.rect("metal1", g, x-45, cyn-Hn+132, x+45, cyn-Hn+178)
        c.rect("metal1", g, x-45, cyp+Hp-178, x+45, cyp+Hp-132)
        c.rect("metal1", "VDD", x+21, cyp-45, x+200, cyp+45)
        c.rect("viali",  "VDD", x+141, cyp-28, x+175, cyp+28)
        c.label("metal1", g, x, (cyn+Hn-178 + cyp-Hp+178)//2)
    for x, y in ((-111, 900), (-111, 2500), (589, 2500)):
        c.rect("metal1", "y", x, y, x+90, y+90)
        c.rect("via1",   "y", x+15, y+15, x+75, y+75)
    c.rect("metal2", "y", -111, 900, -21, 2590)
    c.rect("metal2", "y", -111, 2500, 679, 2590)
    c.rect("metal1", "nmid", 21, 1000, 679, 1090)
    c.rect("metal1", "VSS", P+21, cyn-45, P+200, cyn+45)
    c.rect("viali",  "VSS", P+141, cyn-28, P+175, cyn+28)
    c.rect("metal1", "VDD", -74, cyp+Hp-84, P+74, cyp+Hp-22)
    c.rect("metal1", "VSS", -74, cyn-Hn+22, P+74, cyn-Hn+84)
    for x in (0, P):
        c.rect("viali", "VDD", x-60, cyp+Hp-70, x+60, cyp+Hp-36)
        c.rect("viali", "VSS", x-60, cyn-Hn+36, x+60, cyn-Hn+70)
    c.label("metal2", "y", -66, 1500)
    c.label("metal1", "VDD", P//2, cyp+Hp-53)
    c.label("metal1", "VSS", P//2, cyn-Hn+53)
    return c

def tg_cell():
    """Two pass NMOS sharing D (=nxor) on met2.  Each gate reaches only its
    TOP island: joining both islands on met1 would cross the D/S strips,
    whose x range overlaps the island's.  The bottom island still gets its
    met1.6 patch and stays on the same poly."""
    c = Cell("cd_tg2", BB["cd_tg2"])
    cy, H, P = 900, 310, 600
    for x, (s, g) in ((0, ("sa", "ga")), (P, ("sb", "gb"))):
        c.use("cd_n1_l015", "u_tg1a" if x == 0 else "u_tg1b", x, cy,
              (x-211, cy-H, x+211, cy+H))
        c.dev(x, cy, 1, H, 211, 29, "y", s, g, "VSS")
        c.rect("metal1", g, x-45, cy-H+132, x+45, cy-H+178)
        c.rect("metal1", g, x-45, cy+H-178, x+45, 1700)
        c.label("metal1", g, x, 1550)
    for x in (-111, 489):
        c.rect("metal1", "y", x, 855, x+90, 945)
        c.rect("via1",   "y", x+15, 870, x+75, 930)
    c.rect("metal2", "y", -111, 855, 579, 945)
    c.rect("metal1", "sa", 21, 855, 300, 945)
    c.rect("metal1", "sa", 210, 945, 300, 1700)
    c.rect("metal1", "sb", 621, 855, 800, 945)
    c.rect("metal1", "sb", 710, 945, 800, 1700)
    c.rect("metal1", "VSS", -74, cy-H+22, P+79, cy-H+84)
    for x in (0, P):
        c.rect("viali", "VSS", x-60, cy-H+36, x+60, cy-H+70)
    c.label("metal2", "y", -66, 900)
    c.label("metal1", "sa", 255, 1550)
    c.label("metal1", "sb", 755, 1550)
    c.label("metal1", "VSS", 300, cy-H+53)
    return c

cd_nand2, cd_tg2 = nand_cell(), tg_cell()
LEAF = {"cd_inv": cd_inv, "cd_obuf": cd_obuf, "cd_nand2": cd_nand2, "cd_tg2": cd_tg2}

# cd_starved_inv was built by gen_cd_starved_inv.py; its geometry is fixed.
SINV_R = [("metal1","y",-111,820,-21,910), ("metal1","y",-111,1750,-21,1840),
          ("metal1","VSS",-74,612,1014,674), ("metal1","VDD",-74,2235,1014,2297),
          ("metal1","a",-45,722,45,768), ("metal1","a",-45,2141,45,2187),
          ("metal1","a",-29,1032,29,1659), ("metal1","nn",67,870,748,960),
          ("metal1","np",67,1850,748,1940), ("metal1","vbn",804,1032,996,1659),
          ("metal1","VSS",1006,870,1174,960), ("metal1","VDD",1006,1850,1174,1940),
          ("metal2","y",-111,820,-21,1840)]
SINV_DEV = [(0,1900,2,419,211,29,"y","np","a","VDD"), (0,900,1,310,211,29,"y","nn","a","VSS"),
            (900,1900,2,419,296,96,"np","VDD","vbn","VDD"), (900,900,1,310,296,96,"nn","VSS","vbn","VSS")]
CAP_C = [("metal3","C2",-645,-469,645,469), ("metal4","C1",-566,-390,214,390),
         ("metal4","C2",545,-457,641,457)]
CAP_CAPM = (-605, -429, 253, 429)

# ---------------------------------------------------------------- top level
top = Cell("clk_doubler", (-245, -800, 11711, 4119))
MAP = {}
def place(cell, inst, tx, ty, nets):
    bb = BB[cell]
    top.use(cell, inst, tx, ty, (bb[0]+tx, bb[1]+ty, bb[2]+tx, bb[3]+ty))
    m = lambda n: nets.get(n, f"{inst}/{n}")
    top.cur = inst
    if cell == "cd_starved_inv":
        for ly, net, x1, y1, x2, y2 in SINV_R:
            top.child(ly, m(net), x1+tx, y1+ty, x2+tx, y2+ty)
        for cx, cy, W, H, Wx, gx, d, s, g, b in SINV_DEV:
            top.dev(cx+tx, cy+ty, W, H, Wx, gx, m(d), m(s), m(g), m(b))
    elif cell == "cd_c40f":
        for ly, net, x1, y1, x2, y2 in CAP_C:
            top.child(ly, m(net), x1+tx, y1+ty, x2+tx, y2+ty)
        top.CAPM.append(("capm", m("C1"), CAP_CAPM[0]+tx, CAP_CAPM[1]+ty,
                         CAP_CAPM[2]+tx, CAP_CAPM[3]+ty))
    else:
        lc = LEAF[cell]
        for ly, net, x1, y1, x2, y2 in lc.R + lc.C:
            top.child(ly, m(net), x1+tx, y1+ty, x2+tx, y2+ty)

SUP = {"VDD": "VDD", "VSS": "VSS"}
CH = ["clkin", "nd1", "nd2", "nd3", "ndly"]
for k in range(4):
    place("cd_starved_inv", f"u_d{k+1}", 1700*k, 0,
          dict(SUP, a=CH[k], y=CH[k+1], vbn="vbias_n"))
    place("cd_c40f", f"u_cd{k+1}", 1700*k+400, -200, {"C1": CH[k+1], "C2": "VSS"})
place("cd_inv", "u_inv1", 7000, 0, dict(SUP, a="clkin", y="nclk"))
place("cd_inv", "u_inv2", 7700, 0, dict(SUP, a="ndly", y="ndlyb"))
place("cd_tg2", "u_tg", 8600, 0,
      {"y": "nxor", "sa": "ndly", "sb": "ndlyb", "ga": "clkin", "gb": "nclk", "VSS": "VSS"})
place("cd_nand2", "u_nand", 10000, 0, dict(SUP, a="nxor", b="en", y="ngate"))
place("cd_obuf", "u_obuf", 11500, 0, dict(SUP, a="ngate", y="clkout"))

R = top.rect
R("metal1", "VSS", -74, 612, 11574, 674)              # one continuous rail
R("metal1", "VDD", -74, 2235, 7900, 2297)             # stages + both inverters
R("metal1", "VDD", 7810, 2235, 7900, 3297)            # jog up to the NAND
R("metal1", "VDD", 7810, 3235, 9960, 3297)
R("metal1", "VDD", 10740, 3235, 11100, 3297)          # jog up to the buffer
R("metal1", "VDD", 11010, 3235, 11100, 4097)
R("metal1", "VDD", 11010, 4035, 11460, 4097)

R("metal3", "vbias_n", -200, 1355, 6045, 1445)
for k in range(4):
    tx = 1700*k
    R("via1",   "vbias_n", tx+870, 1370, tx+930, 1430)
    R("metal2", "vbias_n", tx+855, 1355, tx+945, 1445)
    R("via2",   "vbias_n", tx+872, 1372, tx+928, 1428)
    # cap top plate: met2 down, via2, met3 pad, via3, met4 into C1
    R("metal2", CH[k+1], tx-111, 425, tx-21, 820)
    R("via2",   CH[k+1], tx-94, 520, tx-38, 576)
    R("metal3", CH[k+1], tx-116, 500, tx-16, 680)
    R("via3",   CH[k+1], tx-98, 596, tx-34, 660)
    R("metal4", CH[k+1], tx-116, 150, tx-16, 680)

LANE = {0: (1683, 1773), 1: (2250, 2340), 2: (1683, 1773)}
for k in range(3):
    tx, t1, (lo, hi) = 1700*k, 1700*(k+1), LANE[k]
    net = CH[k+1]
    if lo > 1840:                                     # lane above the met2 port
        R("metal2", net, tx-111, 1840, tx-21, hi+20)
    R("via2",   net, tx-94, (lo+hi)//2-28, tx-38, (lo+hi)//2+28)
    R("metal3", net, tx-111, lo, tx-21, hi)
    R("metal3", net, tx-111, lo, t1+195, hi)          # the long run
    R("metal1", net, t1-45, 2141, t1+195, 2187)       # widened `a` top patch
    R("metal1", net, t1+95, 2097, t1+195, 2187)
    R("via1",   net, t1+110, 2112, t1+170, 2172)
    R("metal2", net, t1+95, 2097, t1+195, 2187)
    R("via2",   net, t1+112, 2114, t1+168, 2170)
    R("metal3", net, t1+95, min(2097, lo), t1+195, max(2187, hi))

def tap(net, x, lo, hi, m1=None):
    """met1 pad (optional) -> via1 -> met2 -> via2 -> met3 at lane [lo,hi]."""
    cy = (lo+hi)//2
    if m1: R("metal1", net, *m1)
    R("via1",   net, x+15, cy-30, x+75, cy+30)
    R("metal2", net, x, cy-45, x+90, cy+45)
    R("via2",   net, x+17, cy-28, x+73, cy+28)

R("metal3", "clkin", -200, 1145, 8645, 1245)
tap("clkin", 19,   1145, 1245, (19, 1150, 119, 1240))
tap("clkin", 7019, 1145, 1245, (7019, 1150, 7119, 1240))
tap("clkin", 8555, 1145, 1245)

R("metal3", "ndly", 4989, 1510, 8900, 1610)
R("via2",   "ndly", 5006, 1532, 5062, 1588)
tap("ndly", 7719, 1510, 1610, (7719, 1515, 7819, 1605))
tap("ndly", 8810, 1510, 1610)

R("metal3", "nclk", 6889, 1683, 9245, 1773)
R("via2",   "nclk", 6906, 1700, 6962, 1756)
R("via1",   "nclk", 9170, 1610, 9230, 1670)
R("metal2", "nclk", 9155, 1595, 9245, 1685)
R("via2",   "nclk", 9172, 1612, 9228, 1668)
R("metal3", "nclk", 9155, 1595, 9245, 1773)

R("metal3", "ndlyb", 7589, 1840, 9400, 1940)
R("metal2", "ndlyb", 7589, 1840, 7679, 1960)
R("via2",   "ndlyb", 7606, 1862, 7662, 1918)
R("via1",   "ndlyb", 9325, 1610, 9385, 1670)
R("metal2", "ndlyb", 9310, 1595, 9400, 1685)
R("via2",   "ndlyb", 9327, 1612, 9383, 1668)
R("metal3", "ndlyb", 9310, 1595, 9400, 1940)

R("metal3", "nxor", 8489, 980, 10147, 1080)
R("via2",   "nxor", 8506, 872, 8562, 928)
R("metal3", "nxor", 8489, 855, 8579, 1080)
R("metal1", "nxor", 9971, 1880, 10147, 1980)          # tap in the row channel
R("via1",   "nxor", 10062, 1895, 10122, 1955)
R("metal2", "nxor", 10047, 1880, 10147, 1980)
R("via2",   "nxor", 10064, 1897, 10120, 1953)
R("metal3", "nxor", 10047, 980, 10147, 1980)

R("metal3", "ngate", 9889, 2400, 11607, 2500)
R("via2",   "ngate", 9906, 2422, 9962, 2478)
R("metal1", "ngate", 11471, 1880, 11607, 1980)
R("via1",   "ngate", 11522, 1895, 11582, 1955)
R("metal2", "ngate", 11507, 1880, 11607, 1980)
R("via2",   "ngate", 11524, 1897, 11580, 1953)
R("metal3", "ngate", 11507, 1880, 11607, 2500)

R("metal1", "en", 10671, 1880, 10807, 1980)
R("via1",   "en", 10722, 1895, 10782, 1955)
R("metal2", "en", 10707, 1880, 10807, 1980)
R("via2",   "en", 10724, 1897, 10780, 1953)
R("metal3", "en", 10707, 700, 10807, 1980)

R("metal2", "clkout", 11389, 2150, 11700, 2240)

R("metal4", "VSS", 945, -780, 6500, -700)             # bottom plates, met4 only
for k in range(4):
    R("metal4", "VSS", 1700*k+945, -780, 1700*k+1041, -620)
R("metal1", "VSS", 6400, 612, 6500, 812)              # rail down to that bus
R("via1",   "VSS", 6415, 700, 6485, 770)
R("metal2", "VSS", 6400, -800, 6500, 785)
R("via2",   "VSS", 6417, -783, 6473, -727)
R("metal3", "VSS", 6400, -800, 6500, -620)            # 647 clear of capm
R("via3",   "VSS", 6418, -702, 6482, -638)
R("metal4", "VSS", 6400, -800, 6500, -620)

top.label("metal3", "clkin", -150, 1195)
top.label("metal2", "clkout", 11650, 2195)
top.label("metal3", "en", 10757, 800)
top.label("metal3", "vbias_n", -150, 1400)
top.label("metal1", "VDD", 3000, 2266)
top.label("metal1", "VSS", 3000, 643)

# ---------------------------------------------------------------- run
fail = 0
for c in (cd_inv, cd_obuf, cd_nand2, cd_tg2, top):
    err = c.check()
    if err:
        fail = 1
        print(f"=== {c.name}: FAIL ({len(err)}) ===")
        for e in err[:14]: print("   " + e)
    else:
        print(f"=== {c.name}: checks PASS -> {os.path.basename(c.write())}")
if fail: sys.exit(1)

# ---------------------------------------------------------------- LVS netlist
# magic's extracted port order is NOT the .mag label order: cd_starved_inv
# comes out "y vbn a VDD VSS" from labels "a y vbn VDD VSS".  So read the
# order out of the extraction and emit against it.  Same class of bug as
# bg_sw16_w, which extracted S G D B while its siblings were D S G B.
FET = {"cd_p2_l015": ("p", 2, 0.15), "cd_n1_l015": ("n", 1, 0.15),
       "cd_p4_l015": ("p", 4, 0.15), "cd_n4_l015": ("n", 4, 0.15),
       "cd_p8_l015": ("p", 8, 0.15), "cd_p2_l1": ("p", 2, 1),
       "cd_n1_l1":  ("n", 1, 1)}
LBL = {"cd_c40f": ["C2", "C1"], "cd_starved_inv": ["a", "y", "vbn", "VDD", "VSS"],
       "cd_inv": ["a", "y", "VDD", "VSS"], "cd_obuf": ["a", "y", "VDD", "VSS"],
       "cd_nand2": ["a", "b", "y", "VDD", "VSS"],
       "cd_tg2": ["ga", "gb", "y", "sa", "sb", "VSS"],
       "clk_doubler": ["clkin", "clkout", "en", "vbias_n", "VDD", "VSS"]}
for f in FET: LBL[f] = ["B", "D", "S", "G"]
EXT = {}
ep = os.path.join(LAY, "clk_doubler_ext.spice")
if os.path.exists(ep):
    for l in open(ep):
        m = re.match(r"\.subckt\s+(\S+)\s+(.*)", l)
        if m and m.group(1) in LBL:
            got = m.group(2).split()
            if sorted(got) == sorted(LBL[m.group(1)]): EXT[m.group(1)] = got
def ports(c): return EXT.get(c, LBL[c])

HIER = {
 "cd_starved_inv": [("u_mp","cd_p2_l015",{"B":"VDD","D":"y","S":"np","G":"a"}),
                    ("u_mn","cd_n1_l015",{"B":"VSS","D":"y","S":"nn","G":"a"}),
                    ("u_mps","cd_p2_l1", {"B":"VDD","D":"np","S":"VDD","G":"vbn"}),
                    ("u_mns","cd_n1_l1", {"B":"VSS","D":"nn","S":"VSS","G":"vbn"})],
 "cd_inv":   [("u_mp","cd_p2_l015",{"B":"VDD","D":"y","S":"VDD","G":"a"}),
              ("u_mn","cd_n1_l015",{"B":"VSS","D":"y","S":"VSS","G":"a"})],
 "cd_obuf":  [("u_mp","cd_p8_l015",{"B":"VDD","D":"y","S":"VDD","G":"a"}),
              ("u_mn","cd_n4_l015",{"B":"VSS","D":"y","S":"VSS","G":"a"})],
 "cd_nand2": [("u_g1a","cd_p4_l015",{"B":"VDD","D":"y","S":"VDD","G":"a"}),
              ("u_g1b","cd_p4_l015",{"B":"VDD","D":"y","S":"VDD","G":"b"}),
              ("u_g2a","cd_n4_l015",{"B":"VSS","D":"y","S":"nmid","G":"a"}),
              ("u_g2b","cd_n4_l015",{"B":"VSS","D":"nmid","S":"VSS","G":"b"})],
 "cd_tg2":   [("u_tg1a","cd_n1_l015",{"B":"VSS","D":"y","S":"sa","G":"ga"}),
              ("u_tg1b","cd_n1_l015",{"B":"VSS","D":"y","S":"sb","G":"gb"})]}
TOPI = ([(f"u_d{k+1}", "cd_starved_inv",
          {"a": CH[k], "y": CH[k+1], "vbn": "vbias_n", "VDD": "VDD", "VSS": "VSS"})
         for k in range(4)]
      + [(f"u_cd{k+1}", "cd_c40f", {"C2": "VSS", "C1": CH[k+1]}) for k in range(4)]
      + [("u_inv1", "cd_inv", {"a":"clkin","y":"nclk","VDD":"VDD","VSS":"VSS"}),
         ("u_inv2", "cd_inv", {"a":"ndly","y":"ndlyb","VDD":"VDD","VSS":"VSS"}),
         ("u_tg", "cd_tg2", {"ga":"clkin","gb":"nclk","y":"nxor",
                             "sa":"ndly","sb":"ndlyb","VSS":"VSS"}),
         ("u_nand", "cd_nand2", {"a":"nxor","b":"en","y":"ngate",
                                 "VDD":"VDD","VSS":"VSS"}),
         ("u_obuf", "cd_obuf", {"a":"ngate","y":"clkout","VDD":"VDD","VSS":"VSS"})])

L = ["* clk_doubler_lvs.spice -- device level, mirrors analog/bandgap/layout/.",
     "* Generated by gen_clk_doubler.py; edit that, not this.",
     f"* Port orders taken from {'the extraction' if EXT else 'label order (no .ext yet)'}.",
     ""]
for n, (t, W, Ln) in FET.items():
    L += [f".subckt {n} {' '.join(ports(n))}",
          f"XM0 D G S B sky130_fd_pr__{t}fet_01v8 L={Ln} W={W} nf=1 m=1",
          f".ends {n}"]
L += [f".subckt cd_c40f {' '.join(ports('cd_c40f'))}",
      "XC0 C1 C2 sky130_fd_pr__cap_mim_m3_1 l=4.29 w=4.29", ".ends cd_c40f"]
for cell, insts in HIER.items():
    L.append(f".subckt {cell} {' '.join(ports(cell))}")
    for inst, ch, conn in insts:
        L.append(f"X{inst} {' '.join(conn[q] for q in ports(ch))} {ch}")
    L.append(f".ends {cell}")
L.append(f".subckt clk_doubler {' '.join(ports('clk_doubler'))}")
for inst, ch, conn in TOPI:
    L.append(f"X{inst} {' '.join(conn[q] for q in ports(ch))} {ch}")
L += [".ends clk_doubler", ""]
os.makedirs(os.path.join(SPI, "clk_doubler", "spice"), exist_ok=True)
sp = os.path.join(SPI, "clk_doubler", "spice", "clk_doubler_lvs.spice")
open(sp, "w").write("\n".join(L))
xs = [u[4][0] for u in top.U] + [u[4][2] for u in top.U] + [r[2] for r in top.R] + [r[4] for r in top.R]
ys = [u[4][1] for u in top.U] + [u[4][3] for u in top.U] + [r[3] for r in top.R] + [r[5] for r in top.R]
print(f"\n=== clk_doubler: {len(top.U)} instances, {len(top.R)} parent rects")
print(f"  extent x {min(xs)}..{max(xs)}  y {min(ys)}..{max(ys)}"
      f"   ({(max(xs)-min(xs))/200:.2f} x {(max(ys)-min(ys))/200:.2f} um)")
print(f"  port orders {'from extraction' if EXT else 'from labels'}: "
      + ", ".join(f"{c}=[{' '.join(ports(c))}]" for c in ("cd_starved_inv","cd_tg2","cd_nand2")))
