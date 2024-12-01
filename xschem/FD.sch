v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 -10 -280 50 {
lab=#net1}
N -280 -10 -140 -10 {
lab=#net1}
N 320 10 340 10 {
lab=#net2}
N 320 10 320 70 {
lab=#net2}
N 320 70 540 70 {
lab=#net2}
N 540 10 540 70 {
lab=#net2}
N 520 10 540 10 {
lab=#net2}
N 75 10 90 10 {
lab=#net3}
N 75 10 75 70 {
lab=#net3}
N 75 70 285 70 {
lab=#net3}
N 285 10 285 70 {
lab=#net3}
N 270 10 285 10 {
lab=#net3}
N -160 10 -140 10 {
lab=#net4}
N -160 10 -160 70 {
lab=#net4}
N -160 70 50 70 {
lab=#net4}
N 50 65 50 70 {
lab=#net4}
N 50 10 50 65 {
lab=#net4}
N 40 10 50 10 {
lab=#net4}
N 60 -10 90 -10 {
lab=#net4}
N 60 -10 60 10 {
lab=#net4}
N 50 10 60 10 {
lab=#net4}
N 305 -10 340 -10 {
lab=#net3}
N 305 -10 305 10 {
lab=#net3}
N 285 10 305 10 {
lab=#net3}
N 40 -60 40 -10 {
lab=A}
N 270 -60 270 -10 {
lab=B}
N 520 -60 520 -10 {
lab=C}
C {sky130_stdcells/dfxbp_2.sym} -50 0 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 180 0 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_2.sym} 430 0 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} -280 80 0 0 {name=V1 value="pulse(0 1.8v 0ns 10ns 10ns 5ns 10ns)" savecurrent=false}
C {devices/gnd.sym} -280 110 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 40 -55 1 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 270 -60 1 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 520 -60 1 0 {name=p3 sig_type=std_logic lab=C}
C {devices/title.sym} 95 235 0 0 {name=l2 author="Pavan Mantri"}
