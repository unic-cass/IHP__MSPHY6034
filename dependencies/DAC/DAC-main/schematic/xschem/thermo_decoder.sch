v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -140 270 -80 {
lab=#net1}
N 120 -280 320 -280 {
lab=X2}
N 160 -310 290 -310 {
lab=X1}
N 50 -340 310 -340 {
lab=X0}
N 320 -280 320 -80 {
lab=X2}
N 310 -80 320 -80 {
lab=X2}
N 120 -280 120 -260 {
lab=X2}
N -0 -280 120 -280 {
lab=X2}
N 160 -310 160 -260 {
lab=X1}
N -40 -310 160 -310 {
lab=X1}
N 140 -140 140 80 {
lab=D6}
N 290 40 290 80 {
lab=D7}
N -40 -310 -40 -260 {
lab=X1}
N -220 -310 -40 -310 {
lab=X1}
N -0 -280 0 -260 {
lab=X2}
N 50 -130 50 -80 {
lab=X0}
N -180 -340 50 -340 {
lab=X0}
N -80 -120 -20 -120 {
lab=D2}
N -20 -140 -20 -120 {
lab=D2}
N -80 -120 -80 80 {
lab=D2}
N 0 40 0 80 {
lab=D1}
N -220 -310 -220 -260 {
lab=X1}
N -340 -310 -220 -310 {
lab=X1}
N -180 -340 -180 -260 {
lab=X0}
N -300 -340 -180 -340 {
lab=X0}
N -140 -280 -0 -280 {
lab=X2}
N -220 20 -220 80 {
lab=D5}
N -340 -310 -340 -260 {
lab=X1}
N -450 -310 -340 -310 {
lab=X1}
N -300 -340 -300 -260 {
lab=X0}
N -450 -340 -300 -340 {
lab=X0}
N -320 -140 -320 -100 {
lab=#net2}
N -360 -280 -360 -100 {
lab=X2}
N -430 -280 -360 -280 {
lab=X2}
N -340 20 -340 80 {
lab=D3}
N -430 -280 -430 -180 {
lab=X2}
N -450 -280 -430 -280 {
lab=X2}
N -430 -100 -430 80 {
lab=D4}
N -240 -100 -200 -140 {lab=#net3}
N -200 -100 -140 -100 {lab=X2}
N -140 -280 -140 -100 {lab=X2}
N -360 -280 -140 -280 {
lab=X2}
N -20 -120 20 -80 {lab=D2}
N -20 -80 50 -130 {lab=X0}
N 50 -340 50 -130 {
lab=X0}
N 290 -260 310 -340 {lab=X0}
N 250 -260 290 -310 {lab=X1}
C {sg13g2_and2_2.sym} 270 -200 1 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_and2_2.sym} 290 -20 1 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} -450 -340 0 0 {name=p1 sig_type=std_logic lab=X0}
C {lab_wire.sym} -450 -310 0 0 {name=p2 sig_type=std_logic lab=X1}
C {lab_wire.sym} -450 -280 0 0 {name=p3 sig_type=std_logic lab=X2}
C {sg13g2_and2_2.sym} 140 -200 1 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_or2_2.sym} -20 -200 1 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_or2_2.sym} 0 -20 1 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_or2_2.sym} -200 -200 1 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_and2_2.sym} -220 -40 1 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_and2_2.sym} -320 -200 1 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_or2_2.sym} -340 -40 1 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_buf_2.sym} -430 -140 1 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} 290 80 0 0 {name=p4 sig_type=std_logic lab=D7}
C {lab_wire.sym} 140 80 0 0 {name=p5 sig_type=std_logic lab=D6}
C {lab_wire.sym} 0 80 0 0 {name=p6 sig_type=std_logic lab=D1}
C {lab_wire.sym} -80 80 0 0 {name=p7 sig_type=std_logic lab=D2}
C {lab_wire.sym} -220 80 0 0 {name=p8 sig_type=std_logic lab=D5}
C {lab_wire.sym} -340 80 0 0 {name=p9 sig_type=std_logic lab=D3}
C {lab_wire.sym} -430 80 0 0 {name=p10 sig_type=std_logic lab=D4}
C {ipin.sym} 440 -40 0 0 { name=p11 lab=X2 }
C {ipin.sym} 440 -60 0 0 { name=p12 lab=X1 }
C {ipin.sym} 440 -80 0 0 { name=p13 lab=X0 }
C {opin.sym} 440 -100 0 0 { name=p14 lab=D7 }
C {opin.sym} 440 -120 0 0 { name=p15 lab=D6 }
C {opin.sym} 440 -140 0 0 { name=p16 lab=D5 }
C {opin.sym} 440 -160 0 0 { name=p17 lab=D4 }
C {opin.sym} 440 -180 0 0 { name=p18 lab=D3 }
C {opin.sym} 440 -220 0 0 { name=p20 lab=D1 }
C {opin.sym} 440 -200 0 0 { name=p19 lab=D2 }
C {ipin.sym} 440 -20 0 0 { name=p21 lab=VDD }
C {ipin.sym} 440 0 0 0 { name=p22 lab=VSS }
