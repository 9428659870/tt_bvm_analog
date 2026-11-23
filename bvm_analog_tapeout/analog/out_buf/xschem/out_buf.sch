v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 100 100 0 0 {name=p0 lab=vin}
C {devices/opin.sym} 500 130 0 0 {name=p1 lab=vout}
C {devices/ipin.sym} 100 160 0 0 {name=p2 lab=vbias_n}
C {devices/iopin.sym} 300 190 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 300 220 0 0 {name=p4 lab=VSS}
C {devices/code_shown.sym} 220 100 0 0 {name=SPICE_OUT_BUF only_toplevel=false value="* Two-stage Miller-compensated unity-gain buffer (LVS-matched to out_buf.mag)
XMtail ntail vbias_n VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=1
XM1    n1    vout    ntail VSS sky130_fd_pr__nfet_01v8 w=4 l=1
XM2    n2    vin     ntail VSS sky130_fd_pr__nfet_01v8 w=4 l=1
XM3    n1    n1      VDD   VDD sky130_fd_pr__pfet_01v8 w=4 l=1
XM4    n2    n1      VDD   VDD sky130_fd_pr__pfet_01v8 w=4 l=1
XM7    vout  n2      VDD   VDD sky130_fd_pr__pfet_01v8 w=5 l=0.5 m=4
XM8    vout  vbias_n VSS   VSS sky130_fd_pr__nfet_01v8 w=4 l=1 m=4
XRz    n2    nz      VSS   sky130_fd_pr__res_high_po_0p35 l=4.38
XCc    nz    vout    sky130_fd_pr__cap_mim_m3_1 w=22.17 l=22.17"}
