v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {VCO.sym} -10 -20 0 0 {name=x1}
C {devices/vsource.sym} -270 -100 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -270 -70 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -270 -130 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} -270 70 0 0 {name=V2 value=0.65 savecurrent=false}
C {devices/gnd.sym} -270 100 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 140 -40 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 140 -20 0 1 {name=p2 lab=vco_out}
C {devices/lab_pin.sym} -160 -40 0 0 {name=p3 lab=Vctrl}
C {devices/lab_pin.sym} 140 0 0 1 {name=p4 lab=GND}
C {devices/lab_pin.sym} -270 40 1 0 {name=p5 sig_type=std_logic lab=Vctrl}
C {devices/code_shown.sym} 310 -30 0 0 {name=s1 only_toplevel=false value="
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 1ns 300ns
.control
run
plot vco_out
.endc
.end"}
C {devices/title.sym} 220 200 0 0 {name=l2 author="Pavan Mantri"}
