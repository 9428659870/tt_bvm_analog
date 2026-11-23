v {xschem version=3.4.5 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/opin.sym} 500 100 0 0 {name=p0 lab=iout_n}
C {devices/opin.sym} 500 130 0 0 {name=p1 lab=iout_p}
C {devices/iopin.sym} 300 160 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 300 190 0 0 {name=p3 lab=VSS}
C {devices/code_shown.sym} 220 100 0 0 {name=SPICE_RESISTOR_REF only_toplevel=false value="* Supply-referenced current reference (LVS-matched to resistor_ref.mag)
XRset iout_n VDD VSS sky130_fd_pr__res_xhigh_po_0p69 l=414.01001
XMN   iout_n iout_n VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2
XMNm  iout_p iout_n VSS VSS sky130_fd_pr__nfet_01v8 w=4 l=2
XMP   iout_p iout_p VDD VDD sky130_fd_pr__pfet_01v8 w=8 l=2"}
