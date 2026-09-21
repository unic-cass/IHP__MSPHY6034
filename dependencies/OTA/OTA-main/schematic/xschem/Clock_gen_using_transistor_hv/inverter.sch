v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -230 10 -230 30 {lab=out}
N -270 20 -270 60 {lab=in}
N -270 -30 -270 20 {lab=in}
N -310 20 -270 20 {lab=in}
N -230 10 -190 10 {lab=out}
N -230 -0 -230 10 {lab=out}
N -230 -80 -230 -30 {lab=vdd}
N -230 60 -230 100 {lab=gnd}
C {lab_pin.sym} -310 20 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -230 100 3 0 {name=p2 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} -190 10 0 1 {name=p3 sig_type=std_logic lab=out}
C {lab_pin.sym} -230 -80 1 0 {name=p4 sig_type=std_logic lab=vdd}
C {iopin.sym} -410 -20 0 0 {name=p5 lab=in}
C {iopin.sym} -410 10 0 0 {name=p6 lab=vdd}
C {iopin.sym} -410 40 0 0 {name=p7 lab=out}
C {iopin.sym} -410 80 0 0 {name=p8 lab=gnd}
C {sg13g2_pr/sg13_hv_pmos.sym} -250 -30 0 0 {name=M3
l=0.9u
w=0.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -250 60 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
