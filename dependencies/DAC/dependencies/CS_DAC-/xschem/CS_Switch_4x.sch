v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -20 -70 90 {
lab=#net1}
N 180 90 410 90 {
lab=#net1}
N 410 20 410 90 {
lab=#net1}
N 180 90 180 140 {
lab=#net1}
N -70 90 180 90 {
lab=#net1}
N 180 230 180 240 {
lab=#net2}
N 180 170 240 170 {
lab=VSS}
N 240 170 240 270 {
lab=VSS}
N 180 270 240 270 {
lab=VSS}
N 180 300 240 300 {
lab=VSS}
N 240 270 240 300 {
lab=VSS}
N 140 210 140 270 {
lab=VBIAS}
N 80 210 140 210 {
lab=VBIAS}
N 140 170 140 210 {
lab=VBIAS}
N -70 -210 -70 -100 {
lab=OUTP}
N 410 -210 410 -100 {
lab=#net3}
N 450 -70 540 -70 {lab=INN}
N -210 -40 -210 -20 {lab=#net1}
N -210 -20 -70 -20 {lab=#net1}
N -70 -40 -70 -20 {
lab=#net1}
N 410 20 510 20 {lab=#net1}
N 410 -40 410 20 {
lab=#net1}
N 30 230 30 250 {lab=#net2}
N 320 230 320 250 {lab=#net2}
N 30 230 180 230 {lab=#net2}
N 30 170 30 230 {lab=#net2}
N 180 200 180 230 {
lab=#net2}
N 180 230 320 230 {lab=#net2}
N 320 180 320 230 {lab=#net2}
C {lab_wire.sym} 80 210 0 0 {name=p1 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} -110 -70 0 0 {name=p2 sig_type=std_logic lab=INP}
C {lab_wire.sym} 540 -70 0 1 {name=p5 sig_type=std_logic lab=INN}
C {lab_wire.sym} 410 -210 0 1 {name=p6 sig_type=std_logic lab=OUTN}
C {lab_wire.sym} -70 -210 0 0 {name=p7 sig_type=std_logic lab=OUTP}
C {lab_wire.sym} 410 -70 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 300 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} -400 -20 0 0 { name=p11 lab=VSS }
C {ipin.sym} -400 -40 0 0 { name=p12 lab=VBIAS }
C {iopin.sym} -400 -60 0 0 { name=p13 lab=OUTP }
C {iopin.sym} -400 -80 0 0 { name=p14 lab=OUTN }
C {ipin.sym} -400 -100 0 0 { name=p15 lab=INP }
C {ipin.sym} -400 -120 0 0 { name=p16 lab=INN }
C {sg13g2_pr/sg13_lv_nmos.sym} -90 -70 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 430 -70 0 1 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -70 -70 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -190 -70 0 1 {name=M3
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -210 -70 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -210 -100 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -170 -70 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 490 -10 0 0 {name=M4
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 470 -10 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 510 -40 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 510 -10 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 160 170 0 0 {name=M5
l=0.45u
w=1.2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 160 270 0 0 {name=M6
l=0.45u
w=1.2u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 50 140 0 1 {name=M7
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 300 150 0 0 {name=M8
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 300 280 0 0 {name=M9
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 50 280 0 1 {name=M10
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} 30 310 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 280 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 140 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 110 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 70 140 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 70 280 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 120 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 150 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 280 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 310 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 280 2 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 150 2 1 {name=p32 sig_type=std_logic lab=VSS}
