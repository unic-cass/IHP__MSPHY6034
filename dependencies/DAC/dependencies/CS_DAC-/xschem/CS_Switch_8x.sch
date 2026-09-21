v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 10 70 30 {
lab=#net1}
N 320 30 550 30 {
lab=#net1}
N 550 0 550 30 {
lab=#net1}
N 320 30 320 80 {
lab=#net1}
N 70 30 320 30 {
lab=#net1}
N 320 170 320 180 {
lab=#net2}
N 320 110 380 110 {
lab=VSS}
N 380 110 380 210 {
lab=VSS}
N 320 210 380 210 {
lab=VSS}
N 320 240 380 240 {
lab=VSS}
N 380 210 380 240 {
lab=VSS}
N 280 150 280 210 {
lab=VBIAS}
N 220 150 280 150 {
lab=VBIAS}
N 280 110 280 150 {
lab=VBIAS}
N 70 -280 70 -160 {
lab=OUTP}
N 550 -280 550 -160 {
lab=OUTN}
N 70 -280 120 -280 {
lab=OUTP}
N 550 -280 600 -280 {
lab=OUTN}
N 140 170 140 190 {lab=#net2}
N 140 170 320 170 {lab=#net2}
N 140 110 140 170 {lab=#net2}
N 320 140 320 170 {
lab=#net2}
N 320 170 490 170 {lab=#net2}
N 490 110 490 170 {lab=#net2}
N 490 170 490 180 {lab=#net2}
N -80 10 70 10 {lab=#net1}
N 70 -100 70 10 {
lab=#net1}
N 550 0 660 0 {lab=#net1}
N 550 -100 550 0 {
lab=#net1}
C {lab_wire.sym} 220 150 0 0 {name=p1 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} 30 -130 0 0 {name=p2 sig_type=std_logic lab=INP}
C {lab_wire.sym} 590 -130 0 1 {name=p5 sig_type=std_logic lab=INN}
C {lab_wire.sym} 550 -280 0 1 {name=p6 sig_type=std_logic lab=OUTN}
C {lab_wire.sym} 70 -280 0 0 {name=p7 sig_type=std_logic lab=OUTP}
C {lab_wire.sym} 70 -130 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 240 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} -260 -80 0 0 { name=p11 lab=VSS }
C {ipin.sym} -260 -100 0 0 { name=p12 lab=VBIAS }
C {iopin.sym} -260 -120 0 0 { name=p13 lab=OUTP }
C {iopin.sym} -260 -140 0 0 { name=p14 lab=OUTN }
C {ipin.sym} -260 -160 0 0 { name=p15 lab=INP }
C {ipin.sym} -260 -180 0 0 { name=p16 lab=INN }
C {sg13g2_pr/sg13_lv_nmos.sym} 50 -130 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 550 -130 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -130 0 1 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 140 220 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 250 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 80 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 50 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 80 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 210 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 240 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 210 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 80 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 50 0 1 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 80 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 220 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -40 -20 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -80 -50 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -80 -20 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -30 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -60 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -30 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 -20 0 1 {name=M3
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -30 0 0 {name=M4
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 300 110 0 0 {name=M5
l=0.48u
w=2.4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 300 210 0 0 {name=M6
l=0.48u
w=2.4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 160 80 0 1 {name=M7
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 470 80 0 0 {name=M8
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 470 210 0 0 {name=M9
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 160 220 0 1 {name=M10
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
