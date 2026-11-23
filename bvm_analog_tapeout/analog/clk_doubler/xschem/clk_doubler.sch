v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 100 100 0 0 {name=p0 lab=clkin}
C {devices/opin.sym} 500 130 0 0 {name=p1 lab=clkout}
C {devices/ipin.sym} 100 160 0 0 {name=p2 lab=en}
C {devices/ipin.sym} 100 190 0 0 {name=p3 lab=vbias_n}
C {devices/iopin.sym} 300 220 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 300 250 0 0 {name=p5 lab=VSS}
C {devices/code_shown.sym} 220 100 0 0 {name=SPICE_CLK_DOUBLER only_toplevel=false value=".include \"../spice/clk_doubler_lvs.spice\" "}
