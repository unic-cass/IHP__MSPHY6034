v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 80 0 80 {lab=iovss}
N -160 20 -80 20 {lab=iovss}
N -80 20 -80 80 {lab=iovss}
N -160 80 -80 80 {lab=iovss}
N 0 0 0 20 {lab=out}
N -40 0 -40 50 {lab=in}
N -200 0 -40 0 {lab=in}
N -40 -50 -40 0 {lab=in}
N 0 -100 0 -50 {lab=supply}
N 0 80 0 100 {lab=iovss}
N -160 50 -100 50 {lab=sub}
N -100 50 -100 160 {lab=sub}
N -100 160 60 160 {lab=sub}
N 60 50 60 160 {lab=sub}
N 0 50 60 50 {lab=sub}
N 0 0 20 0 {lab=out}
N 0 -20 0 0 {lab=out}
N -200 0 -200 50 {lab=in}
N -60 80 -60 100 {lab=iovss}
N -80 80 -60 80 {lab=iovss}
C {iopin.sym} 0 -100 0 0 {name=p6 lab=supply
}
C {iopin.sym} 0 100 0 0 {name=p1 lab=iovss
}
C {sg13g2_pr/ptap1.sym} -60 130 0 0 {name=R1
model=ptap1
spiceprefix=X
w=8.315e-6
l=8.315e-6
lvs_format="tcleval(@name @pinlist @model A=69.122p P=406.6u )"
}
C {iopin.sym} 20 0 0 0 {name=p2 lab=out
}
C {iopin.sym} -200 0 0 1 {name=p3 lab=in
}
C {sg13g2_pr/sg13_hv_nmos.sym} -180 50 0 0 {name=M1
l=9.5u
w=126u
ng=14
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 50 0 0 {name=M2
l=0.5u
w=108u
ng=12
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 -50 0 0 {name=M3
l=0.5u
w=350u
ng=50
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 60 160 0 0 {name=p4 lab=sub
}
