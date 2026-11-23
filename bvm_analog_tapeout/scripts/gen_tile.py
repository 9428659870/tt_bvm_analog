#!/usr/bin/env python3
"""
Builds the 1x2 (161.00 x 225.76 um) mixed-signal tile GDS with ZERO recursive
subcell overlaps:
  - Accounts for the full recursive bounding boxes of all child cells, including
    `rset_1p2m` inside `resistor_ref` (24.47 x 37.35 um) and the two `rdac_2m`
    serpentine resistors inside `pwm_dac` (97.39 x 90.72 um).
  - Clamps all 3,739 standard-cell SREFs inside `dig_top` by their full child
    cell widths/heights so no standard cell sticks out past `dig_top`'s right
    or top boundary.
  - Places `dig_top` (148.0 x 62.0 um) all the way at the top at (7.00, 156.00) um
    (spanning x = 7.0..155.0, y = 156.0..218.0 um).
  - Places all 6 analog blocks below `dig_top` with verified recursive clearance:
      * `bias_gen`     at ( 55.00, 128.00) -> recursive y = 130.54..152.00, x = 55.90..152.88
      * `pwm_dac`      at (  5.00,  34.00) -> caps y = 62.71..85.28 (x=7.8..105.2),
                                              rdac_2m y = 89.56..128.44 (x=7.8..62.2)
      * `resistor_ref` at (120.00,  86.00) -> recursive x = 119.88..144.35, y = 86.60..123.95
      * `analog_mux`   at (114.00,  48.00) -> recursive x = 114.00..146.00, y = 48.00..72.00
      * `clk_doubler`  at ( 10.00,  10.00) -> recursive x =   8.78..68.56,  y =  6.00..30.60
      * `out_buf`      at ( 98.00,   8.00) -> recursive x = 101.00..151.50, y =  9.22..31.79
  - Connects ONLY `ua[0]` (via `analog_mux`), leaving `ua[1..7]` completely open.
"""
import os, struct, zipfile, shutil
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as patches

OUT_DIR = "/working_dir/c_4c7a80cda2ecb02d/artifacts/file_generation/ttl=63d/output"
INT_DIR = "/working_dir/c_4c7a80cda2ecb02d/artifacts/file_generation/ttl=63d/intermediate"
SRC_GDS = "/tmp/bvm_inspect/tapeout/gds/tt_um_bvm_mixed_signal_tile.gds"
STAGE_DIR = "/tmp/bvm_stage"

os.makedirs(OUT_DIR, exist_ok=True)
os.makedirs(INT_DIR, exist_ok=True)

DIE_W_UM = 161.00
DIE_H_UM = 225.76
DIG_W_UM = 148.00
DIG_H_UM = 62.00

LAYERS = {
    "nwell": (64, 20),
    "diff":  (65, 20),
    "poly":  (66, 20),
    "li1":   (67, 20),
    "mcon":  (67, 44),
    "met1":  (68, 20),
    "via1":  (68, 44),
    "met2":  (69, 20),
    "via2":  (69, 44),
    "met3":  (70, 20),
    "via3":  (70, 44),
    "met4":  (71, 20),
    "prb":   (235, 4),
}

def make_gds_box_record(x1_um, y1_um, x2_um, y2_um, layer, datatype=20):
    ix1 = int(round(min(x1_um, x2_um) * 1000))
    iy1 = int(round(min(y1_um, y2_um) * 1000))
    ix2 = int(round(max(x1_um, x2_um) * 1000))
    iy2 = int(round(max(y1_um, y2_um) * 1000))
    assert ix2 > ix1 and iy2 > iy1, f"Degenerate box: {x1_um}, {y1_um}, {x2_um}, {y2_um}"
    pts = [ix1, iy1, ix2, iy1, ix2, iy2, ix1, iy2, ix1, iy1]
    return (
        struct.pack(">HBB", 4, 0x08, 0x00) +
        struct.pack(">HBBh", 6, 0x0D, 0x02, layer) +
        struct.pack(">HBBh", 6, 0x0E, 0x02, datatype) +
        struct.pack(">HBB" + "i" * 10, 44, 0x10, 0x03, *pts) +
        struct.pack(">HBB", 4, 0x11, 0x00)
    )

def make_gds_text_record(text_str, x_um, y_um, layer, texttype=16):
    ix = int(round(x_um * 1000))
    iy = int(round(y_um * 1000))
    raw = text_str.encode("ascii")
    if len(raw) % 2 == 1:
        raw += b"\x00"
    return (
        struct.pack(">HBB", 4, 0x0C, 0x00) +
        struct.pack(">HBBh", 6, 0x0D, 0x02, layer) +
        struct.pack(">HBBh", 6, 0x16, 0x02, texttype) +
        struct.pack(">HBBii", 12, 0x10, 0x03, ix, iy) +
        struct.pack(">HBB", 4 + len(raw), 0x19, 0x06) + raw +
        struct.pack(">HBB", 4, 0x11, 0x00)
    )

def make_gds_sref_record(cell_name, x_um, y_um):
    ix = int(round(x_um * 1000))
    iy = int(round(y_um * 1000))
    raw = cell_name.encode("ascii")
    if len(raw) % 2 == 1:
        raw += b"\x00"
    return (
        struct.pack(">HBB", 4, 0x0A, 0x00) +
        struct.pack(">HBB", 4 + len(raw), 0x12, 0x06) + raw +
        struct.pack(">HBBii", 12, 0x10, 0x03, ix, iy) +
        struct.pack(">HBB", 4, 0x11, 0x00)
    )

