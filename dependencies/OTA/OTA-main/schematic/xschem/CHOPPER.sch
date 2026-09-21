v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 -120 100 -120 {lab=IN_A}
N 10 -120 10 -110 {lab=IN_A}
N 10 40 100 40 {lab=IN_B}
N 260 -120 260 -100 {lab=OUT_A}
N 160 -120 260 -120 {lab=OUT_A}
N 160 40 260 40 {lab=OUT_B}
N 10 40 260 -40 {lab=IN_B}
N 10 -50 260 40 {lab=OUT_B}
N 260 -120 340 -120 {lab=OUT_A}
N 260 40 340 40 {lab=OUT_B}
N -80 40 10 40 {lab=IN_B}
N -80 -120 10 -120 {lab=IN_A}
N -60 -80 -30 -80 {lab=PHIB}
N 130 -190 130 -160 {lab=PHIA}
N 130 80 130 120 {lab=PHIA}
N 300 -70 340 -70 {lab=PHIB}
N 10 -80 40 -80 {lab=sub}
N 130 -120 130 -90 {lab=sub}
N 230 -70 260 -70 {lab=sub}
N 130 20 130 40 {lab=sub}
C {sg13g2_pr/sg13_hv_nmos.sym} 130 -140 1 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 130 60 1 1 {name=M2
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -10 -80 2 1 {name=M3
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 280 -70 2 0 {name=M4
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} -70 -120 0 1 {name=p1 sig_type=std_logic lab=IN_A}
C {iopin.sym} -70 40 0 1 {name=p2 sig_type=std_logic lab=IN_B
}
C {iopin.sym} 330 40 2 1 {name=p3 sig_type=std_logic lab=OUT_B}
C {iopin.sym} 330 -120 2 1 {name=p4 sig_type=std_logic lab=OUT_A}
C {iopin.sym} 130 -190 0 1 {name=p5 sig_type=std_logic lab=PHIA}
C {iopin.sym} -50 -80 0 1 {name=p6 sig_type=std_logic lab=PHIB
}
C {lab_pin.sym} 130 120 0 0 {name=p7 sig_type=std_logic lab=PHIA
}
C {lab_pin.sym} 340 -70 0 1 {name=p8 sig_type=std_logic lab=PHIB
}
C {lab_pin.sym} 40 -80 0 1 {name=p9 sig_type=std_logic lab=GND
}
C {lab_pin.sym} 130 -90 1 1 {name=p10 sig_type=std_logic lab=GND
}
C {iopin.sym} 360 -10 0 1 {name=p11 sig_type=std_logic lab=GND
}
C {lab_pin.sym} 130 20 0 1 {name=p12 sig_type=std_logic lab=GND
}
C {lab_pin.sym} 230 -70 2 1 {name=p13 sig_type=std_logic lab=GND
=======
C \{iopin.sym}
