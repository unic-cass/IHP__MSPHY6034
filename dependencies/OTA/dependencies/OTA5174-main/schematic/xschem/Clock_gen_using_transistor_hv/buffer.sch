v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -10 80 -10 {lab=#net1}
N 160 -10 180 -10 {lab=#net2}
N 260 -10 280 -10 {lab=#net3}
C {Clock_gen_using_transistor_hv/inverter.sym} -80 -30 0 0 {name=x1}
C {Clock_gen_using_transistor_hv/inverter.sym} 130 -30 0 0 {name=x2}
C {lab_pin.sym} -130 -10 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 360 -10 0 1 {name=p2 sig_type=std_logic lab=out}
C {iopin.sym} -160 70 0 0 {name=p3 lab=in}
C {iopin.sym} -160 110 0 0 {name=p4 lab=out}
C {iopin.sym} -160 140 0 0 {name=p5 lab=vdd}
C {iopin.sym} -160 180 0 0 {name=p6 lab=gnd}
C {lab_pin.sym} -90 -30 3 1 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 10 1 1 {name=p8 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 120 -30 3 1 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 120 10 1 1 {name=p11 sig_type=std_logic lab=gnd}
C {Clock_gen_using_transistor_hv/inverter.sym} 230 -30 0 0 {name=x3}
C {lab_pin.sym} 220 -30 3 1 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 220 10 1 1 {name=p12 sig_type=std_logic lab=gnd}
C {Clock_gen_using_transistor_hv/inverter.sym} 330 -30 0 0 {name=x4}
C {lab_pin.sym} 320 -30 3 1 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 320 10 1 1 {name=p14 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 10 50 1 1 {name=p15 sig_type=std_logic lab=gnd}
C {sg13g2_pr/cap_cmim.sym} 10 20 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
