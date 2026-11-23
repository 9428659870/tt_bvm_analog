# ============================================================
# gen_bg_devices.tcl -- device cells for the bandgap core
#
#   magic -dnull -noconsole -rcfile \
#         $PDK_ROOT/sky130A/libs.tech/magic/sky130A.magicrc \
#         < analog/bandgap/scripts/gen_bg_devices.tcl
#
# THE -rcfile IS REQUIRED. magic boots in minimum.tech, where the
# sky130:: generator procs do not exist, and every mkdev then fails
# with "invalid command name" while still leaving an empty .mag that
# DRCs clean -- a silent zero.
#
# PIPE ON STDIN. A .tcl passed as a trailing argument is taken as a
# cell name to load, and magic then hangs reading the terminal.
#
# Sizes come from bandgap_core.spice after the 2026-11-17 sweep:
#   switches  L=0.15, NMOS W=1.25, TG PMOS W=5
#             -- the 4:1 ratio nulls charge injection on the summing
#                node; W=1.25 is where the temperature spread bottoms
#                out at 0.92 mV (0.6 buys nothing and halves the width)
#   inverters L=0.15, 1/2 -- logic only, phase complements
#   mirror    unit PMOS W=5 L=2, used 9 times as 7 + 1 + diode
#             -- guard 0 so the units share one well and can abut,
#                exactly as unit_p10_l1 does inside mirror_load
#   ref       NMOS W=4 L=4 against the OTA tail's W=16 L=4, giving
#             I1 near 0.5 uA
# ============================================================

drc off
snap internal

set N sky130::sky130_fd_pr__nfet_01v8
set P sky130::sky130_fd_pr__pfet_01v8

proc mkdev {name gen wtot l nf guard} {
    set w [expr {double($wtot) / $nf}]
    set P [${gen}_defaults]
    dict set P w     $w
    dict set P l     $l
    dict set P nf    $nf
    dict set P guard $guard
    # nf>1 leaves the gates unconnected unless this is set; 2 does NOT
    # work -- it uniquifies the labels instead of merging the nets.
    if {$nf > 1} { dict set P conn_gates 1 }
    load $name -silent
    box 0 0 0 0
    if {[catch {${gen}_draw $P} err]} {
        puts "  $name : DRAW FAILED -- $err"
        return
    }
    select top cell
    set b [box values]
    set x0 [lindex $b 0]; set y0 [lindex $b 1]
    set x1 [lindex $b 2]; set y1 [lindex $b 3]
    puts [format "  %-14s Wtot=%-5s w/f=%-5s l=%-5s nf=%s g=%s  bbox %s  (%.2f x %.2f um)" \
          $name $wtot $w $l $nf $guard $b \
          [expr {($x1-$x0)/200.0}] [expr {($y1-$y0)/200.0}]]
    save $name
}

puts "=== bandgap core devices ==="
#      name          gen  Wtot   L     nf guard
mkdev unit_p5_l2    $P   5     2     1  0
mkdev sw_n1p25      $N   1.25  0.15  1  1
mkdev sw_p5         $P   5     0.15  1  1
mkdev inv_n1        $N   1     0.15  1  1
mkdev inv_p2        $P   2     0.15  1  1
mkdev mir_nref      $N   4     4     1  1
puts "=== done ==="
quit
