v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 -50 -410 -30 {
lab=QB}
N -410 -180 -410 -160 {
lab=QA}
N -220 90 -220 110 {
lab=VDD}
N -210 -250 -210 -230 {
lab=cp_bias}
C {chargepump.sym} 40 -20 0 0 {name=x1}
C {devices/vsource.sym} -410 0 0 0 {name=V7 value="pulse(0 1.8v 100n 1n 1n 50ns 80ns) " savecurrent=false
}
C {devices/gnd.sym} -410 30 0 0 {name=l9 lab=GND
}
C {devices/lab_wire.sym} -410 -50 0 0 {name=p11 sig_type=std_logic lab=QB}
C {devices/vsource.sym} -410 -130 0 0 {name=V8 value="pulse(0 1.8v 100n 1n 1n 0ns 0ns) " savecurrent=false
}
C {devices/gnd.sym} -410 -100 0 0 {name=l10 lab=GND
}
C {devices/lab_wire.sym} -410 -180 0 0 {name=p12 sig_type=std_logic lab=QA
}
C {devices/vsource.sym} -220 140 0 0 {name=V1 value=1.8 savecurrent=false
}
C {devices/gnd.sym} -220 170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -220 90 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -210 -200 0 0 {name=V9 value=0.9 savecurrent=false
}
C {devices/gnd.sym} -210 -170 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} -210 -250 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/code_shown.sym} 150 -250 0 0 {name=s1 only_toplevel=false value="
*.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 1ns 100ns
.control
run
plot cp_out QA QB cp_bias+2
.endc
.end"}
C {devices/lab_pin.sym} 190 -40 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -110 -40 0 0 {name=p2 lab=cp_bias}
C {devices/lab_pin.sym} -110 -20 0 0 {name=p3 lab=QA}
C {devices/lab_pin.sym} 190 -20 0 1 {name=p4 lab=cp_out}
C {devices/lab_pin.sym} -110 0 0 0 {name=p5 lab=QB}
C {devices/lab_pin.sym} 190 0 0 1 {name=p6 lab=GND}
