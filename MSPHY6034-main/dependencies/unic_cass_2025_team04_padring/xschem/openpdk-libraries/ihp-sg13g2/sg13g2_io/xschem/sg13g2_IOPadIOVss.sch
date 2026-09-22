v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 40 -120 40 {lab=sub}
N -200 -60 -160 -60 {lab=iovss}
N 20 40 40 40 {lab=sub}
N -140 -100 -140 40 {lab=sub}
N -200 -100 -140 -100 {lab=sub}
N -120 -80 -120 -20 {lab=vss}
N -200 -80 -120 -80 {lab=vss}
N 20 -100 20 40 {lab=sub}
N 40 -60 40 -20 {lab=iovss}
N -160 -380 -160 -340 {lab=iovdd}
N -200 -380 -160 -380 {lab=iovdd}
N -30 -100 20 -100 {lab=sub}
N -140 -100 -30 -100 {lab=sub}
N -110 -60 40 -60 {lab=iovss}
N -160 -260 -150 -260 {lab=iovss}
N -160 -220 -70 -220 {lab=iovss}
N -160 -120 -160 -60 {lab=iovss}
N -160 -260 -160 -220 {lab=iovss}
N -170 -260 -160 -260 {lab=iovss}
N -40 -170 -30 -170 {lab=sub}
N -30 -170 -30 -100 {lab=sub}
N -30 -290 -30 -170 {lab=sub}
N -120 -310 -110 -310 {lab=iovss}
N -120 -290 -30 -290 {lab=sub}
N -40 -380 -40 -190 {lab=iovdd}
N -160 -380 -40 -380 {lab=iovdd}
N -80 -140 -80 -120 {lab=iovss}
N -160 -120 -80 -120 {lab=iovss}
N -160 -220 -160 -120 {lab=iovss}
N -110 -310 -110 -60 {lab=iovss}
N -160 -60 -110 -60 {lab=iovss}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=iovdd
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=vss
}
C {iopin.sym} -200 -360 0 1 {name=p13 lab=vdd
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=sub
}
C {sg13g2_pr/ptap1.sym} -120 10 0 0 {name=R2
model=ptap1
spiceprefix=X
w=4.9e-6
l=4.9e-6
lvs_format="tcleval(@name @pinlist @model A=24p P=160.6u )"
}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss
}
C {noconn.sym} -200 -360 0 1 {name=l1}
C {sg13g2_pr/ptap1.sym} 40 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=73.6e-6
l=73.6e-6
lvs_format="tcleval(@name @pinlist @model A=5379.0466p P=677.04u )"
}
C {sg13g2_DCPDiode.sym} -160 -300 0 0 {name=x2}
C {sg13g2_DCNDiode.sym} -80 -180 0 0 {name=x1}
