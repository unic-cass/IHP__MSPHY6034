v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 120 220 140 {lab=sub}
N 220 -20 330 -20 {lab=#net1}
N 220 40 220 60 {lab=iovss}
N 260 -160 370 -160 {lab=iovdd}
N 40 -160 40 -70 {lab=iovdd}
N 40 -40 40 -0 {lab=pad[0]}
N 150 -40 150 0 {lab=pad[1]}
N 260 -40 260 0 {lab=pad[2]}
N 370 -40 370 0 {lab=pad[3]}
N 370 -160 370 -70 {lab=iovdd}
N 260 -160 260 -70 {lab=iovdd}
N 150 -160 260 -160 {lab=iovdd}
N 150 -160 150 -70 {lab=iovdd}
N 40 -160 150 -160 {lab=iovdd}
N 330 -70 330 -20 {lab=#net1}
N 220 -70 220 -20 {lab=#net1}
N 110 -20 220 -20 {lab=#net1}
N 110 -70 110 -20 {lab=#net1}
N 0 -20 110 -20 {lab=#net1}
N 720 -20 830 -20 {lab=#net1}
N 760 -160 870 -160 {lab=iovdd}
N 540 -160 540 -70 {lab=iovdd}
N 540 -40 540 0 {lab=pad[4]}
N 650 -40 650 0 {lab=pad[5]}
N 760 -40 760 0 {lab=pad[6]}
N 870 -40 870 0 {lab=pad[7]}
N 870 -160 870 -70 {lab=iovdd}
N 760 -160 760 -70 {lab=iovdd}
N 650 -160 760 -160 {lab=iovdd}
N 650 -160 650 -70 {lab=iovdd}
N 540 -160 650 -160 {lab=iovdd}
N 830 -70 830 -20 {lab=#net1}
N 720 -70 720 -20 {lab=#net1}
N 610 -20 720 -20 {lab=#net1}
N 610 -70 610 -20 {lab=#net1}
N 500 -70 500 -20 {lab=#net1}
N 500 -20 610 -20 {lab=#net1}
N 330 -20 500 -20 {lab=#net1}
N 370 -160 540 -160 {lab=iovdd}
N 960 -20 1070 -20 {lab=#net1}
N 1000 -160 1110 -160 {lab=iovdd}
N 1000 -40 1000 0 {lab=pad[8]}
N 1110 -40 1110 0 {lab=pad[9]}
N 1110 -160 1110 -70 {lab=iovdd}
N 1000 -160 1000 -70 {lab=iovdd}
N 1070 -70 1070 -20 {lab=#net1}
N 960 -70 960 -20 {lab=#net1}
N 870 -160 1000 -160 {lab=iovdd}
N 830 -20 960 -20 {lab=#net1}
N -0 -100 -0 -20 {lab=#net1}
N 0 -160 40 -160 {lab=iovdd}
C {iopin.sym} 220 40 0 0 {name=p3 lab=iovss}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -70 0 0 {name=M1
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
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
C {sg13g2_pr/sg13_hv_pmos.sym} 520 -70 0 0 {name=M5
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 630 -70 0 0 {name=M6
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 740 -70 0 0 {name=M7
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 850 -70 0 0 {name=M8
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 1110 -160 0 0 {name=p1 lab=!}
C {sg13g2_pr/sg13_hv_pmos.sym} 980 -70 0 0 {name=M9
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1090 -70 0 0 {name=M10
l=0.6u
w=26.64u
ng=4
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 40 40 0 0 {name=p4 lab=pad[9:0]}
C {lab_pin.sym} 40 0 0 1 {name=p2 sig_type=std_logic lab=pad[0]}
C {lab_pin.sym} 150 0 0 1 {name=p6 sig_type=std_logic lab=pad[1]}
C {lab_pin.sym} 260 0 0 1 {name=p7 sig_type=std_logic lab=pad[2]}
C {lab_pin.sym} 370 0 0 1 {name=p8 sig_type=std_logic lab=pad[3]}
C {lab_pin.sym} 540 0 0 1 {name=p9 sig_type=std_logic lab=pad[4]}
C {lab_pin.sym} 650 0 0 1 {name=p10 sig_type=std_logic lab=pad[5]}
C {lab_pin.sym} 760 0 0 1 {name=p11 sig_type=std_logic lab=pad[6]}
C {lab_pin.sym} 870 0 0 1 {name=p12 sig_type=std_logic lab=pad[7]}
C {lab_pin.sym} 1000 0 0 1 {name=p13 sig_type=std_logic lab=pad[8]}
C {lab_pin.sym} 1110 0 0 1 {name=p14 sig_type=std_logic lab=pad[9]}
C {iopin.sym} 220 140 0 0 {name=p5 lab=sub}
C {sg13g2_pr/rppd.sym} 0 -130 0 0 {name=R1
w=0.5e-6
l=12.9e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
lvs_format="R@name @pinlist \\$SUB=@body \\$[@model\\\\] w=@w l=@l b=@b m=@m"
}
