v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 40 -120 40 {lab=sub}
N -160 -140 -160 -60 {lab=vss}
N -200 -60 -160 -60 {lab=vss}
N -140 -100 -140 40 {lab=sub}
N -200 -100 -140 -100 {lab=sub}
N -200 -80 -80 -80 {lab=avss}
N -160 -380 -160 -340 {lab=iovdd}
N -200 -380 -160 -380 {lab=iovdd}
N -170 -260 -80 -260 {lab=avss}
N -170 -220 -80 -220 {lab=avss}
N -120 -170 -110 -170 {lab=sub}
N -110 -170 -110 -100 {lab=sub}
N -140 -100 -110 -100 {lab=sub}
N -110 -290 -110 -170 {lab=sub}
N -120 -310 -110 -310 {lab=sub}
N -120 -290 -110 -290 {lab=sub}
N -110 -310 -110 -290 {lab=sub}
N -120 -190 -100 -190 {lab=iovdd}
N -100 -380 -100 -190 {lab=iovdd}
N -160 -380 -100 -380 {lab=iovdd}
N -80 -220 -80 -80 {lab=avss}
N -80 -260 -80 -220 {lab=avss}
N -120 -60 -120 -20 {lab=vss}
N -160 -60 -120 -60 {lab=vss}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=avdd
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=avss
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=sub
}
C {sg13g2_pr/ptap1.sym} -120 10 0 0 {name=R2
model=ptap1
spiceprefix=X
w=60.94e-6
l=60.94e-6
lvs_format="tcleval(@name @pinlist @model A=3713.5p P=661.14u )"
}
C {sg13g2_DCPDiode_noptap.sym} -160 -300 0 0 {name=x2}
C {sg13g2_DCNDiode.sym} -160 -180 0 0 {name=x4}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=vss
}
