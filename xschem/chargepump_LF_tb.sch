v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -670 -140 -670 -120 {
lab=QB}
N -670 -270 -670 -250 {
lab=QA}
N -480 0 -480 20 {
lab=VDD}
N -470 -340 -470 -320 {
lab=cp_bias}
C {devices/vsource.sym} -670 -90 0 0 {name=V7 value="pulse(0 1 105n 100ps 100ps 20ns 50ns) " savecurrent=false
}
C {devices/gnd.sym} -670 -60 0 0 {name=l9 lab=GND
}
C {devices/lab_wire.sym} -670 -140 0 0 {name=p11 sig_type=std_logic lab=QB}
C {devices/vsource.sym} -670 -220 0 0 {name=V8 value="pulse(0 1 100n 100ps 100ps 20ns 50ns) " savecurrent=false
}
C {devices/gnd.sym} -670 -190 0 0 {name=l10 lab=GND
}
C {devices/lab_wire.sym} -670 -270 0 0 {name=p12 sig_type=std_logic lab=QA
}
C {devices/vsource.sym} -480 50 0 0 {name=V1 value=1.8 savecurrent=false
}
C {devices/gnd.sym} -480 80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -480 0 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -470 -290 0 0 {name=V9 value=0.9 savecurrent=false
}
C {devices/gnd.sym} -470 -260 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} -470 -340 0 0 {name=p17 sig_type=std_logic lab=cp_bias}
C {devices/code_shown.sym} -90 -340 0 0 {name=s1 only_toplevel=false value="
*.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 1ns 300ns
.control
run
plot QA QB Vctrl
.endc
.end"}
C {chargepump_LF.sym} -310 -160 0 0 {name=x1}
C {devices/lab_pin.sym} -160 -180 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} -460 -180 0 0 {name=p2 lab=cp_bias}
C {devices/lab_pin.sym} -460 -160 0 0 {name=p3 lab=QA}
C {devices/lab_pin.sym} -160 -160 0 1 {name=p4 lab=Vctrl}
C {devices/lab_pin.sym} -460 -140 0 0 {name=p5 lab=QB}
C {devices/lab_pin.sym} -160 -140 0 1 {name=p6 lab=GND}
