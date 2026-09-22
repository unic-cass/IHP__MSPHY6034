v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 120 220 140 {lab=#net1}
N 220 -20 330 -20 {lab=gate}
N 0 -100 0 -20 {lab=gate}
N 220 40 220 60 {lab=iovss}
N 260 -160 370 -160 {lab=iovdd}
N 40 -160 40 -70 {lab=iovdd}
N 0 -160 40 -160 {lab=iovdd}
N 40 -40 40 -0 {lab=pad[0]}
N 150 -40 150 0 {lab=pad[1]}
N 260 -40 260 0 {lab=pad[2]}
N 370 -40 370 0 {lab=pad[3]}
N 370 -160 370 -70 {lab=iovdd}
N 260 -160 260 -70 {lab=iovdd}
N 150 -160 260 -160 {lab=iovdd}
N 150 -160 150 -70 {lab=iovdd}
N 40 -160 150 -160 {lab=iovdd}
N 330 -70 330 -20 {lab=gate}
N 220 -70 220 -20 {lab=gate}
N 110 -20 220 -20 {lab=gate}
N 110 -70 110 -20 {lab=gate}
N 0 -20 110 -20 {lab=gate}
C {iopin.sym} 220 40 0 0 {name=p3 lab=iovss}
C {iopin.sym} 0 -40 0 1 {name=p4 lab=gate}
C {sg13g2_pr/ptap1.sym} 220 90 0 0 {name=R1
model=ptap1
spiceprefix=X
w=8.185e-6
l=8.185e-6
lvs_format="tcleval(@name @pinlist @model A=67.0344p P=394.32u )"
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -70 0 0 {name=M1
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 370 -160 0 0 {name=p1 lab=iovdd}
C {sg13g2_pr/dpantenna.sym} 0 -130 0 0 {name=D1
model=dpantenna
l=0.48u
w=0.48u
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 130 -70 0 0 {name=M2
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 240 -70 0 0 {name=M3
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 350 -70 0 0 {name=M4
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 40 40 0 0 {name=p9 lab=pad[3:0]}
C {lab_pin.sym} 40 0 0 1 {name=p2 sig_type=std_logic lab=pad[0]}
C {lab_pin.sym} 150 0 0 1 {name=p6 sig_type=std_logic lab=pad[1]}
C {lab_pin.sym} 260 0 0 1 {name=p7 sig_type=std_logic lab=pad[2]}
C {lab_pin.sym} 370 0 0 1 {name=p8 sig_type=std_logic lab=pad[3]}
C {iopin.sym} 220 140 0 0 {name=p5 lab=sub}
