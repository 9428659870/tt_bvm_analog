#!/usr/bin/env python3
"""sc_ota assembly -- STAGE 1: placement only, no routing.

Placing and routing in one step makes every DRC error ambiguous, so
this stage emits instances alone.  Target: DRC 0 and a sane bbox.
Routing is added net by net in stage 2.

Floorplan, VSS at the bottom and VDD at the top, signal left to right:

    left column    XMen -> XMtail -> ota_pair -> mirror_load
    mid column     XM8e -> xm8 -> xm7
    right column   rz_20k, miller_cap

XMen sits directly under XMtail and XM8e under xm8 so that nsw and
n8s stay local -- they carry the full tail / output-sink current and
exist only to be switched, so there is nothing to gain by routing
them across the block.

rz_20k and miller_cap sit beside xm7, not off in a corner: they are
the n1 -> nz -> vout compensation path, and stray capacitance on nz
costs exactly what the nulling resistor was added to buy.

1 internal unit = 0.005 um.
"""

import itertools, sys

# bbox of each cell RELATIVE TO ITS OWN ORIGIN (from magic `box`)
BB = {
    "ota_pair":     (-474, -1450, 8174, 1600),
    "mirror_load":  (-501, -1553, 1665, 1553),
    "dev_n16_l4":   (-596, -1810,  596, 1810),
    "dev_n10_l015": (-211, -1210,  211, 1210),
    "xm7":          (-1083, -2219, 1083, 2219),
    "xm8":          (-1025, -4210, 1025, 4210),
    "miller_cap":   (-2134, -1958, 2134, 1958),
    "rz_20k":       (-201, -2750,  201, 2750),
}

CLEAR = 400          # 2.0 um between any two cells; nwell.2a needs 254

# (instance, cell, target bbox lower-left)
PLACE = [
    ("XMen",     "dev_n10_l015",   385,   400),
    ("XMtail",   "dev_n16_l4",       0,  3220),
    ("ota_pair", "ota_pair",         0,  7240),
    ("mload",    "mirror_load",      0, 10690),

    ("XM8e",     "dev_n10_l015",  9900,   400),
    ("xm8",      "xm8",           9048,  3220),
    ("xm7",      "xm7",           9048, 12040),

    ("rz",       "rz_20k",       11614, 10200),
    ("cc",       "miller_cap",   12416, 13541),
]


def run(path):
    boxes = {}
    for inst, cell, tx, ty in PLACE:
        x1, y1, x2, y2 = BB[cell]
        ox, oy = tx - x1, ty - y1                 # translation
        boxes[inst] = (tx, ty, tx + (x2 - x1), ty + (y2 - y1), cell, ox, oy)

    bad = []
    for a, b in itertools.combinations(boxes, 2):
        A, B = boxes[a], boxes[b]
        dx = max(B[0] - A[2], A[0] - B[2], 0)
        dy = max(B[1] - A[3], A[1] - B[3], 0)
        if dx == 0 and dy == 0:
            bad.append((a, b, "OVERLAP"))
        elif max(dx, dy) < CLEAR:
            bad.append((a, b, f"gap {max(dx, dy)} < {CLEAR}"))
    for a, b, why in bad:
        print(f"  !! {a} / {b}: {why}")
    assert not bad, f"{len(bad)} placement problems"

    out = ["magic", "tech sky130A", "magscale 1 2", "timestamp 0"]
    for inst, cell, tx, ty in PLACE:
        x1, y1, x2, y2 = BB[cell]
        ox, oy = tx - x1, ty - y1
        out += [f"use {cell} {inst}", "timestamp 0",
                f"transform 1 0 {ox} 0 1 {oy}",
                f"box {tx} {ty} {tx + (x2-x1)} {ty + (y2-y1)}"]
    # dev_n10_l015's BOTTOM gate rail is 58 x 46 = 0.067 um2, under the
    # 0.083 um2 met1 minimum (met1.6) -- the cell is DRC-dirty on its own
    # because L=0.15 makes its poly contact island tiny.  Top it up from
    # here, extending DOWNWARD: the rail already clears the drain/source
    # strips by only 32 units in y, so widening in x would eat that.
    out.append("<< metal1 >>")
    for inst, cell, tx, ty in PLACE:
        if cell != "dev_n10_l015":
            continue
        x1, y1, _, _ = BB[cell]
        ox, oy = tx - x1, ty - y1
        out.append(f"rect {ox-29} {oy-1110} {ox+29} {oy-1032}")
        out.append(f"rect {ox-29} {oy+1032} {ox+29} {oy+1190}")
        print(f"  met1.6 patch on {inst}: both rails, "
              f"x {ox-29}..{ox+29}, y +/-1032..1110"
              f"  = {58*78*0.000025:.4f} um2 each")
    emit_power(out, boxes)
    out.append("<< end >>")
    open(path, "w").write("\n".join(out) + "\n")

    X1 = min(b[0] for b in boxes.values()); Y1 = min(b[1] for b in boxes.values())
    X2 = max(b[2] for b in boxes.values()); Y2 = max(b[3] for b in boxes.values())
    print(f"wrote {path}   {len(PLACE)} instances")
    for inst in sorted(boxes, key=lambda k: (boxes[k][1], boxes[k][0])):
        b = boxes[inst]
        print(f"  {inst:<9} {b[4]:<13} x {b[0]:6d}..{b[2]:<6d} y {b[1]:6d}..{b[3]:<6d}")
    print(f"  block bbox  x {X1}..{X2}  y {Y1}..{Y2}"
          f"   = {(X2-X1)/200:.2f} x {(Y2-Y1)/200:.2f} um"
          f"   ({(X2-X1)*(Y2-Y1)/40000:.0f} um2)")
    print(f"  min clearance respected: {CLEAR} units ({CLEAR/200:.1f} um)")



