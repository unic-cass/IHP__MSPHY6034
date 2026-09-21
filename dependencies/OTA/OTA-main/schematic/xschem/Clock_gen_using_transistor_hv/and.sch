v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -10 -0 -10 {lab=#net1}
N -50 0 -50 10 {lab=#net1}
N -120 -10 -50 -10 {lab=#net1}
N -60 -70 -0 -70 {lab=vdd}
N -60 -110 -60 -70 {lab=vdd}
N -120 -70 -60 -70 {lab=vdd}
N -120 -70 -120 -40 {lab=vdd}
N -0 -70 -0 -40 {lab=vdd}
N -50 100 -50 130 {lab=gnd}
N -50 0 70 0 {lab=#net1}
N -50 -10 -50 0 {lab=#net1}
N 110 10 110 30 {lab=out}
N 110 60 110 100 {lab=gnd}
N 70 0 70 60 {lab=#net1}
N 110 10 150 10 {lab=out}
N 110 0 110 10 {lab=out}
N 110 -80 110 -30 {lab=vdd}
N 70 -30 70 0 {lab=#net1}
N -50 40 -0 40 {lab=gnd}
N -0 40 0 130 {lab=gnd}
N -50 130 0 130 {lab=gnd}
N 110 60 150 60 {lab=gnd}
N 150 60 150 100 {lab=gnd}
N 110 100 150 100 {lab=gnd}
C {lab_pin.sym} -50 130 3 0 {name=p2 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -60 -110 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_pmos.sym} -140 -40 0 0 {name=M3
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -70 100 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -70 40 0 0 {name=M2
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 -40 0 0 {name=M4
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 110 100 3 0 {name=p5 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 150 10 0 1 {name=p6 sig_type=std_logic lab=out}
C {lab_pin.sym} 110 -80 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_hv_pmos.sym} 90 -30 0 0 {name=M5
l=0.9u
w=0.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 90 60 0 0 {name=M6
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -160 -40 2 1 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -90 40 2 1 {name=p9 sig_type=std_logic lab=A}
C {lab_pin.sym} -40 -40 2 1 {name=p10 sig_type=std_logic lab=B}
C {lab_pin.sym} -90 100 2 1 {name=p11 sig_type=std_logic lab=B}
C {iopin.sym} -290 -10 0 0 {name=p3 lab=vdd}
C {iopin.sym} -290 20 0 0 {name=p8 lab=B}
C {iopin.sym} -290 50 0 0 {name=p12 lab=A}
C {iopin.sym} -290 90 0 0 {name=p13 lab=gnd}
C {iopin.sym} -290 120 0 0 {name=p14 lab=out}