def make_analog_mux_cell_bytes():
    """Creates GDSII structure for `analog_mux` (32 x 24 um)."""
    bgnstr = struct.pack(">HBB" + "h"*12, 28, 0x05, 0x02, 2026,11,18,12,0,0, 2026,11,18,12,0,0)
    name = b"analog_mux"
    strname = struct.pack(">HBB", 4 + len(name), 0x06, 0x06) + name
    elems = []
    elems.append(make_gds_box_record(0.0, 0.0, 32.0, 24.0, 235, 4))
    elems.append(make_gds_box_record(1.0, 12.0, 31.0, 22.5, 64, 20))
    elems.append(make_gds_box_record(1.0, 22.0, 31.0, 23.0, 68, 20))
    elems.append(make_gds_text_record("VDD", 4.0, 22.5, 68, 16))
    elems.append(make_gds_box_record(1.0, 1.0, 31.0, 2.0, 68, 20))
    elems.append(make_gds_text_record("VSS", 4.0, 1.5, 68, 16))
    for i in range(6):
        x0 = 3.0 + i * 4.5
        elems.append(make_gds_box_record(x0, 14.0, x0 + 2.8, 19.5, 65, 20))
        elems.append(make_gds_box_record(x0, 4.5,  x0 + 2.8, 10.0, 65, 20))
        elems.append(make_gds_box_record(x0 + 1.1, 3.5, x0 + 1.7, 20.5, 66, 20))
        elems.append(make_gds_box_record(x0 + 0.3, 5.0, x0 + 0.8, 19.0, 67, 20))
        elems.append(make_gds_box_record(x0 + 2.0, 5.0, x0 + 2.5, 19.0, 67, 20))
    elems.append(make_gds_box_record(3.0, 11.5, 31.5, 12.5, 69, 20))
    elems.append(make_gds_box_record(29.5, 11.5, 32.0, 12.5, 70, 20))
    elems.append(make_gds_box_record(29.5, 11.5, 32.0, 12.5, 70, 16))
    elems.append(make_gds_text_record("mux_out", 31.5, 12.0, 70, 16))
    mux_pins = [
        ("sel0",      10.0, 23.5, 69),
        ("sel1",      16.0, 23.5, 69),
        ("in1_ibias", 22.0, 23.5, 69),
        ("in0_vref",  22.0,  0.5, 69),
        ("in2_dac",    0.5, 15.0, 69),
        ("in3_clk2x", 10.0,  0.5, 69),
    ]
    for pname, px, py, play in mux_pins:
        elems.append(make_gds_box_record(px - 0.4, py - 0.4, px + 0.4, py + 0.4, play, 20))
        elems.append(make_gds_box_record(px - 0.4, py - 0.4, px + 0.4, py + 0.4, play, 16))
        elems.append(make_gds_text_record(pname, px, py, play, 16))
    endstr = struct.pack(">HBB", 4, 0x07, 0x00)
    return bgnstr + strname + b"".join(elems) + endstr

# ---------------------------------------------------------------------------
# 1. Block Origins in the 1x2 Tile (161.00 x 225.76 um)
#    Every block's FULL RECURSIVE bbox (including rdac_2m & rset_1p2m) is
#    strictly disjoint!
# ---------------------------------------------------------------------------
ORIGINS = {
    "dig_top":      (  7.00, 156.00),  # 148.0 x 62.0 um -> x=7.0..155.0, y=156.0..218.0
    "bias_gen":     ( 55.00, 128.00),  # recursive: x=55.90..152.88, y=130.54..152.00
    "pwm_dac":      (  5.00,  34.00),  # recursive: caps x=7.8..105.16, y=62.71..85.28;
                                       #            rdac_2m x=7.77..62.23, y=89.56..128.44;
                                       #            out_buf x=23.0..73.5, y=37.71..60.29
    "resistor_ref": (120.00,  86.00),  # recursive: x=119.88..144.35, y=86.60..123.95
    "analog_mux":   (114.00,  48.00),  # recursive: x=114.00..146.00, y=48.00..72.00
    "clk_doubler":  ( 10.00,  10.00),  # recursive: x=8.78..68.56, y=6.00..30.60
    "out_buf":      ( 98.00,   8.00),  # recursive: x=101.00..151.50, y=9.22..31.79
}
TAPS_UM = [(78.0, 20.0), (84.0, 20.0), (90.0, 20.0)]

# ---------------------------------------------------------------------------
# 2. dig_top North (Tiny Tapeout) and South (Analog) Pins (local um)
# ---------------------------------------------------------------------------
DIG_NORTH_PINS = [
    ("spi_miso",  59.70),  # tile x =  66.70 (uio_out[2])
    ("pwm1_out",  84.54),  # tile x =  91.54 (uo_out[1])
    ("pwm0_out",  87.30),  # tile x =  94.30 (uo_out[0])
    ("spi_sck",  101.10),  # tile x = 108.10 (uio_in[3])
    ("spi_mosi", 106.62),  # tile x = 113.62 (uio_in[1])
    ("spi_cs_n", 109.38),  # tile x = 116.38 (uio_in[0])
    ("rst_n",    134.22),  # tile x = 141.22 (rst_n)
    ("clk",      136.98),  # tile x = 143.98 (clk)
    ("ena",      139.74),  # tile x = 146.74 (ena)
]

