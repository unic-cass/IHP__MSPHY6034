v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -440 240 -440 {
lab=OUTP}
N 240 -270 240 -190 {
lab=OUTP}
N 180 -190 240 -190 {
lab=OUTP}
N 180 -270 240 -270 {
lab=OUTP}
N 240 -350 240 -270 {
lab=OUTP}
N 180 -350 240 -350 {
lab=OUTP}
N 240 -440 240 -350 {
lab=OUTP}
N 180 -170 280 -170 {
lab=OUTN}
N 280 -250 280 -170 {
lab=OUTN}
N 180 -420 280 -420 {
lab=OUTN}
N 180 -330 280 -330 {
lab=OUTN}
N 280 -420 280 -330 {
lab=OUTN}
N 180 -250 280 -250 {
lab=OUTN}
N 280 -330 280 -250 {
lab=OUTN}
N -130 -210 -130 -120 {
lab=VBIAS}
N -130 -460 -120 -460 {
lab=VBIAS}
N -130 -370 -120 -370 {
lab=VBIAS}
N -130 -460 -130 -370 {
lab=VBIAS}
N -130 -290 -120 -290 {
lab=VBIAS}
N -130 -370 -130 -290 {
lab=VBIAS}
N -130 -210 -120 -210 {
lab=VBIAS}
N -130 -290 -130 -210 {
lab=VBIAS}
N 180 -460 200 -460 {
lab=VSS}
N 200 -210 200 -120 {
lab=VSS}
N 180 -370 200 -370 {
lab=VSS}
N 200 -460 200 -370 {
lab=VSS}
N 180 -290 200 -290 {
lab=VSS}
N 200 -370 200 -290 {
lab=VSS}
N 180 -210 200 -210 {
lab=VSS}
N 200 -290 200 -210 {
lab=VSS}
N -150 -440 -120 -440 {
lab=#net1}
N -150 -420 -120 -420 {
lab=#net2}
N -150 -350 -120 -350 {
lab=#net3}
N -150 -330 -120 -330 {
lab=#net4}
N -150 -270 -120 -270 {
lab=#net5}
N -150 -250 -120 -250 {
lab=#net6}
N -150 -190 -120 -190 {
lab=#net7}
N -150 -170 -120 -170 {
lab=#net8}
C {lab_wire.sym} -330 -440 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {sg13g2_dfrbp_2.sym} -240 -330 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_dfrbp_2.sym} -240 -250 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_dfrbp_2.sym} -240 -170 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_wire.sym} -330 -420 0 0 {name=p2 sig_type=std_logic lab=X1}
C {lab_wire.sym} -330 -400 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -330 -350 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -330 -330 0 0 {name=p5 sig_type=std_logic lab=X2}
C {lab_wire.sym} -330 -310 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -330 -270 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -330 -250 0 0 {name=p8 sig_type=std_logic lab=X3}
C {lab_wire.sym} -330 -230 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -330 -190 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -330 -170 0 0 {name=p11 sig_type=std_logic lab=X4}
C {lab_wire.sym} -330 -150 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -130 -120 0 0 {name=p13 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} 200 -120 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 -420 0 1 {name=p15 sig_type=std_logic lab=OUTN}
C {lab_wire.sym} 240 -440 0 1 {name=p16 sig_type=std_logic lab=OUTP}
C {CS_Switch_1x.sym} 30 -440 2 1 {name=x2}
C {CS_Switch_2x.sym} 30 -350 2 1 {name=x3}
C {CS_Switch_4x.sym} 30 -270 2 1 {name=x5}
C {CS_Switch_8x.sym} 30 -190 2 1 {name=x8}
C {sg13g2_dfrbp_2.sym} -240 -420 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -900 -170 0 0 { name=p17 lab=X4 }
C {ipin.sym} -900 -190 0 0 { name=p18 lab=X3 }
C {ipin.sym} -900 -210 0 0 { name=p19 lab=X2 }
C {ipin.sym} -900 -230 0 0 { name=p20 lab=X1 }
C {iopin.sym} -900 -250 0 0 { name=p21 lab=VSS }
C {ipin.sym} -900 -270 0 0 { name=p22 lab=VDD }
C {ipin.sym} -900 -290 0 0 { name=p23 lab=VBIAS }
C {iopin.sym} -900 -310 0 0 { name=p24 lab=OUTP }
C {iopin.sym} -900 -330 0 0 { name=p25 lab=OUTN }
C {ipin.sym} -900 -350 0 0 { name=p26 lab=CLK }
