v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -60 -120 -60 {lab=out}
N -240 -60 -180 -60 {lab=out}
N -240 -30 -240 -0 {lab=gnd}
N -120 -30 -120 -0 {lab=gnd}
N -180 -0 -120 0 {lab=gnd}
N -180 -0 -180 30 {lab=gnd}
N -240 0 -180 -0 {lab=gnd}
N -180 -80 -180 -60 {lab=out}
N -180 -200 -180 -170 {lab=vdd}
N -180 -80 -80 -80 {lab=out}
N -180 -110 -170 -110 {lab=vdd}
N -170 -200 -170 -110 {lab=vdd}
N -180 -200 -170 -200 {lab=vdd}
N -180 -220 -180 -200 {lab=vdd}
C {lab_pin.sym} -180 30 3 0 {name=p2 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -180 -220 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_pmos.sym} -200 -170 0 0 {name=M3
l=1.8u
w=1.2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -140 -30 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -260 -30 0 0 {name=M2
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -200 -110 0 0 {name=M4
l=1.8u
w=1.2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -220 -170 2 1 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -220 -110 2 1 {name=p11 sig_type=std_logic lab=B}
C {lab_pin.sym} -280 -30 2 1 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} -160 -30 2 1 {name=p5 sig_type=std_logic lab=B}
C {lab_pin.sym} -80 -80 2 0 {name=p6 sig_type=std_logic lab=out}
C {iopin.sym} -410 -200 0 0 {name=p7 lab=vdd}
C {iopin.sym} -410 -170 0 0 {name=p8 lab=B}
C {iopin.sym} -410 -140 0 0 {name=p12 lab=A}
C {iopin.sym} -410 -100 0 0 {name=p13 lab=gnd}
C {iopin.sym} -410 -70 0 0 {name=p14 lab=out}