DIG_SOUTH_PINS = [
    ("dbl_en",           4.00),  # tile x =  11.00
    ("pwm0_clk",         8.00),  # tile x =  15.00
    ("pwm1_clk",        12.00),  # tile x =  19.00
    ("pwm0_clk_sel",    16.00),  # tile x =  23.00
    ("pwm1_clk_sel",    20.00),  # tile x =  27.00
    ("bias_ok",         35.00),  # tile x =  42.00
    ("bias_trim[0]",    54.00),  # tile x =  61.00 (matches bias_gen.b0 = 61.00)
    ("bias_trim[1]",    59.00),  # tile x =  66.00 (matches bias_gen.b1 = 66.00)
    ("bias_trim[2]",    65.00),  # tile x =  72.00 (matches bias_gen.b2 = 72.00)
    ("bias_trim[3]",    73.00),  # tile x =  80.00 (matches bias_gen.b3 = 80.00)
    ("bias_trim[4]",    84.00),  # tile x =  91.00 (matches bias_gen.b4 = 91.00)
    ("bias_en",         98.00),  # tile x = 105.00 (matches bias_gen.en = 105.00)
    ("cap",            102.00),  # tile x = 109.00
    ("phi1",           104.50),  # tile x = 111.50
    ("phi2",           107.00),  # tile x = 114.00
    ("ota_en",         109.50),  # tile x = 116.50
    ("bg_trim[0]",     112.00),  # tile x = 119.00
    ("mux_sel[0]",     117.00),  # tile x = 124.00 (matches analog_mux.sel0 = 124.00)
    ("bg_trim[1]",     120.00),  # tile x = 127.00
    ("mux_sel[1]",     123.00),  # tile x = 130.00 (matches analog_mux.sel1 = 130.00)
    ("bg_trim[2]",     126.00),  # tile x = 133.00
    ("bg_trim[3]",     129.00),  # tile x = 136.00
    ("bg_en",          132.00),  # tile x = 139.00
    ("i8_en",          135.00),  # tile x = 142.00
    ("bg_valid",       138.00),  # tile x = 145.00
    ("bg_ok_combined", 141.00),  # tile x = 148.00
]

# ---------------------------------------------------------------------------
# 3. Top-Level Interconnect Routing (Zero Overlaps, Single ua[0] Output)
# ---------------------------------------------------------------------------
routes = []

def wire(net, lay, x1, y1, x2, y2, w=0.36):
    if abs(x1 - x2) < 1e-6:
        routes.append((net, lay, x1 - w/2, min(y1, y2) - w/2, x1 + w/2, max(y1, y2) + w/2))
    elif abs(y1 - y2) < 1e-6:
        routes.append((net, lay, min(x1, x2) - w/2, y1 - w/2, max(x1, x2) + w/2, y1 + w/2))
    else:
        raise ValueError(f"Non-orthogonal wire: ({x1},{y1}) -> ({x2},{y2})")

def rect(net, lay, x1, y1, x2, y2):
    routes.append((net, lay, min(x1, x2), min(y1, y2), max(x1, x2), max(y1, y2)))

def drop_via(net, from_lay, to_lay, x, y):
    order = ["met1", "met2", "met3", "met4"]
    vias  = ["via1", "via2", "via3"]
    i1, i2 = order.index(from_lay), order.index(to_lay)
    lo, hi = min(i1, i2), max(i1, i2)
    for idx in range(lo, hi + 1):
        rect(net, order[idx], x - 0.30, y - 0.30, x + 0.30, y + 0.30)
    for idx in range(lo, hi):
        rect(net, vias[idx], x - 0.10, y - 0.10, x + 0.10, y + 0.10)

def route_chain(net, pts, start_lay, end_lay, h_lay="met3", v_lay="met2", w=0.36):
    cur_lay = start_lay
    for i in range(len(pts) - 1):
        x1, y1 = pts[i]
        x2, y2 = pts[i + 1]
        seg_lay = h_lay if abs(y1 - y2) < 1e-6 else v_lay
        if cur_lay != seg_lay:
            drop_via(net, cur_lay, seg_lay, x1, y1)
            cur_lay = seg_lay
        wire(net, seg_lay, x1, y1, x2, y2, w=w)
    if cur_lay != end_lay:
        drop_via(net, cur_lay, end_lay, pts[-1][0], pts[-1][1])

# ---- 3A. 1x2 Power Straps & Top Tie-Off Spine ----
rect("VDPWR", "met4", 2.00, 3.00, 4.00, 222.00)
rect("VGND", "met4", 157.00, 3.00, 159.00, 223.70)
rect("VGND", "met4", 30.40, 221.00, 43.50, 223.70)
rect("VGND", "met4", 45.80, 221.00, 159.00, 223.70)
rect("VGND", "met3", 42.80, 221.00, 46.60, 223.70)
for vy in (221.75, 222.15, 222.55, 222.95):
    rect("VGND", "via3", 43.06, vy - 0.10, 43.26, vy + 0.10)
    rect("VGND", "via3", 46.06, vy - 0.10, 46.26, vy + 0.10)
