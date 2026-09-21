v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -680 -480 -680 -330 {
lab=OUTP}
N -680 -220 -680 -90 {
lab=#net1}
N -110 -470 -110 -320 {
lab=OUTN}
N -110 -220 -110 -90 {
lab=#net1}
N -440 -90 -110 -90 {
lab=#net1}
N -440 10 -440 50 {
lab=#net2}
N -440 -70 -440 -60 {
lab=#net1}
N -680 -90 -440 -90 {
lab=#net1}
N -500 -30 -480 -30 {
lab=VBIAS}
N -500 -30 -500 80 {
lab=VBIAS}
N -500 80 -480 80 {
lab=VBIAS}
N -440 -30 -370 -30 {
lab=VSS}
N -440 80 -370 80 {
lab=VSS}
N -370 -30 -370 80 {
lab=VSS}
N -440 160 -440 290 {lab=VSS}
N -370 80 -370 140 {lab=VSS}
N -440 140 -370 140 {lab=VSS}
N -440 110 -440 140 {lab=VSS}
N -850 -270 -850 -220 {lab=#net1}
N -850 -220 -680 -220 {lab=#net1}
N -680 -270 -680 -220 {
lab=#net1}
N 40 -280 40 -220 {lab=#net1}
N -110 -220 40 -220 {lab=#net1}
N -110 -270 -110 -220 {
lab=#net1}
N -440 -70 -230 -70 {lab=#net1}
N -440 -90 -440 -70 {
lab=#net1}
N -630 -40 -560 -40 {lab=#net2}
N -560 -40 -560 -0 {lab=#net2}
N -560 -0 -470 0 {lab=#net2}
N -470 0 -470 10 {lab=#net2}
N -470 10 -440 10 {lab=#net2}
N -440 -0 -440 10 {
lab=#net2}
N -570 0 -570 170 {lab=#net2}
N -570 0 -560 0 {lab=#net2}
N -440 160 -280 160 {lab=VSS}
N -440 140 -440 160 {lab=VSS}
C {lab_wire.sym} -500 30 0 0 {name=p1 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} -720 -300 0 0 {name=p2 sig_type=std_logic lab=INP}
C {lab_wire.sym} -680 -480 0 0 {name=p7 sig_type=std_logic lab=OUTP}
C {lab_wire.sym} -680 -300 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -440 290 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} -1160 -370 0 0 { name=p11 lab=VSS }
C {ipin.sym} -1160 -390 0 0 { name=p12 lab=VBIAS }
C {iopin.sym} -1160 -410 0 0 { name=p13 lab=OUTP }
C {iopin.sym} -1160 -430 0 0 { name=p14 lab=OUTN }
C {ipin.sym} -1160 -450 0 0 { name=p15 lab=INP }
C {ipin.sym} -1160 -470 0 0 { name=p16 lab=INN }
C {sg13g2_pr/sg13_hv_nmos.sym} -460 -30 0 0 {name=M7
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -460 80 0 0 {name=M5
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -110 -470 0 1 {name=p8 sig_type=std_logic lab=OUTN
}
C {sg13g2_pr/sg13_lv_nmos.sym} -700 -300 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -90 -300 0 1 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -70 -300 0 1 {name=p3 sig_type=std_logic lab=INN}
C {sg13g2_pr/sg13_lv_nmos.sym} -830 -300 0 1 {name=M3
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 20 -310 0 0 {name=M4
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -810 -300 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -850 -300 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -850 -330 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 40 -340 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 40 -310 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 0 -310 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} -610 -10 0 1 {name=M6
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -250 -40 0 0 {name=M8
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -270 -40 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -230 -40 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -230 -10 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -630 -10 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -630 20 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -590 -10 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} -550 200 0 1 {name=M9
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -570 200 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -570 230 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -530 200 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -110 -300 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} -260 190 0 1 {name=M10
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -280 190 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -280 220 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -240 190 0 1 {name=p31 sig_type=std_logic lab=VSS}
