#!/usr/bin/env python3
"""Strapping wrappers for out_buf's multi-finger devices.

Same problem and same solution as gen_fet_wrap.py: sky130's FET
generator does NOT tie a multi-finger device's diffusion contacts
together.  Each child extracts as four independent devices on nets
D0/S1/D2/S3 plus an UNLABELLED fifth contact; leaving that floating
strands a finger and gives W=15 instead of 20 (or 12 instead of 16).
`conn_gates 1` merges the gates -- the diffusions still need strapping.

Separate from gen_fet_wrap.py because out_buf's devices are shorter:
the diffusion strips span y +/-500 and +/-400, so the strap rows cannot
sit at the +/-700 that script hard-codes.  YD/YS are per-config here.

Contacts alternate D,S,D,S,D across five positions, so the outermost
pair AND the centre are one terminal -- that is why D has three entries
and S has two, and why the unlabelled contact is on the D side.

Verification target is NOT "one device": magic still reports one device
per finger.  It is that every finger shares the same four nets and that
NO a_<addr># net survives.

1 internal unit = 0.005 um.  Painted via1 >= 52 (cut+enclosure).
met1 must overlap an li contact by >= 6 (met1.4).  met1 spacing 28.
"""

import collections, itertools, os, sys

PAD1, TAPM1, V1 = 45, 60, 30
BAR = 100

WRAPS = {
    "ob_xm7": dict(child="ob_p20_l0p5_f4", bb=(-483, -719, 483, 719),
                   D=[-316, 0, 316], S=[-158, 158], YD=300, YS=-300,
                   gate_m1=(541, 640), gate_vy=590,
                   ring_y=(-683, -649), taps=[-250, 0, 250]),
    "ob_xm8": dict(child="ob_n16_l1_f4", bb=(-683, -610, 683, 610),
                   D=[-516, 0, 516], S=[-258, 258], YD=250, YS=-250,
                   gate_m1=(432, 530), gate_vy=481,
                   ring_y=(-574, -540), taps=[-350, 0, 350]),
}

MINW = {"metal1": 28, "metal2": 28, "via1": 52, "viali": 34}
MIN  = {"metal1": 28, "metal2": 28, "via1": 34, "viali": 34}


def build(name, cfg, path):
    L = collections.defaultdict(list)
    def rect(lay, x1, y1, x2, y2):
        assert x2 > x1 and y2 > y1, (lay, x1, y1, x2, y2)
        L[lay].append((x1, y1, x2, y2))
    def pad(lay, xc, yc, hw, hh): rect(lay, xc-hw, yc-hh, xc+hw, yc+hh)

    # --- drain / source straps, on met2: met1 is blocked by the gate
    #     band above and the guard ring below ------------------------
    for xs, yc in ((cfg["D"], cfg["YD"]), (cfg["S"], cfg["YS"])):
        for x in xs:
            pad("metal1", x, yc, PAD1, PAD1)
            pad("via1",   x, yc, V1,   V1)
        rect("metal2", min(xs)-PAD1, yc-BAR, max(xs)+PAD1, yc+BAR)

    # --- gate: the band is only 46 tall, widen it upward -----------
    g0, g1 = cfg["gate_m1"]
    gv = cfg["gate_vy"]
    rect("metal1", -PAD1, g0, PAD1, g1)
    pad("via1",   0, gv, V1, V1)
    rect("metal2", -PAD1, gv-BAR//2, PAD1, gv+BAR//2)

    # --- bulk: taps on the BOTTOM ring, so they never meet the gate
    #     widening at the top ---------------------------------------
    r0, r1 = cfg["ring_y"]
    rc = (r0 + r1) // 2
    for x in cfg["taps"]:
        rect("viali", x-PAD1, r0, x+PAD1, r1)
        pad("metal1", x, rc, TAPM1, PAD1)
        pad("via1",   x, rc, V1,   V1)
    rect("metal2", min(cfg["taps"])-TAPM1, rc-PAD1,
                   max(cfg["taps"])+TAPM1, rc+PAD1)

    # --- checks ----------------------------------------------------
    for lay, rs in L.items():
        for r in rs:
            w = min(r[2]-r[0], r[3]-r[1])
            assert w >= MINW[lay], f"{name}: {lay} width {w} < {MINW[lay]} {r}"
    for v in L["viali"]:
        assert any(m[0] <= v[0]-6 and m[1] <= v[1]-6 and
                   m[2] >= v[2]+6 and m[3] >= v[3]+6 for m in L["metal1"]), \
            f"{name}: viali {v} not enclosed by met1 (met1.4)"
    for v in L["via1"]:
        assert any(m[0] <= v[0] and m[1] <= v[1] and
                   m[2] >= v[2] and m[3] >= v[3] for m in L["metal1"]), \
            f"{name}: via1 {v} not on met1"
        assert any(m[0] <= v[0] and m[1] <= v[1] and
                   m[2] >= v[2] and m[3] >= v[3] for m in L["metal2"]), \
            f"{name}: via1 {v} not on met2"
    viol = 0
    for lay, rs in L.items():
        for a, b in itertools.combinations(rs, 2):
            dx = max(b[0]-a[2], a[0]-b[2], 0); dy = max(b[1]-a[3], a[1]-b[3], 0)
            if dx == 0 and dy == 0: continue
            g = (dx*dx + dy*dy) ** 0.5
            if g < MIN[lay]:
                print(f"  SPACING {lay}: {g:.1f} < {MIN[lay]}  {a} {b}"); viol += 1
    assert viol == 0, f"{name}: {viol} spacing violations"

    # --- write -----------------------------------------------------
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

    allr = [r for v in L.values() for r in v]
    print(f"{name}: wrote {os.path.basename(path)}  child {cfg['child']}")
    print(f"  D{cfg['D']} @y{cfg['YD']}   S{cfg['S']} @y{cfg['YS']}   taps {cfg['taps']}")
    print("  " + "  ".join(f"{lay} {len(L[lay])}" for lay in
                           ("viali", "metal1", "via1", "metal2") if L[lay]))
    print(f"  added bbox x {min(r[0] for r in allr)}..{max(r[2] for r in allr)}"
          f"  y {min(r[1] for r in allr)}..{max(r[3] for r in allr)}")
    print("  width + enclosure + spacing checks passed")


outdir = sys.argv[1] if len(sys.argv) > 1 else "."
for nm, cfg in WRAPS.items():
    build(nm, cfg, f"{outdir}/{nm}.mag")