# ---------------------------------------------------------------- stage 2a
# Power rails.  The substrate is ONE extracted node, so every psub-tap B
# port (and ota_pair's untapped VSUBS bulks) ties to VSS through a single
# tap.  The nwell bulks are not global: xm7.B is wired in metal, and
# mirror_load taps its own well to its vdd port.

R = []
def _r(lay, x1, y1, x2, y2):
    assert x2 > x1 and y2 > y1, (lay, x1, y1, x2, y2)
    R.append((lay, x1, y1, x2, y2))


def emit_power(out, boxes):
    R.clear()

    # --- VSS: met2 bar at source height, through XMen and XM8e ---------
    # dev_n10_l015 is too narrow for a symmetric widening: its D and S
    # met1 strips are only 42 units apart, so the source pad grows
    # OUTWARD only (local x 21..111, not -45..45).
    for inst in ("XMen", "XM8e"):
        ox, oy = boxes[inst][5], boxes[inst][6]
        _r("metal1", ox+21, oy-45, ox+111, oy+45)
        _r("via1",   ox+46, oy-30, ox+106, oy+30)
    xo = boxes["XMen"][5]; yo = boxes["XMen"][6]
    xe = boxes["XM8e"][5]
    _r("metal2", xo-36, yo-45, xe+147, yo+45)          # the rail itself

    # --- VSS: one substrate tap, on XMtail's ring (the roomiest) -------
    tx, ty = boxes["XMtail"][5], boxes["XMtail"][6]
    TX = tx + 149                                       # 700 abs, clear of G
    _r("viali",  TX-45, ty-1774, TX+45, ty-1740)
    _r("metal1", TX-60, ty-1800, TX+60, ty-1714)        # met1.4: 15/26 over li
    _r("via1",   TX-30, ty-1787, TX+30, ty-1727)
    _r("metal2", TX-60, ty-1800, TX+60, ty-1714)
    _r("via2",   TX-30, yo-30,   TX+30, yo+30)
    _r("metal3", TX-45, yo-45,   TX+45, ty-1714)        # drop, on met3
    _r("via2",   TX-30, ty-1787, TX+30, ty-1727)

    # --- VDD: met4 bar above xm8, below xm7 ----------------------------
    YB0, YB1, YV3 = 11700, 11900, 11800
    _r("metal4", 1000, YB0, 10700, YB1)

    mx, my = boxes["mload"][5], boxes["mload"][6]
    _r("metal3", 1000, my-555, 1200, 11850)             # up from vdd plate
    _r("via3",   1065, YV3-35, 1135, YV3+35)

    px, py = boxes["xm7"][5], boxes["xm7"][6]
    _r("metal3", 9600, 11750, 9800, 12140)              # to xm7.B
    _r("via3",   9665, YV3-35, 9735, YV3+35)
    _r("via2",   9670, py-2196, 9730, py-2136)
    _r("metal3", 10100, 11750, 10300, 13600)            # to xm7.S
    _r("via3",   10165, YV3-35, 10235, YV3+35)
    _r("via2",   10170, py-739, 10230, py-679)

    emit_signals(boxes)          # must precede the emit loop AND the checks

    LAYERS = ("viali", "metal1", "via1", "metal2", "via2",
              "metal3", "via3", "metal4")
    assert set(r[0] for r in R) <= set(LAYERS), \
        f"unemitted layers: {set(r[0] for r in R) - set(LAYERS)}"
    for lay in LAYERS:
        rs = [r for r in R if r[0] == lay]
        if rs:
            out.append(f"<< {lay} >>")
            out += [f"rect {r[1]} {r[2]} {r[3]} {r[4]}" for r in rs]

    out.append("<< labels >>")
    ox_, oy_ = boxes["ota_pair"][5], boxes["ota_pair"][6]
    ex_, ey_ = boxes["XMen"][5], boxes["XMen"][6]
    PORTS = [("VSS",     "metal2", xo+76, yo),
             ("VDD",     "metal4", 5000,  YV3),
             ("vinn",    "metal2", ox_+3850, oy_-1100),
             ("vinp",    "metal3", ox_+3850, oy_+1100),
             ("vout",    "metal2", 11500, 14950),
             ("ota_en",  "metal2", 5000,  ey_+1132),
             ("vbias_n", "metal2", 5000,  6740)]
    for _i, (_n, _l, _x, _y) in enumerate(PORTS, 1):
        out += [f"rlabel {_l} {_x} {_y} {_x} {_y} 0 {_n}", f"port {_i} nsew"]

    # child-cell buses these vias land on, in global coords
    CHILD = []
    CHILD.append(("metal2", px-1083+112, py-2211, px-1083+1855, py-2121))  # xm7.B
    CHILD.append(("metal2", px-503, py-800, px+503, py-600))               # xm7.S
    CHILD.append(("metal3", mx+84, my-1545, mx+1080, my-555))              # mload vdd
    for inst in ("XMen", "XM8e"):
        bx, by = boxes[inst][5], boxes[inst][6]
        CHILD.append(("metal1", bx+21, by-1000, bx+67, by+1000))
    CHILD.append(("locali", tx-464, ty-1774, tx+464, ty-1740))             # XMtail ring
    hx, hy = boxes["xm8"][5], boxes["xm8"][6]
    CHILD.append(("metal2", hx-45, hy-800, hx+45, hy-600))                 # xm8.S
    for _i, _c, _tx, _ty in PLACE:                     # the met1.6 patches
        if _c != "dev_n10_l015":
            continue
        _x1, _y1, _, _ = BB[_c]
        _o1, _o2 = _tx - _x1, _ty - _y1
        CHILD.append(("metal1", _o1-29, _o2-1110, _o1+29, _o2-1032))
        CHILD.append(("metal1", _o1-29, _o2+1032, _o1+29, _o2+1190))
    CHILD.append(("metal1", tx-464, ty+1632, tx+464, ty+1678))             # XMtail gate band
    px_, py_ = boxes["xm7"][5], boxes["xm7"][6]
    CHILD.append(("metal2", px_-45, py_+2040, px_+45, py_+2140))           # xm7.G
    CHILD.append(("metal2", hx-45, hy+4030, hx+45, hy+4130))               # xm8.G
    CHILD.append(("metal2", px_-961, py_+600, px_+961, py_+800))           # xm7.D
    CHILD.append(("metal2", hx-903, hy+600, hx+903, hy+800))               # xm8.D
    rx_, ry_ = boxes["rz"][5], boxes["rz"][6]
    CHILD.append(("metal1", rx_-25, ry_+2157, rx_+25, ry_+2578))           # rz.R1
    CHILD.append(("metal1", rx_-25, ry_-2578, rx_+25, ry_-2157))           # rz.R2
    cx_, cy_ = boxes["cc"][5], boxes["cc"][6]
    CHILD.append(("metal3", cx_-2134, cy_-1958, cx_+2134, cy_+1958))       # cap C2
    CHILD.append(("metal4", cx_-2055, cy_-1879, cx_+1703, cy_+1879))       # cap C1
    CHILD.append(("metal2", ox_-45, oy_-1150, ox_+7745, oy_-1050))         # ota_pair vinn
    CHILD.append(("metal3", ox_+1040, oy_+1050, ox_+6660, oy_+1150))       # ota_pair vinp
    CHILD.append(("metal4", 1958, 10190, 6690, 10290))                     # ota_pair n1
    CHILD.append(("metal1", tx-452, ty-1600, tx-406, ty+1600))             # XMtail.D
    CHILD.append(("metal1", tx+406, ty-1600, tx+452, ty+1600))             # XMtail.S
    for inst in ("XMen", "XM8e"):
        bx, by = boxes[inst][5], boxes[inst][6]
        CHILD.append(("metal1", bx-67, by-1000, bx-21, by+1000))           # D strip

    ALL = R + CHILD
    BELOW = {"viali":"locali", "via1":"metal1", "via2":"metal2", "via3":"metal3"}
    ABOVE = {"viali":"metal1", "via1":"metal2", "via2":"metal3", "via3":"metal4"}
    for lay, x1, y1, x2, y2 in R:
        if lay not in BELOW:
            continue
        for side, want in (("below", BELOW[lay]), ("above", ABOVE[lay])):
            ok = any(c[0] == want and c[1] <= x1 and c[2] <= y1
                     and c[3] >= x2 and c[4] >= y2 for c in ALL)
            assert ok, (f"{lay} at {(x1,y1,x2,y2)} not contained in any "
                        f"{want} ({side})")

    MINW = {"viali":34,"metal1":28,"via1":52,"metal2":28,
            "via2":56,"metal3":60,"via3":64,"metal4":60}
    for lay, x1, y1, x2, y2 in R:
        w = min(x2-x1, y2-y1)
        assert w >= MINW[lay], f"{lay} width {w} < {MINW[lay]} at {(x1,y1,x2,y2)}"
    print(f"  power+signal: {len(R)} rects, "
          f"{sum(1 for r in R if r[0].startswith('via'))} vias")