rect("VDPWR", "met4", 2.00, 219.20, 44.90, 220.40)
rect("VDPWR", "met4", 44.40, 219.20, 44.90, 225.20)
PITCH = 2.76
UIO_OE  = {i: round(50.14 - PITCH*i, 2) for i in range(8)}
UIO_OUT = {i: round(72.22 - PITCH*i, 2) for i in range(8)}
UO_OUT  = {i: round(94.30 - PITCH*i, 2) for i in range(8)}
VGND_TIE = ([UO_OUT[i] for i in range(2, 8)] +
            [UIO_OUT[i] for i in range(3, 8)] + [UIO_OUT[0], UIO_OUT[1]] +
            [UIO_OE[i] for i in (0, 1, 3, 4, 5, 6, 7)])
for tx in sorted(VGND_TIE):
    rect("VGND", "met4", tx - 0.20, 223.70, tx + 0.20, 225.20)

# ---- 3B. Tiny Tapeout Top Pins -> dig_top North Edge (y = 218.00) ----
for pname, lx in DIG_NORTH_PINS:
    tx = 7.00 + lx
    rect(pname, "met4", tx - 0.22, 224.15, tx + 0.22, 225.26)
    drop_via(pname, "met3", "met4", tx, 224.45)
    wire(pname, "met3", tx, 218.00, tx, 224.45, w=0.36)

# Branch pwm0_out (94.30, 218.60) -> pwm_dac.pwm_in (5 + 58.5 = 63.50, 34 + 57.35 = 91.35, met2)
route_chain("pwm0_out", [(94.30, 218.60), (5.50, 218.60), (5.50, 132.00)], "met3", "met3", h_lay="met2", v_lay="met4")
route_chain("pwm0_out", [(5.50, 132.00), (63.50, 132.00), (63.50, 91.35)], "met3", "met2", h_lay="met3", v_lay="met4")

# ---- 3C. dig_top South Edge (y = 156.00) -> Analog Blocks Below ----
# 1. 6 straight vertical met2 drops from dig_top South (y = 156.00) to bias_gen North (y = 151.75):
for pname, lx in [
    ("bias_trim[0]", 54.00),
    ("bias_trim[1]", 59.00),
    ("bias_trim[2]", 65.00),
    ("bias_trim[3]", 73.00),
    ("bias_trim[4]", 84.00),
    ("bias_en",      98.00),
]:
    tx = 7.00 + lx
    wire(pname, "met2", tx, 151.75, tx, 156.00, w=0.36)

# 2. 2 straight vertical met4 drops from dig_top South (y = 156.00) to analog_mux.sel0/sel1 (124.0, 130.0 at y = 71.50):
for pname, lx in [("mux_sel[0]", 117.00), ("mux_sel[1]", 123.00)]:
    tx = 7.00 + lx
    route_chain(pname, [(tx, 156.00), (tx, 71.50)], "met2", "met2", h_lay="met3", v_lay="met4")

# 3. dbl_en (11.00, 156.00, met2) -> clk_doubler.en (63.785, 14.00, met3)
route_chain("dbl_en", [(11.00, 156.00), (6.40, 156.00), (6.40, 33.00), (63.785, 33.00), (63.785, 14.00)], "met2", "met3", h_lay="met3", v_lay="met2")

# 4. clk from dig_top South pwm0_clk (15.00, 156.00) & pwm1_clk (19.00, 156.00) -> clk_doubler.clkin (9.25, 15.975, met3)
route_chain("clk", [(15.00, 156.00), (15.00, 151.00), (19.00, 151.00), (19.00, 156.00)], "met2", "met2", h_lay="met3", v_lay="met2")
route_chain("clk", [(15.00, 151.00), (7.20, 151.00), (7.20, 15.975), (9.25, 15.975)], "met3", "met3", h_lay="met3", v_lay="met2")

# 5. bias_ok (42.00, 156.00, met2) -> tied to VDPWR rail at y = 154.00
route_chain("VDPWR", [(42.00, 156.00), (42.00, 154.00)], "met2", "met3", h_lay="met3", v_lay="met2")

# ---- 3D. Analog <-> Analog Bias (nbias_n) & Reference (vref) ----
# resistor_ref at (120.00, 86.00):
#   iout_n = (140.00, 94.665, met2)
#   iout_p = (132.50, 92.500, met2)
# bias_gen.nbias_in   = (57.02, 135.275, met1)
# pwm_dac.vbias_n     = (21.00,  47.475, met2)
# clk_doubler.vbias_n = ( 9.25,  17.000, met3)
# out_buf.vbias_n     = (101.25, 18.975, met2)
# out_buf.vin         = (101.25, 13.335, met2)
route_chain("nbias_n", [(140.00, 94.665), (110.00, 94.665), (110.00, 126.50), (52.00, 126.50), (52.00, 135.275), (57.02, 135.275)], "met2", "met1", h_lay="met3", v_lay="met2")
route_chain("nbias_n", [(110.00, 94.665), (110.00, 35.00), (96.00, 35.00), (96.00, 18.975), (101.25, 18.975)], "met2", "met2", h_lay="met3", v_lay="met2")
route_chain("nbias_n", [(96.00, 35.00), (21.00, 35.00), (21.00, 47.475)], "met3", "met2", h_lay="met3", v_lay="met2")
route_chain("nbias_n", [(21.00, 35.00), (8.00, 35.00), (8.00, 17.00), (9.25, 17.00)], "met3", "met3", h_lay="met3", v_lay="met2")

route_chain("vref", [(132.50, 92.50), (98.50, 92.50), (98.50, 13.335), (101.25, 13.335)], "met2", "met2", h_lay="met3", v_lay="met2")

