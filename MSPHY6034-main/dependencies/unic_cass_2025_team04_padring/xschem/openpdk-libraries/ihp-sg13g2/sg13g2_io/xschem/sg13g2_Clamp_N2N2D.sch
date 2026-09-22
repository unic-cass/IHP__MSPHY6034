v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 60 220 80 {lab=#net1}
N 0 60 0 80 {lab=#net1}
N 0 80 220 80 {lab=#net1}
N 40 -100 220 -100 {lab=pad}
N 40 -40 220 -40 {lab=iovss}
N 40 -70 100 -70 {lab=sub}
N 220 -70 280 -70 {lab=sub}
N 220 -40 220 0 {lab=iovss}
N 0 -20 0 0 {lab=gate}
N 180 -70 180 -20 {lab=gate}
N 0 -20 180 -20 {lab=gate}
N 0 -70 0 -20 {lab=gate}
N 220 -120 220 -100 {lab=pad}
C {iopin.sym} 220 -20 0 0 {name=p3 lab=iovss}
C {iopin.sym} 0 -40 0 1 {name=p4 lab=gate}
C {iopin.sym} 220 -120 0 0 {name=p6 lab=pad}
C {sg13g2_pr/ptap1.sym} 220 30 0 0 {name=R1
model=ptap1
spiceprefix=X
w=7.47e-6
l=7.47e-6
lvs_format="tcleval(@name @pinlist @model A=55.7736p P=328.08u )"
}
C {sg13g2_pr/dantenna.sym} 0 30 0 0 {name=D1
model=dantenna
l=0.78u
w=0.78u
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 20 -70 0 0 {name=M1
l=0.6u
w=4.4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 200 -70 2 1 {name=M2
l=0.6u
w=4.4u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 100 -70 0 1 {name=p1 sig_type=std_logic lab=sub}
C {lab_pin.sym} 280 -70 0 1 {name=p2 sig_type=std_logic lab=sub}
C {iopin.sym} 220 80 0 0 {name=p5 lab=sub}
