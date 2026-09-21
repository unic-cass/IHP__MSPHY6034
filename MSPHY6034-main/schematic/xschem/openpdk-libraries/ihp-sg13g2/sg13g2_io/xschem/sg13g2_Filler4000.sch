v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -20 -110 0 {lab=iovss1}
N 0 -20 0 0 {lab=iovss2}
N 110 -20 110 0 {lab=iovss3}
N 220 -20 220 0 {lab=vss}
N -110 60 -110 80 {lab=sub}
N 110 80 220 80 {lab=sub}
N 220 60 220 80 {lab=sub}
N 110 60 110 80 {lab=sub}
N 0 80 110 80 {lab=sub}
N -0 60 0 80 {lab=sub}
N -110 80 0 80 {lab=sub}
N 200 -60 220 -60 {lab=vdd}
N -20 -60 -0 -60 {lab=iovdd}
C {iopin.sym} -110 -20 0 0 {name=p5 lab=iovss1}
C {iopin.sym} 0 -20 0 0 {name=p1 lab=iovss2}
C {sg13g2_pr/ptap1.sym} 110 30 0 0 {name=R3
model=ptap1
spiceprefix=X
w=19.5e-6
l=25e-6
lvs_format="tcleval(@name @pinlist @model A=478.725p P=88.1u )"
}
C {iopin.sym} 110 -20 0 0 {name=p2 lab=iovss3}
C {sg13g2_pr/ptap1.sym} 220 30 0 0 {name=R4
model=ptap1
spiceprefix=X
w=0.3e-6
l=19.5e-6
lvs_format="tcleval(@name @pinlist @model A=5.85p P=39.6u )"
}
C {iopin.sym} 220 -20 0 0 {name=p3 lab=vss}
C {iopin.sym} 0 -60 0 0 {name=p4 lab=iovdd}
C {iopin.sym} 220 -60 0 0 {name=p6 lab=vdd}
C {noconn.sym} -20 -60 0 0 {name=l1}
C {noconn.sym} 200 -60 0 0 {name=l2}
C {sg13g2_pr/ptap1.sym} -110 30 0 0 {name=R1
model=ptap1
spiceprefix=X
w=19.5e-6
l=25e-6
lvs_format="tcleval(@name @pinlist @model A=478.92p P=88.12u )"
}
C {sg13g2_pr/ptap1.sym} 0 30 0 0 {name=R2
model=ptap1
spiceprefix=X
w=19.5e-6
l=25e-6
lvs_format="tcleval(@name @pinlist @model A=469.17p P=87.12u )"
}
C {iopin.sym} 220 80 0 0 {name=p7 lab=sub}
