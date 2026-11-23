v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 100 100 0 0 {name=p0 lab=in0_vref}
C {devices/ipin.sym} 100 130 0 0 {name=p1 lab=in1_ibias}
C {devices/ipin.sym} 100 160 0 0 {name=p2 lab=in2_dac}
C {devices/ipin.sym} 100 190 0 0 {name=p3 lab=in3_clk2x}
C {devices/ipin.sym} 100 220 0 0 {name=p4 lab=sel0}
C {devices/ipin.sym} 100 250 0 0 {name=p5 lab=sel1}
C {devices/opin.sym} 400 160 0 0 {name=p6 lab=mux_out}
C {devices/iopin.sym} 250 100 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 250 250 0 0 {name=p8 lab=VSS}
C {devices/code_shown.sym} 200 150 0 0 {name=SPICE_MUX only_toplevel=false value=".include ../spice/analog_mux.spice"}