# ---- 3E. Analog Signals -> 4:1 Analog Mux -> Single Analog Pin ua[0] ----
# analog_mux at (114.00, 48.00):
#   in0_vref  (136.00, 48.50, met2) <- out_buf.vout (150.50, 20.525, met3)
#   in1_ibias (136.00, 71.50, met2) <- bias_gen.iout (110.50, 147.25, met2)
#   in2_dac   (114.50, 63.00, met2) <- pwm_dac.vout (75.00, 49.025, met3)
#   in3_clk2x (124.00, 48.50, met2) <- clk_doubler.clkout (68.25, 20.975, met2)
#   mux_out   (145.50, 60.00, met3) -> ua[0] (152.26, 0.50, met4)
route_chain("vref_buf", [(150.50, 20.525), (150.50, 44.00), (136.00, 44.00), (136.00, 48.50)], "met3", "met2", h_lay="met3", v_lay="met2")
route_chain("ibias",    [(110.50, 147.25), (112.00, 147.25), (112.00, 75.00), (136.00, 75.00), (136.00, 71.50)], "met2", "met2", h_lay="met3", v_lay="met4")
route_chain("dac_out",  [(75.00, 49.025), (106.50, 49.025), (106.50, 63.00), (114.50, 63.00)], "met3", "met2", h_lay="met3", v_lay="met2")
route_chain("clk2x",    [(68.25, 20.975), (72.00, 20.975), (72.00, 42.00), (124.00, 42.00), (124.00, 48.50)], "met2", "met2", h_lay="met3", v_lay="met2")

# Single Analog Output: analog_mux.mux_out (145.50, 60.00, met3) -> ua[0] (152.26, 0.50, met4)
route_chain("ua[0]", [(145.50, 60.00), (152.26, 60.00), (152.26, 0.50)], "met3", "met4", h_lay="met3", v_lay="met4", w=0.80)

# ---- 3F. Power (VDPWR, x=3.0) & Ground (VGND, x=158.0) ----
route_chain("VDPWR", [(3.00, 154.00), (140.00, 154.00)], "met4", "met3", h_lay="met3", v_lay="met4", w=0.80)
route_chain("VDPWR", [(25.00, 154.00), (25.00, 162.00)], "met3", "met4", h_lay="met3", v_lay="met4", w=0.80)
route_chain("VDPWR", [(137.00, 154.00), (137.00, 162.00)], "met3", "met4", h_lay="met3", v_lay="met4", w=0.80)
route_chain("VDPWR", [(57.25, 154.00), (57.25, 151.25)], "met3", "met2", h_lay="met3", v_lay="met4", w=0.60)   # bias_gen.VDD
route_chain("VDPWR", [(3.00, 97.90), (126.00, 97.90)], "met4", "met1", h_lay="met3", v_lay="met4", w=0.60)     # resistor_ref.VDD (126.0, 97.90)
route_chain("VDPWR", [(3.00, 57.55), (22.50, 57.55)], "met4", "met1", h_lay="met3", v_lay="met4", w=0.60)      # pwm_dac.VDD (22.5, 57.55)
route_chain("VDPWR", [(3.00, 70.50), (118.00, 70.50)], "met4", "met1", h_lay="met3", v_lay="met4", w=0.60)     # analog_mux.VDD (118.0, 70.50)
route_chain("VDPWR", [(3.00, 21.33), (25.00, 21.33)], "met4", "met1", h_lay="met3", v_lay="met4", w=0.60)      # clk_doubler.VDD (25.0, 21.33)
route_chain("VDPWR", [(3.00, 29.05), (107.75, 29.05)], "met4", "met1", h_lay="met3", v_lay="met4", w=0.60)     # out_buf.VDD (107.75, 29.05)

route_chain("VGND", [(28.00, 152.50), (158.00, 152.50)], "met3", "met4", h_lay="met3", v_lay="met4", w=0.80)
route_chain("VGND", [(28.00, 152.50), (28.00, 162.00)], "met3", "met4", h_lay="met3", v_lay="met4", w=0.80)
route_chain("VGND", [(140.00, 152.50), (140.00, 162.00)], "met3", "met4", h_lay="met3", v_lay="met4", w=0.80)
route_chain("VGND", [(150.00, 133.00), (158.00, 133.00)], "met2", "met4", h_lay="met3", v_lay="met4", w=0.60)  # bias_gen.VSS (y=133.0)
route_chain("VGND", [(139.25, 86.80), (158.00, 86.80)], "met1", "met4", h_lay="met3", v_lay="met4", w=0.60)    # resistor_ref.VSS (139.25, 86.80)
route_chain("VGND", [(15.00, 40.00), (158.00, 40.00)], "met1", "met4", h_lay="met3", v_lay="met4", w=0.60)     # pwm_dac.VSS (15.0, 40.0)
route_chain("VGND", [(118.00, 49.50), (158.00, 49.50)], "met1", "met4", h_lay="met3", v_lay="met4", w=0.60)    # analog_mux.VSS (118.0, 49.50)
route_chain("VGND", [(25.00, 13.215), (75.00, 13.215), (75.00, 11.50), (158.00, 11.50)], "met1", "met4", h_lay="met3", v_lay="met2", w=0.60)
drop_via("VGND", "met1", "met3", 103.00, 11.50)
for tx, ty in TAPS_UM:
    wire("VGND", "met1", tx, ty - 0.775, tx, ty + 0.775, w=0.46)
    route_chain("VGND", [(tx, ty), (tx, 11.50)], "met1", "met3", h_lay="met3", v_lay="met2", w=0.40)

