v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -40 0 -40 {lab=vdd}
N -20 0 0 0 {lab=vss}
N -20 60 0 60 {lab=sub}
C {iopin.sym} -20 0 0 1 {name=p1 lab=vss
}
C {sg13g2_pr/ptap1.sym} 0 30 0 0 {name=R1
model=ptap1
spiceprefix=X
w=0.79e-6
l=0.79e-6
lvs_format="tcleval(@name @pinlist @model A=0.6255p P=4.77u )"
}
C {iopin.sym} -20 -40 0 1 {name=p4 lab=vdd
}
C {iopin.sym} -20 60 0 1 {name=p5 lab=sub
}
C {noconn.sym} 0 -40 0 1 {name=l1}
