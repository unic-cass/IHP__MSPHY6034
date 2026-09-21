v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -550 -200 -550 -130 {
lab=#net1}
N -300 -130 -60 -130 {
lab=#net1}
N -300 -130 -300 -80 {
lab=#net1}
N -550 -130 -300 -130 {
lab=#net1}
N -300 10 -300 20 {
lab=#net2}
N -300 -50 -240 -50 {
lab=VSS}
N -240 -50 -240 50 {
lab=VSS}
N -300 50 -240 50 {
lab=VSS}
N -300 80 -240 80 {
lab=VSS}
N -240 50 -240 80 {
lab=VSS}
N -340 -10 -340 50 {
lab=VBIAS}
N -400 -10 -340 -10 {
lab=VBIAS}
N -340 -50 -340 -10 {
lab=VBIAS}
N -60 -410 -60 -320 {
lab=OUTN}
N -550 -420 -550 -320 {
lab=OUTP}
N -690 -260 -690 -200 {lab=#net1}
N -690 -200 -550 -200 {lab=#net1}
N -550 -260 -550 -200 {
lab=#net1}
N 100 -260 100 -210 {lab=#net1}
N -60 -210 -60 -130 {lab=#net1}
N -60 -210 100 -210 {lab=#net1}
N -60 -260 -60 -210 {lab=#net1}
N -510 10 -510 30 {lab=#net2}
N -510 10 -300 10 {lab=#net2}
N -510 -40 -510 10 {lab=#net2}
N -300 -10 -300 10 {
lab=#net2}
N -120 -10 -120 20 {lab=#net2}
N -300 -10 -120 -10 {lab=#net2}
N -300 -20 -300 -10 {
lab=#net2}
N -120 -60 -120 -10 {lab=#net2}
C {lab_wire.sym} -400 -10 0 0 {name=p1 sig_type=std_logic lab=VBIAS}
C {lab_wire.sym} -590 -290 0 0 {name=p2 sig_type=std_logic lab=INP}
C {lab_wire.sym} -20 -290 0 1 {name=p5 sig_type=std_logic lab=INN}
C {lab_wire.sym} -60 -410 0 1 {name=p6 sig_type=std_logic lab=OUTN}
C {lab_wire.sym} -550 -420 0 0 {name=p7 sig_type=std_logic lab=OUTP}
C {lab_wire.sym} -550 -290 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -300 80 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {iopin.sym} -880 -240 0 0 { name=p11 lab=VSS }
C {ipin.sym} -880 -260 0 0 { name=p12 lab=VBIAS }
C {iopin.sym} -880 -280 0 0 { name=p13 lab=OUTP }
C {iopin.sym} -880 -300 0 0 { name=p14 lab=OUTN }
C {ipin.sym} -880 -320 0 0 { name=p15 lab=INP }
C {ipin.sym} -880 -340 0 0 { name=p16 lab=INN }
C {sg13g2_pr/sg13_hv_nmos.sym} -320 -50 0 0 {name=M7
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -320 50 0 0 {name=M5
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -570 -290 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 -290 0 1 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -60 -290 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -670 -290 0 1 {name=M3
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -690 -320 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -650 -290 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -690 -290 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -290 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 100 -320 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 100 -290 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} -490 -70 0 1 {name=M6
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -140 -90 0 0 {name=M8
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -140 50 0 0 {name=M9
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -490 60 0 1 {name=M10
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_wire.sym} -510 60 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -510 -70 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -510 -100 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -510 90 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -470 -70 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -470 60 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -160 -90 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -160 50 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 50 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 -90 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 -120 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 80 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 -290 0 0 {name=M4
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
