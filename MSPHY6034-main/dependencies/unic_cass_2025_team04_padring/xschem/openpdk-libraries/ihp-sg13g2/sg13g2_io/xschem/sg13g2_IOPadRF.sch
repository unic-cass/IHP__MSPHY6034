v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -240 -170 -220 {lab=pad}
N -160 -140 -160 -60 {lab=iovss}
N -200 -60 -160 -60 {lab=iovss}
N -160 -380 -160 -340 {lab=iovdd}
N -200 -380 -160 -380 {lab=iovdd}
N -170 -260 -150 -260 {lab=pad}
N -170 -220 -150 -220 {lab=pad}
N -120 -170 -110 -170 {lab=!}
N -110 -290 -110 -170 {lab=!}
N -120 -310 -100 -310 {lab=iovss}
N -120 -290 -110 -290 {lab=!}
N -120 -190 -90 -190 {lab=iovdd}
N -90 -380 -90 -190 {lab=iovdd}
N -160 -380 -90 -380 {lab=iovdd}
N -160 -60 -100 -60 {lab=iovss}
N -200 -240 -170 -240 {lab=pad}
N -170 -260 -170 -240 {lab=pad}
N -110 -170 -110 -100 {lab=!}
N -200 -100 -110 -100 {lab=!}
N -100 -310 -100 -60 {lab=iovss}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=iovdd
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=vss
}
C {iopin.sym} -200 -360 0 1 {name=p13 lab=vdd
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=!
}
C {sg13g2_DCPDiode.sym} -160 -300 0 0 {name=x2}
C {sg13g2_DCNDiode.sym} -160 -180 0 0 {name=x4}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss
}
C {iopin.sym} -200 -240 0 1 {name=p2 lab=pad
}
C {noconn.sym} -200 -360 0 1 {name=l1}
C {noconn.sym} -200 -80 0 1 {name=l2}
