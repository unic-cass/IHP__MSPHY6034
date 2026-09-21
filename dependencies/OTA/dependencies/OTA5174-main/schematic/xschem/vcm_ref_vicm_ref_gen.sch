v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -230 -30 -230 -10 {lab=#net1}
N -230 -30 -170 -30 {lab=#net1}
N -230 -80 -230 -30 {lab=#net1}
N -170 -30 -170 20 {lab=#net1}
N -190 20 -170 20 {lab=#net1}
N -120 -160 -40 -160 {lab=#net2}
N -40 20 -40 50 {lab=gnd}
N -230 50 -40 50 {lab=gnd}
N -120 -190 -120 -160 {lab=#net2}
N -120 -250 -120 -220 {lab=vdd}
N -230 20 -230 50 {lab=gnd}
N -230 -80 -190 -80 {lab=#net1}
N -290 -80 -230 -80 {lab=#net1}
N -240 -140 -190 -140 {lab=#net2}
N -240 -160 -120 -160 {lab=#net2}
N -240 -160 -240 -140 {lab=#net2}
N -290 -140 -240 -140 {lab=#net2}
N -260 -110 -190 -110 {lab=vdd}
N -40 -80 -40 -60 {lab=vicm}
N -40 -60 -40 -10 {lab=vicm}
N -170 20 -80 20 {lab=#net1}
N -260 -250 -120 -250 {lab=vdd}
N 0 -60 230 -60 {lab=vicm}
N -260 -250 -260 -110 {lab=vdd}
N -290 -110 -260 -110 {lab=vdd}
N -40 -160 -40 -140 {lab=#net2}
N -50 -110 -40 -110 {lab=vdd}
N -50 -250 -50 -110 {lab=vdd}
N -120 -250 -50 -250 {lab=vdd}
N -530 -150 -530 -100 {lab=vdd}
N -490 -160 -490 -130 {lab=pos}
N -570 -150 -530 -150 {lab=vdd}
N -530 -190 -530 -150 {lab=vdd}
N -570 -220 -570 -150 {lab=vdd}
N -570 -220 -490 -220 {lab=vdd}
N -0 -110 0 -60 {lab=vicm}
N -40 -60 0 -60 {lab=vicm}
N 660 -90 660 -70 {lab=#net3}
N 660 -90 720 -90 {lab=#net3}
N 660 -140 660 -90 {lab=#net3}
N 720 -90 720 -40 {lab=#net3}
N 700 -40 720 -40 {lab=#net3}
N 770 -220 850 -220 {lab=#net4}
N 850 -40 850 -10 {lab=gnd}
N 660 -10 850 -10 {lab=gnd}
N 770 -250 770 -220 {lab=#net4}
N 770 -310 770 -280 {lab=vdd}
N 660 -40 660 -10 {lab=gnd}
N 660 -140 700 -140 {lab=#net3}
N 600 -140 660 -140 {lab=#net3}
N 650 -200 700 -200 {lab=#net4}
N 650 -220 770 -220 {lab=#net4}
N 650 -220 650 -200 {lab=#net4}
N 600 -200 650 -200 {lab=#net4}
N 630 -170 700 -170 {lab=vdd}
N 850 -140 850 -120 {lab=vcm}
N 850 -120 850 -70 {lab=vcm}
N 720 -40 810 -40 {lab=#net3}
N 630 -310 770 -310 {lab=vdd}
N 890 -120 1120 -120 {lab=vcm}
N 630 -310 630 -170 {lab=vdd}
N 600 -170 630 -170 {lab=vdd}
N 850 -220 850 -200 {lab=#net4}
N 840 -170 850 -170 {lab=vdd}
N 840 -310 840 -170 {lab=vdd}
N 770 -310 840 -310 {lab=vdd}
N 360 -210 360 -160 {lab=vdd}
N 400 -220 400 -190 {lab=pos1}
N 320 -210 360 -210 {lab=vdd}
N 360 -250 360 -210 {lab=vdd}
N 320 -280 320 -210 {lab=vdd}
N 320 -280 400 -280 {lab=vdd}
N 890 -170 890 -120 {lab=vcm}
N 850 -120 890 -120 {lab=vcm}
N -490 -190 -430 -190 {lab=gnd}
N -430 -190 -430 -70 {lab=gnd}
N -490 -70 -430 -70 {lab=gnd}
N -490 -100 -490 -70 {lab=gnd}
N 400 -250 450 -250 {lab=gnd}
N 450 -160 450 -130 {lab=gnd}
N 400 -130 450 -130 {lab=gnd}
N 400 -160 450 -160 {lab=gnd}
N 450 -250 450 -160 {lab=gnd}
N 100 50 130 50 {lab=gnd}
N 1020 -10 1030 -10 {lab=gnd}
N 100 0 100 50 {lab=gnd}
N -40 50 100 50 {lab=gnd}
N 1020 -60 1020 -10 {lab=gnd}
N 850 -10 1020 -10 {lab=gnd}
C {sg13g2_pr/sg13_hv_nmos.sym} -210 20 0 1 {name=M6
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -310 -110 0 0 {name=M13
l=0.50u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -60 20 0 0 {name=M14
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 -110 0 1 {name=M15
l=0.5u
w=2.25u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -140 -220 0 0 {name=M16
l=1u
w=4u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -170 -110 0 1 {name=M17
l=0.50u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -330 -110 3 0 {name=p24 sig_type=std_logic lab=pos
}
C {lab_pin.sym} -150 -110 3 0 {name=p25 sig_type=std_logic lab=pos}
C {sg13g2_pr/sg13_hv_nmos.sym} -510 -190 0 0 {name=M1
l=0.45u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -510 -100 0 0 {name=M2
l=3.7u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} 230 -60 0 0 {name=p1 lab=vicm}
C {lab_pin.sym} -570 -220 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -260 -250 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -490 -140 0 1 {name=p7 sig_type=std_logic lab=pos
}
C {iopin.sym} 80 -230 0 0 {name=p8 lab=vdd}
C {sg13g2_pr/sg13_hv_nmos.sym} 680 -40 0 1 {name=M3
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 580 -170 0 0 {name=M4
l=0.50u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 830 -40 0 0 {name=M5
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 870 -170 0 1 {name=M7
l=0.5u
w=2.25u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 750 -280 0 0 {name=M8
l=1u
w=4u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 720 -170 0 1 {name=M9
l=0.50u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 560 -170 3 0 {name=p10 sig_type=std_logic lab=pos1
}
C {lab_pin.sym} 740 -170 3 0 {name=p11 sig_type=std_logic lab=pos1}
C {sg13g2_pr/sg13_hv_nmos.sym} 380 -250 0 0 {name=M10
l=0.45u
w=0.8u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 380 -160 0 0 {name=M11
l=1.4u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} 1120 -120 0 0 {name=p12 lab=vcm}
C {lab_pin.sym} 320 -280 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 630 -310 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 400 -200 0 1 {name=p18 sig_type=std_logic lab=pos1
}
C {lab_pin.sym} -490 -70 0 0 {name=p14 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 120 50 3 0 {name=p15 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 710 -10 3 0 {name=p19 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 430 -130 3 0 {name=p20 sig_type=std_logic lab=gnd
}
C {iopin.sym} 90 -190 0 0 {name=p21 lab=b_v}
C {iopin.sym} 90 -150 0 0 {name=p22 lab=gnd}
C {lab_pin.sym} -160 -220 3 0 {name=p6 sig_type=std_logic lab=b_v
}
C {lab_pin.sym} 730 -280 3 0 {name=p17 sig_type=std_logic lab=b_v
}
C {sg13g2_pr/cap_cmim.sym} 100 -30 0 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1020 -90 0 0 {name=C2
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=1
spiceprefix=X}
