v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {PFD_schmeatic.sym} -10 -10 0 0 {name=x1}
C {devices/vsource.sym} -350 -100 0 0 {name=V2 value="pulse(0 1.8 40ns 100ps 100ps 5ns 9ns)" savecurrent=false}
C {devices/gnd.sym} -350 -70 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -350 -130 1 0 {name=p5 sig_type=std_logic lab=A}
C {devices/vsource.sym} -360 60 0 0 {name=V3 value="pulse(0 1.8 0ns 100ps 100ps 5ns 10ns)" savecurrent=false}
C {devices/gnd.sym} -360 90 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -360 30 1 0 {name=p6 sig_type=std_logic lab=B}
C {devices/vsource.sym} 220 -80 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 220 -50 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 220 -110 0 0 {name=l5 lab=VDD}
C {devices/code_shown.sym} 240 30 0 0 {name=s1 only_toplevel=false value="
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
*.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 1ns 100ns
.control
run
plot A+6 B+4 QA+2 QB
.endc
.end"}
C {sky130_fd_pr/corner.sym} -240 160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 140 -40 0 1 {name=p1 lab=QA}
C {devices/lab_pin.sym} 140 -20 0 1 {name=p2 lab=GND}
C {devices/lab_pin.sym} 140 0 0 1 {name=p3 lab=VDD}
C {devices/lab_pin.sym} -160 -40 0 0 {name=p4 lab=A}
C {devices/lab_pin.sym} 140 20 0 1 {name=p7 lab=QB}
C {devices/lab_pin.sym} -160 -20 0 0 {name=p8 lab=B}
