v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 100 100 0 0 {name=p0 lab=pwm_in}
C {devices/opin.sym} 500 130 0 0 {name=p1 lab=vout}
C {devices/ipin.sym} 100 160 0 0 {name=p2 lab=vbias_n}
C {devices/iopin.sym} 300 190 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 300 220 0 0 {name=p4 lab=VSS}
C {devices/code_shown.sym} 220 100 0 0 {name=SPICE_PWM_DAC only_toplevel=false value="* 2-stage RC filter + unity-gain buffer (LVS-matched to pwm_dac.mag)
XR1 pwm_in nf1 VSS sky130_fd_pr__res_xhigh_po_0p69 l=690.01001
XR2 nf1    nf2 VSS sky130_fd_pr__res_xhigh_po_0p69 l=690.01001
XC1a nf1 VSS sky130_fd_pr__cap_mim_m3_1 w=22.17 l=22.17
XC1b nf1 VSS sky130_fd_pr__cap_mim_m3_1 w=22.17 l=22.17
XC2a nf2 VSS sky130_fd_pr__cap_mim_m3_1 w=22.17 l=22.17
XC2b nf2 VSS sky130_fd_pr__cap_mim_m3_1 w=22.17 l=22.17
Xbuf nf2 vout vbias_n VDD VSS out_buf"}