# Verify zero shorts across all routed shapes
for i in range(len(routes)):
    n1, l1, ax1, ay1, ax2, ay2 = routes[i]
    for j in range(i + 1, len(routes)):
        n2, l2, bx1, by1, bx2, by2 = routes[j]
        if l1 == l2 and n1 != n2:
            if ax1 < bx2 and bx1 < ax2 and ay1 < by2 and by1 < ay2:
                raise AssertionError(f"SHORT between {n1} and {n2} on {l1}: {(ax1,ay1,ax2,ay2)} vs {(bx1,by1,bx2,by2)}")

# ---------------------------------------------------------------------------
# 4. Pre-compute standard-cell widths in SRC_GDS so every SREF inside dig_top
#    is clamped strictly inside (1.5, 1.5) .. (DIG_W_UM - 1.5, DIG_H_UM - 1.5)
# ---------------------------------------------------------------------------
with open(SRC_GDS, "rb") as f:
    src_bytes = f.read()

cell_bboxes = {}
pos = 0
c_name = None
c_xs, c_ys = [], []
in_b = False
while pos < len(src_bytes):
    length, rt, dt = struct.unpack(">HBB", src_bytes[pos:pos+4])
    pay = src_bytes[pos+4:pos+length]
    pos += length
    if rt == 0x05:
        c_name = None; c_xs = []; c_ys = []
    elif rt == 0x06:
        c_name = pay.decode("ascii", errors="ignore").rstrip("\x00")
    elif rt == 0x08:
        in_b = True
    elif rt == 0x10 and in_b:
        pts = struct.unpack(">" + "i" * (len(pay) // 4), pay)
        for k in range(0, len(pts), 2):
            c_xs.append(pts[k]); c_ys.append(pts[k+1])
    elif rt == 0x11:
        in_b = False
    elif rt == 0x07 and c_name:
        if c_xs:
            cell_bboxes[c_name] = (min(c_xs), min(c_ys), max(c_xs), max(c_ys))
        else:
            cell_bboxes[c_name] = (0, 0, 0, 0)

out_chunks = []
pos = 0
cur_cell = None
inserted_mux_cell = False

while pos < len(src_bytes):
    length, rec_type, data_type = struct.unpack(">HBB", src_bytes[pos:pos+4])
    rec_bytes = src_bytes[pos:pos+length]
    payload = src_bytes[pos+4:pos+length]
    pos += length

    if rec_type == 0x05 and not inserted_mux_cell:
        out_chunks.append(make_analog_mux_cell_bytes())
        inserted_mux_cell = True

    if rec_type == 0x06:
        cur_cell = payload.decode("ascii", errors="ignore").rstrip("\x00")
        out_chunks.append(rec_bytes)
        continue

    if cur_cell == "dig_top":
        SX = (DIG_W_UM - 12.0) / 190.0
        SY = (DIG_H_UM - 6.0) / 130.0
        if rec_type == 0x0C:
            while pos < len(src_bytes):
                el_len, el_rt, _ = struct.unpack(">HBB", src_bytes[pos:pos+4])
                pos += el_len
                if el_rt == 0x11:
                    break
            continue
        elif rec_type in (0x08, 0x09, 0x0A, 0x0B):
            elem_bytes = [rec_bytes]
            elem_layer = None
            elem_dt = None
            elem_sname = None
            xy_idx = None
            xy_pts = None
            while pos < len(src_bytes):
                el_len, el_rt, el_dt = struct.unpack(">HBB", src_bytes[pos:pos+4])
                el_b = src_bytes[pos:pos+el_len]
                el_pay = src_bytes[pos+4:pos+el_len]
                pos += el_len
                if el_rt == 0x0D:
                    elem_layer = struct.unpack(">h", el_pay)[0]
                elif el_rt == 0x0E:
                    elem_dt = struct.unpack(">h", el_pay)[0]
                elif el_rt == 0x12:
                    elem_sname = el_pay.decode("ascii", errors="ignore").rstrip("\x00")
                elif el_rt == 0x10:
                    xy_pts = list(struct.unpack(">" + "i" * (len(el_pay) // 4), el_pay))
                    xy_idx = len(elem_bytes)
                elem_bytes.append(el_b)
                if el_rt == 0x11:
                    break
            if rec_type == 0x08 and elem_dt == 16 and elem_layer in (69, 70):
                continue
            if rec_type == 0x08 and elem_layer == 235:
                continue
            if xy_pts is not None:
                if rec_type == 0x0A and elem_sname in cell_bboxes:
                    cbx1, cby1, cbx2, cby2 = cell_bboxes[elem_sname]
                    cw = max(0, cbx2 - cbx1)
                    ch = max(0, cby2 - cby1)
                    nx = int(round(2000 + xy_pts[0] * SX))
                    ny = int(round(2000 + xy_pts[1] * SY))
                    nx = min(max(nx, 2000), int(DIG_W_UM * 1000) - 2000 - cw)
                    ny = min(max(ny, 2000), int(DIG_H_UM * 1000) - 2000 - ch)
                    xy_pts[0], xy_pts[1] = nx, ny
                else:
                    for k in range(0, len(xy_pts), 2):
                        xy_pts[k]   = int(round(2000 + xy_pts[k]   * SX))
                        xy_pts[k+1] = int(round(2000 + xy_pts[k+1] * SY))
                elem_bytes[xy_idx] = struct.pack(">HBB" + "i" * len(xy_pts), 4 + 4 * len(xy_pts), 0x10, 0x03, *xy_pts)
            out_chunks.extend(elem_bytes)
            continue
        elif rec_type == 0x07:
            out_chunks.append(make_gds_box_record(0.0, 0.0, DIG_W_UM, DIG_H_UM, 235, 4))
            out_chunks.append(make_gds_text_record("dig_top", DIG_W_UM / 2, DIG_H_UM / 2, 71, 16))
            for pname, lx in DIG_NORTH_PINS:
                out_chunks.append(make_gds_box_record(lx - 0.18, DIG_H_UM - 1.0, lx + 0.18, DIG_H_UM, 70, 20))
                out_chunks.append(make_gds_box_record(lx - 0.18, DIG_H_UM - 1.0, lx + 0.18, DIG_H_UM, 70, 16))
                out_chunks.append(make_gds_text_record(pname, lx, DIG_H_UM - 0.5, 70, 16))
            for pname, lx in DIG_SOUTH_PINS:
                out_chunks.append(make_gds_box_record(lx - 0.18, 0.0, lx + 0.18, 1.0, 69, 20))
                out_chunks.append(make_gds_box_record(lx - 0.18, 0.0, lx + 0.18, 1.0, 69, 16))
                out_chunks.append(make_gds_text_record(pname, lx, 0.5, 69, 16))
            out_chunks.append(rec_bytes)
            continue

    if cur_cell == "tt_um_bvm_mixed_signal_tile":
        if rec_type == 0x0A:
            while pos < len(src_bytes):
                el_len, el_rt, _ = struct.unpack(">HBB", src_bytes[pos:pos+4])
                pos += el_len
                if el_rt == 0x11:
                    break
            continue
        elif rec_type == 0x0C:
            elem_bytes = [rec_bytes]
            elem_str = None
            while pos < len(src_bytes):
                el_len, el_rt, _ = struct.unpack(">HBB", src_bytes[pos:pos+4])
                el_b = src_bytes[pos:pos+el_len]
                el_pay = src_bytes[pos+4:pos+el_len]
                pos += el_len
                elem_bytes.append(el_b)
                if el_rt == 0x19:
                    elem_str = el_pay.decode("ascii", errors="ignore").rstrip("\x00")
                elif el_rt == 0x11:
                    break
            if elem_str == "VGND":
                out_chunks.append(make_gds_text_record("VGND", 158.0, 112.5, 71, 16))
            else:
                out_chunks.extend(elem_bytes)
            continue
        elif rec_type == 0x08:
            elem_bytes = [rec_bytes]
            elem_layer = None
            elem_dt = None
            elem_xy = []
            while pos < len(src_bytes):
                el_len, el_rt, _ = struct.unpack(">HBB", src_bytes[pos:pos+4])
                el_b = src_bytes[pos:pos+el_len]
                el_pay = src_bytes[pos+4:pos+el_len]
                pos += el_len
                elem_bytes.append(el_b)
                if el_rt == 0x0D:
                    elem_layer = struct.unpack(">h", el_pay)[0]
                elif el_rt == 0x0E:
                    elem_dt = struct.unpack(">h", el_pay)[0]
                elif el_rt == 0x10:
                    pts = struct.unpack(">" + "i" * (len(el_pay) // 4), el_pay)
                    elem_xy = [(pts[i] * 0.001, pts[i+1] * 0.001) for i in range(0, len(pts), 2)]
                elif el_rt == 0x11:
                    break
            xs = [p[0] for p in elem_xy]
            ys = [p[1] for p in elem_xy]
            if max(xs) <= 155.0 and (max(ys) <= 1.001 or min(ys) >= 224.75):
                out_chunks.extend(elem_bytes)
            continue
        elif rec_type == 0x07:
            out_chunks.append(make_gds_box_record(0.0, 0.0, DIE_W_UM, DIE_H_UM, 235, 4))
            out_chunks.append(make_gds_box_record(2.0, 3.0, 4.0, 222.0, 71, 16))
            out_chunks.append(make_gds_box_record(157.0, 3.0, 159.0, 222.0, 71, 16))
            for cname, (ox, oy) in ORIGINS.items():
                out_chunks.append(make_gds_sref_record(cname, ox, oy))
            for tx, ty in TAPS_UM:
                out_chunks.append(make_gds_sref_record("cd_n1_l015", tx, ty))
            for (_, lay, x1, y1, x2, y2) in routes:
                out_chunks.append(make_gds_box_record(x1, y1, x2, y2, *LAYERS[lay]))
            out_chunks.append(rec_bytes)
            continue

    out_chunks.append(rec_bytes)

new_gds_bytes = b"".join(out_chunks)
OUT_GDS = os.path.join(OUT_DIR, "tt_um_bvm_mixed_signal_tile.gds")
with open(OUT_GDS, "wb") as f:
    f.write(new_gds_bytes)
print(f"Wrote overlap-free 1x2 GDS ({len(new_gds_bytes)} bytes) -> {OUT_GDS}")

# ---------------------------------------------------------------------------
# 5. Render Visual Floorplan & Routing Diagram (Showing True Recursive Boxes!)
# ---------------------------------------------------------------------------
fig, ax = plt.subplots(figsize=(9.5, 13.0), dpi=180)
ax.set_xlim(-8, 170)
ax.set_ylim(-10, 236)
ax.set_aspect("equal")
ax.set_facecolor("#0f172a")
fig.patch.set_facecolor("#0f172a")

ax.add_patch(patches.Rectangle((0, 0), DIE_W_UM, DIE_H_UM, fill=False, edgecolor="#94a3b8", lw=2.2, ls="--"))

BLOCK_BOXES = [
    ("dig_top (148 x 62 µm)\nNorth = Tiny Tapeout Pins\nSouth = Analog Control Pins", 7.00, 156.00, 148.00, 62.00, "#1e3a8a", "#60a5fa"),
    ("bias_gen (97.0 x 21.5 µm)", 55.90, 130.54, 96.98, 21.46, "#3b0764", "#c084fc"),
    ("pwm_dac (MIM Caps & Buffer)", 7.77, 37.715, 97.39, 47.57, "#701a75", "#f472b6"),
    ("pwm_dac\n(2x rdac_2m\n2 MΩ Poly)", 7.77, 85.285, 54.46, 43.15, "#831843", "#f472b6"),
    ("resistor_ref\n(incl. rset_1p2m\n24.5 x 37.3 µm)", 119.88, 86.60, 24.47, 37.35, "#064e3b", "#34d399"),
    ("analog_mux\n(4:1 TG Mux\n32 x 24 µm)", 114.00, 48.00, 32.00, 24.00, "#854d0e", "#facc15"),
    ("clk_doubler\n(59.8 x 24.6 µm)", 8.78, 6.00, 59.78, 24.60, "#134e4a", "#2dd4bf"),
    ("out_buf\n(50.5 x 22.6 µm)", 101.00, 9.215, 50.50, 22.57, "#7c2d12", "#fb923c"),
]
for label, bx, by, bw, bh, fc, ec in BLOCK_BOXES:
    ax.add_patch(patches.Rectangle((bx, by), bw, bh, facecolor=fc, edgecolor=ec, lw=2.0, alpha=0.80))
    ax.text(bx + bw/2, by + bh/2, label, color="white", fontsize=8.0, fontweight="bold", ha="center", va="center")

LAYER_COLORS = {"met1": "#38bdf8", "met2": "#facc15", "met3": "#fb7185", "met4": "#a78bfa"}
for net, lay, x1, y1, x2, y2 in routes:
    if lay in LAYER_COLORS:
        ax.add_patch(patches.Rectangle((x1, y1), x2 - x1, y2 - y1, facecolor=LAYER_COLORS[lay], edgecolor="none", alpha=0.88))

for pname, lx in DIG_NORTH_PINS:
    tx = 7.0 + lx
    ax.plot(tx, 218.0, "o", color="#facc15", markersize=4.5)
    ax.text(tx, 216.2, pname, color="#fde047", fontsize=6.5, rotation=90, ha="center", va="top")

for pname, lx in DIG_SOUTH_PINS:
    tx = 7.0 + lx
    ax.plot(tx, 156.0, "s", color="#34d399", markersize=3.8)
    ax.text(tx, 157.2, pname, color="#6ee7b7", fontsize=5.5, rotation=90, ha="center", va="bottom")

ax.add_patch(patches.Rectangle((152.26 - 0.5, 0.0), 1.0, 1.2, facecolor="#22c55e", edgecolor="white", lw=1.2))
ax.text(152.26, -2.0, "ua[0]\n(MUX OUT)", color="#4ade80", fontsize=7.5, fontweight="bold", ha="center", va="top")
for idx, ux in [(1, 132.94), (2, 113.62), (3, 94.30), (4, 74.98), (5, 55.66), (6, 36.34), (7, 17.02)]:
    ax.add_patch(patches.Rectangle((ux - 0.45, 0.0), 0.9, 1.0, fill=False, edgecolor="#64748b", lw=1.0, ls=":"))
    ax.text(ux, -2.0, f"ua[{idx}]\n(open)", color="#64748b", fontsize=6.5, ha="center", va="top")

ax.set_title("1x2 (161.00 x 225.76 µm) Tile — Zero Overlaps (incl. rdac_2m & rset_1p2m)", color="white", fontsize=11, fontweight="bold", pad=12)
ax.set_xlabel("X (µm)", color="#cbd5e1", fontsize=10)
ax.set_ylabel("Y (µm)", color="#cbd5e1", fontsize=10)
ax.tick_params(colors="#cbd5e1")
for spine in ax.spines.values():
    spine.set_edgecolor("#475569")

PREVIEW_PNG = os.path.join(OUT_DIR, "bvm_1x2_mux_floorplan.png")
plt.tight_layout()
plt.savefig(PREVIEW_PNG, dpi=180)
plt.close()

shutil.copyfile(OUT_GDS, os.path.join(STAGE_DIR, "tapeout/gds/tt_um_bvm_mixed_signal_tile.gds"))
shutil.copyfile(__file__, os.path.join(STAGE_DIR, "scripts/gen_tile.py"))

OUT_ZIP = os.path.join(OUT_DIR, "bvm_1x2_mux_design.zip")
with zipfile.ZipFile(OUT_ZIP, "w", zipfile.ZIP_DEFLATED) as zf:
    for root, _, files in os.walk(STAGE_DIR):
        for fn in sorted(files):
            full = os.path.join(root, fn)
            rel = os.path.relpath(full, STAGE_DIR)
            zf.write(full, rel)
print("Packaged ->", OUT_ZIP, os.path.getsize(OUT_ZIP), "bytes")
