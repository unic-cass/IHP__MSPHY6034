v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 80 220 100 {lab=#net1}
N 40 -100 220 -100 {lab=iovdd}
N 40 -70 100 -70 {lab=iovdd}
N 220 -70 280 -70 {lab=iovdd}
N 180 -70 180 -20 {lab=gate}
N 0 -20 180 -20 {lab=gate}
N 280 -160 280 -70 {lab=iovdd}
N 0 -100 0 -20 {lab=gate}
N 220 -160 280 -160 {lab=iovdd}
N 100 -160 100 -70 {lab=iovdd}
N 0 -160 100 -160 {lab=iovdd}
N 220 0 220 20 {lab=iovss}
N 40 -40 220 -40 {lab=pad}
N 220 -40 220 -20 {lab=pad}
N 220 -160 220 -100 {lab=iovdd}
N 100 -160 220 -160 {lab=iovdd}
C {iopin.sym} 220 0 0 0 {name=p3 lab=iovss}
C {iopin.sym} 0 -40 0 1 {name=p4 lab=gate}
C {iopin.sym} 220 -20 0 0 {name=p6 lab=pad}
C {sg13g2_pr/ptap1.sym} 220 50 0 0 {name=R1
model=ptap1
spiceprefix=X
w=8.185e-6
l=8.185e-6
lvs_format="tcleval(@name @pinlist @model A=67.0344p P=394.32u )"
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -70 0 0 {name=M1
l=0.6u
w=13.32u
ng=2
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 200 -70 2 1 {name=M2
l=0.6u
w=13.32u
ng=2
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 280 -160 0 0 {name=p1 lab=iovdd}
C {sg13g2_pr/dpantenna.sym} 0 -130 0 0 {name=D1
model=dpantenna
l=0.48u
w=0.48u
spiceprefix=X
}
C {iopin.sym} 220 100 0 0 {name=p2 lab=sub}
