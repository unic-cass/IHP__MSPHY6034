v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 0 0 20 {lab=core}
N 0 -100 0 -80 {lab=iovdd}
N -80 0 0 0 {lab=core}
N 0 -20 0 0 {lab=core}
N -180 0 -140 0 {lab=pad}
N -180 -100 0 -100 {lab=iovdd}
N -180 100 -140 100 {lab=iovss}
N -80 100 0 100 {lab=!}
N 0 80 0 100 {lab=!}
C {iopin.sym} -180 100 0 1 {name=p3 lab=iovss}
C {iopin.sym} 0 0 0 0 {name=p4 lab=core}
C {iopin.sym} -180 0 0 1 {name=p6 lab=pad}
C {sg13g2_pr/ptap1.sym} -110 100 3 1 {name=R1
model=ptap1
spiceprefix=X
w=3.005e-6
l=3.005e-6
lvs_format="tcleval(@name @pinlist @model A=9.0304p P=53.12u )"
}
C {iopin.sym} -180 -100 0 1 {name=p1 lab=iovdd}
C {sg13g2_pr/dpantenna.sym} 0 -50 0 1 {name=D1
model=dpantenna
l=4.98u
w=0.64u
spiceprefix=X
}
C {sg13g2_pr/dantenna.sym} 0 50 0 1 {name=D2
model=dantenna
l=3.1u
w=0.64u
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} -110 0 3 0 {name=R3
w=1e-6
l=2e-6
model=rppd
body=sub
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
lvs_format="R@name @pinlist @body \\$[@model\\\\] w=@w l=@l b=@b m=@m"
}
C {lab_pin.sym} 0 100 0 1 {name=p2 sig_type=std_logic lab=sub}
C {iopin.sym} 0 140 0 0 {name=p5 lab=sub
}
