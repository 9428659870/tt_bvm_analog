#!/usr/bin/env python3
"""Strapping wrappers for bias_gen's drain switches.

Third instance of the same problem (see gen_fet_wrap.py, gen_ob_fet_wrap.py):
sky130's FET generator does not tie a multi-finger device's diffusion
contacts together, and the last contact carries no label at all.

Here the family is regular enough to derive rather than tabulate: for nf
fingers there are nf+1 contacts on a 96 pitch, alternating D,S,D,... so
D lands on both ends and the unlabelled one is always on the D side.
Guard ring and gate band are identical across the family:
    gate band  y 432..478   (widened to 531 for a via1)
    strips     y +/-400
    ring       y +/-(540..574),  x +/-(bbox-132) horizontals
                                 x +/-(bbox-36) verticals

bg_sw1 (nf=1) is NOT wrapped: with one finger there is nothing to strap.
It is the only cell in the family that is DRC-dirty, because conn_gates
has no second gate to merge and the contact island stays at 58x46 =
0.067 um^2 against met1.6's 0.083.  The parent patches it.

Verification target is that every finger shares the same four nets and
NO a_<addr># net survives.
"""
import collections, itertools, os, sys

PAD1, TAPM1, V1 = 45, 60, 30
BAR = 100
MINW = {"metal1": 28, "metal2": 28, "via1": 52, "viali": 34}
MIN  = {"metal1": 28, "metal2": 28, "via1": 34, "viali": 34}

FAMILY = {"bg_sw2": (263, 2), "bg_sw4": (359, 4),
          "bg_sw8": (551, 8), "bg_sw16": (935, 16)}


def cfg_for(child, bbox, nf):
    half = nf // 2
    pos = [(k - half) * 96 for k in range(nf + 1)]
    ring_half = bbox - 132
    taps = [0] if ring_half < 300 else [-(ring_half - 150), 0, ring_half - 150]
    return dict(child=child, bb=(-bbox, -610, bbox, 610),
                D=pos[0::2], S=pos[1::2], YD=250, YS=-250,
                gate_m1=(432, 531), gate_vy=481,
                ring_y=(-574, -540), taps=taps)


def build(name, cfg, path):
    L = collections.defaultdict(list)
    def rect(lay, x1, y1, x2, y2):
        assert x2 > x1 and y2 > y1, (lay, x1, y1, x2, y2)
        L[lay].append((x1, y1, x2, y2))
    def pad(lay, xc, yc, hw, hh): rect(lay, xc-hw, yc-hh, xc+hw, yc+hh)

    for xs, yc in ((cfg["D"], cfg["YD"]), (cfg["S"], cfg["YS"])):
        for x in xs:
            pad("metal1", x, yc, PAD1, PAD1)
            pad("via1",   x, yc, V1,   V1)
        rect("metal2", min(xs)-PAD1, yc-BAR, max(xs)+PAD1, yc+BAR)

    g0, g1 = cfg["gate_m1"]
    gv = cfg["gate_vy"]
    rect("metal1", -PAD1, g0, PAD1, g1)
    pad("via1", 0, gv, V1, V1)
    rect("metal2", -PAD1, gv-BAR//2, PAD1, gv+BAR//2)

    r0, r1 = cfg["ring_y"]
    rc = (r0 + r1) // 2
    for x in cfg["taps"]:
        rect("viali", x-PAD1, r0, x+PAD1, r1)
        pad("metal1", x, rc, TAPM1, PAD1)
        pad("via1",   x, rc, V1,   V1)
    rect("metal2", min(cfg["taps"])-TAPM1, rc-PAD1,
                   max(cfg["taps"])+TAPM1, rc+PAD1)

    for lay, rs in L.items():
        for r in rs:
            w = min(r[2]-r[0], r[3]-r[1])
            assert w >= MINW[lay], f"{name}: {lay} width {w} < {MINW[lay]} {r}"
    for v in L["viali"]:
        assert any(m[0] <= v[0]-6 and m[1] <= v[1]-6 and
                   m[2] >= v[2]+6 and m[3] >= v[3]+6 for m in L["metal1"]), \
            f"{name}: viali {v} not enclosed by met1 (met1.4)"
    for v in L["via1"]:
        for need in ("metal1", "metal2"):
            assert any(m[0] <= v[0] and m[1] <= v[1] and
                       m[2] >= v[2] and m[3] >= v[3] for m in L[need]), \
                f"{name}: via1 {v} not on {need}"
    viol = 0
    for lay, rs in L.items():
        for a, b in itertools.combinations(rs, 2):
            dx = max(b[0]-a[2], a[0]-b[2], 0); dy = max(b[1]-a[3], a[1]-b[3], 0)
            if dx == 0 and dy == 0: continue
            g = (dx*dx + dy*dy) ** 0.5
            if g < MIN[lay]:
                print(f"  SPACING {lay}: {g:.1f} < {MIN[lay]}  {a} {b}"); viol += 1
    assert viol == 0, f"{name}: {viol} spacing violations"

    bb = cfg["bb"]
    out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0",
           f"use {cfg['child']} u_dev", "timestamp 0",
           "transform 1 0 0 0 1 0",
           f"box {bb[0]} {bb[1]} {bb[2]} {bb[3]}"]
    for lay in ("viali", "metal1", "via1", "metal2"):
        if L[lay]:
            out.append(f"<< {lay} >>")
            out += [f"rect {r[0]} {r[1]} {r[2]} {r[3]}" for r in L[lay]]
    ports = [("D", "metal2", (cfg["D"][0], cfg["YD"])),
             ("S", "metal2", (cfg["S"][0], cfg["YS"])),
             ("G", "metal2", (0, gv)),
             ("B", "metal2", (cfg["taps"][0], rc))]
    out.append("<< labels >>")
    for i, (nm, lay, (px, py)) in enumerate(ports, 1):
        out += [f"rlabel {lay} {px} {py} {px} {py} 0 {nm}", f"port {i} nsew"]
    out.append("<< end >>")
    open(path, "w").write("\n".join(out) + "\n")
    print(f"{name}: D{len(cfg['D'])} S{len(cfg['S'])} taps{cfg['taps']}  "
          f"{sum(len(v) for v in L.values())} rects  checks passed")


outdir = sys.argv[1] if len(sys.argv) > 1 else "."
for child, (bbox, nf) in FAMILY.items():
    build(child + "_w", cfg_for(child, bbox, nf), f"{outdir}/{child}_w.mag")
