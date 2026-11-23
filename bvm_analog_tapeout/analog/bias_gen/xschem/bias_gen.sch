v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 100 100 0 0 {name=p0 lab=nbias_in}
C {devices/ipin.sym} 100 130 0 0 {name=p1 lab=b0}
C {devices/ipin.sym} 100 160 0 0 {name=p2 lab=b1}
C {devices/ipin.sym} 100 190 0 0 {name=p3 lab=b2}
C {devices/ipin.sym} 100 220 0 0 {name=p4 lab=b3}
C {devices/ipin.sym} 100 250 0 0 {name=p5 lab=b4}
C {devices/ipin.sym} 100 280 0 0 {name=p6 lab=en}
C {devices/opin.sym} 500 310 0 0 {name=p7 lab=iout}
C {devices/iopin.sym} 300 340 0 0 {name=p8 lab=VDD}
C {devices/iopin.sym} 300 370 0 0 {name=p9 lab=VSS}
C {devices/code_shown.sym} 220 100 0 0 {name=SPICE_BIAS_GEN only_toplevel=false value="* 5-bit binary-weighted current mirror (LVS-matched to bias_gen.mag)
XM0  nd0  nbias_in VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2 m=1
XM1  nd1  nbias_in VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2 m=2
XM2  nd2  nbias_in VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2 m=4
XM3  nd3  nbias_in VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2 m=8
XM4  nd4  nbias_in VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2 m=16
XMd0 VSS  nbias_in VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2 m=2
XSW0 ncom b0 nd0 VSS sky130_fd_pr__nfet_01v8 w=4 l=0.15 m=1
XSW1 ncom b1 nd1 VSS sky130_fd_pr__nfet_01v8 w=4 l=0.15 m=2
XSW2 ncom b2 nd2 VSS sky130_fd_pr__nfet_01v8 w=4 l=0.15 m=4
XSW3 ncom b3 nd3 VSS sky130_fd_pr__nfet_01v8 w=4 l=0.15 m=8
XSW4 ncom b4 nd4 VSS sky130_fd_pr__nfet_01v8 w=4 l=0.15 m=16
XMEN iout en ncom VSS sky130_fd_pr__nfet_01v8 w=4 l=0.15 m=16"}
