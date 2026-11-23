v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/opin.sym} 500 100 0 0 {name=p0 lab=ua0}
C {devices/opin.sym} 500 130 0 0 {name=p1 lab=ua1}
C {devices/opin.sym} 500 160 0 0 {name=p2 lab=ua2}
C {devices/ipin.sym} 100 190 0 0 {name=p3 lab=clk}
C {devices/ipin.sym} 100 220 0 0 {name=p4 lab=ena}
C {devices/ipin.sym} 100 250 0 0 {name=p5 lab=rst_n}
C {devices/ipin.sym} 100 280 0 0 {name=p6 lab=uio0}
C {devices/ipin.sym} 100 310 0 0 {name=p7 lab=uio1}
C {devices/opin.sym} 500 340 0 0 {name=p8 lab=uio2}
C {devices/ipin.sym} 100 370 0 0 {name=p9 lab=uio3}
C {devices/opin.sym} 500 400 0 0 {name=p10 lab=uo0}
C {devices/opin.sym} 500 430 0 0 {name=p11 lab=uo1}
C {devices/iopin.sym} 300 460 0 0 {name=p12 lab=VDPWR}
C {devices/iopin.sym} 300 490 0 0 {name=p13 lab=VGND}
C {devices/code_shown.sym} 220 100 0 0 {name=SPICE_TT_ANALOG_TOP only_toplevel=false value="* ============================================================
* tt_analog_top.spice -- LVS-clean tile-level schematic netlist
*
* Uses the actual laid-out subcircuits from analog/bandgap/layout/
* (resistor_ref, bias_gen, out_buf, pwm_dac, clk_doubler) and
* blackboxes the hardened digital macro (dig_top).
* ============================================================

.include \"../../bandgap/layout/resistor_ref_lvs.spice\"
.include \"../../bandgap/layout/bias_gen_lvs.spice\"
.include \"../../bandgap/layout/out_buf_lvs.spice\"
.include \"../../bandgap/layout/pwm_dac_lvs.spice\"
.include \"../../bandgap/layout/clk_doubler_ext.spice\"

.subckt tt_analog_top
+ ua0 ua1 ua2
+ clk ena rst_n
+ uio0 uio1 uio2 uio3
+ uo0 uo1
+ VDPWR VGND

* ---- Hardened digital macro (blackbox for LVS) -----------------
Xdig
+ clk rst_n ena
+ uio0 uio3 uio1 uio2
+ VDPWR
+ clk clk
+ uo0 uo1
+ bg_en bg_trim3 bg_trim2 bg_trim1 bg_trim0
+ bias_en bias_trim4 bias_trim3 bias_trim2 bias_trim1 bias_trim0
+ dbl_en
+ pwm0_clk_sel pwm1_clk_sel
+ phi1 phi2 cap ota_en i8_en
+ bg_valid bg_ok_combined
+ dig_top

* ---- Supply-referenced current reference -----------------------
Xref nbias_n vref VDPWR VGND resistor_ref

* ---- 5-bit binary-weighted bias generator (iout -> ua[1]) ------
Xbias nbias_n
+     bias_trim0 bias_trim1 bias_trim2 bias_trim3 bias_trim4
+     bias_en ua1 VDPWR VGND bias_gen

* ---- Reference output buffer (vout -> ua[0]) -------------------
Xbuf0 vref ua0 nbias_n VDPWR VGND out_buf

* ---- Clock doubler ---------------------------------------------
Xdbl clk clk2x dbl_en nbias_n VDPWR VGND clk_doubler

* ---- 2-stage RC PWM DAC (vout -> ua[2]) ------------------------
Xdac uo0 ua2 nbias_n VDPWR VGND pwm_dac

.ends tt_analog_top
"}