def emit_signals(boxes):
    """n1a, ntail, nsw, n8s -- the four short/local nets."""
    ox_, oy_ = boxes["ota_pair"][5], boxes["ota_pair"][6]
    tx, ty   = boxes["XMtail"][5],   boxes["XMtail"][6]
    ex, ey   = boxes["XMen"][5],     boxes["XMen"][6]
    sx, sy   = boxes["XM8e"][5],     boxes["XM8e"][6]
    hx, hy   = boxes["xm8"][5],      boxes["xm8"][6]

    # --- n1a: one met2 strap, ota_pair.n1a -> mload.n1a AND mload.pg ---
    # x 840..920 is the only clear lane: mirror_load's VDD source pads end
    # at 805 and its n1 B-drain pads start at 973.
    _r("metal2", 840, oy_+1250, 920, 13593)

    # --- ntail: XMtail diffusion -> ota_pair's met3 tail bus -----------
    _r("metal1", tx-474, 5955, tx-384, 6045)
    _r("via1",   tx-459, 5970, tx-399, 6030)
    _r("metal2", tx-474, 5955, tx-384, 6045)
    _r("via2",   tx-459, 5970, tx-399, 6030)
    _r("metal3", tx-474, 5955, tx-384, 7340)
    _r("metal3", tx-474, 7240, 950,    7340)     # merges with the tail bus

    # --- nsw: XMtail.S -> XMen.D, on met3 to clear the VSS met2 stub ---
    _r("metal1", ex-111, ey+545, ex-21, ey+635)
    _r("via1",   ex-106, ey+560, ex-46, ey+620)
    _r("metal2", ex-111, ey+545, ex-21, ey+635)
    _r("via2",   ex-106, ey+560, ex-46, ey+620)
    _r("metal3", ex-111, ey+545, ex-21, 3650)
    _r("metal3", ex-111, 3550,   tx+496, 3650)
    _r("metal1", tx+406, 3555, tx+496, 3645)
    _r("via1",   tx+421, 3570, tx+481, 3630)
    _r("metal2", tx+406, 3555, tx+496, 3645)
    _r("via2",   tx+421, 3570, tx+481, 3630)

    # --- n8s: XM8e.D -> xm8.S, met3 all the way (xm8's VSS B bar is
    #     met2 and spans the same x, so met2 cannot pass) --------------
    _r("metal1", sx-111, sy+545, sx-21,  sy+635)
    _r("via1",   sx-106, sy+560, sx-46,  sy+620)
    _r("metal2", sx-111, sy+545, sx+9,   sy+635)
    _r("via2",   sx-71,  sy+560, sx-11,  sy+620)
    _r("metal3", sx-83,  sy+545, sx+7,   hy-650)
    _r("via2",   sx-68,  hy-730, sx-8,   hy-670)

    # --- ota_en: XMen.G -> XM8e.G on met2 (met3 at XM8e is n8s) ------
    for bx, by in ((ex, ey), (sx, sy)):
        _r("via1",   bx-27, by+1105, bx+27, by+1159)
        _r("metal2", bx-36, by+1080, bx+36, by+1184)
    _r("metal2", ex-36, ey+1080, sx+36, ey+1184)

    # --- vbias_n: XMtail.G -> xm8.G, routed west of xm8 because its
    #     met2 drain bar spans x 9170..10976 ---------------------------
    _r("metal1", tx-45, 6662, tx+45, 6790)
    _r("via1",   tx-30, 6690, tx+30, 6750)
    _r("metal2", tx-45, 6662, tx+45, 6790)
    _r("metal2", tx-45, 6690, 8900,  6790)
    _r("metal2", 8800,  6690, 8900,  11560)
    _r("metal2", 8800,  11460, hx+45, 11560)

    # --- n1: extend ota_pair's met4 bus east and west ----------------
    rx, ry = boxes["rz"][5], boxes["rz"][6]
    _r("metal4", 1700, 10190, 11900, 10290)
    _r("metal3", rx-60, 10190, rx+60, 10540)            # down to rz.R2
    _r("via3",   rx-35, 10205, rx+35, 10275)
    _r("via2",   rx-30, 10465, rx+30, 10525)
    _r("metal2", rx-45, 10450, rx+45, 10540)
    _r("via1",   rx-30, 10465, rx+30, 10525)
    _r("metal1", rx-45, 10450, rx+45, 10540)
    _r("metal3", 1700, 10190, 1800, 13100)              # up to mload.n1
    _r("via3",   1715, 10205, 1785, 10275)
    _r("metal3", 1100, 13000, 1800, 13100)
    _r("metal4", 11000, 10190, 11100, 16400)            # up to xm7.G
    _r("metal4", 10086, 16300, 11100, 16400)
    _r("via3",   10096, 16315, 10166, 16385)
    _r("metal3", 10071, 16295, 10191, 16405)    # met3.6: 0.33 um2
    _r("via2",   10101, 16319, 10161, 16379)

    # --- nz: rz.R1 -> the cap's met4 top plate -----------------------
    _r("metal1", rx-45, 15250, rx+45, 15340)
    _r("via1",   rx-30, 15265, rx+30, 15325)
    _r("metal2", rx-45, 15250, rx+45, 15340)
    _r("via2",   rx-30, 15265, rx+30, 15325)
    _r("metal3", rx-45, 15250, 12188, 15340)
    _r("via3",   12100, 15260, 12170, 15330)
    _r("metal4", 12080, 15230, 12600, 15360)

    # --- vout: xm8.D / xm7.D east to the cap's met3 bottom plate -----
    _r("metal2", ox_+3805, oy_-1145, ox_+3895, oy_-1055)   # vinn landing
    _r("metal3", ox_+3790, oy_+1045, ox_+3910, oy_+1155)   # vinp landing

    px, py = boxes["xm7"][5], boxes["xm7"][6]
    _r("metal2", 10880, hy+600, 10976, py+800)
    _r("metal2", 10880, 14900, 12420, 15000)
    _r("via2",   12280, 14915, 12350, 14985)
    _r("metal3", 12250, 14900, 12416, 15000)


run(sys.argv[1] if len(sys.argv) > 1 else "sc_ota.mag")
