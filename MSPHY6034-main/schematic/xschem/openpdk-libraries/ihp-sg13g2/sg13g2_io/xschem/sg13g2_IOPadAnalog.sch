v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 -240 230 -240 {lab=padres}
N -200 -240 -180 -240 {lab=pad}
N -140 40 -120 40 {lab=!}
N 110 -100 180 -100 {lab=!}
N -80 -60 0 -60 {lab=iovss}
N -100 -380 0 -380 {lab=iovdd}
N -170 -230 -170 -220 {lab=pad}
N -180 -240 -170 -250 {lab=pad}
N -170 -260 -170 -250 {lab=pad}
N -170 -230 -160 -240 {lab=pad}
N -160 -140 -160 -60 {lab=iovss}
N -200 -60 -160 -60 {lab=iovss}
N -110 -100 10 -100 {lab=!}
N 60 -240 140 -240 {lab=pad}
N -160 -240 -40 -240 {lab=pad}
N 170 -200 170 -60 {lab=iovss}
N 100 -60 170 -60 {lab=iovss}
N 180 -200 180 -100 {lab=!}
N 170 -380 170 -280 {lab=iovdd1}
N -40 -240 60 -240 {lab=pad}
N 100 -140 100 -60 {lab=iovss}
N 40 -60 100 -60 {lab=iovss}
N 110 -140 110 -100 {lab=!}
N 20 -100 110 -100 {lab=!}
N 20 40 40 40 {lab=!}
N -140 -100 -140 40 {lab=!}
N -120 -80 -120 -20 {lab=vss}
N -200 -80 -120 -80 {lab=vss}
N 20 -100 20 40 {lab=!}
N 10 -100 20 -100 {lab=!}
N 40 -60 40 -20 {lab=iovss}
N 0 -60 40 -60 {lab=iovss}
N -160 -380 -160 -340 {lab=iovdd}
N -200 -380 -160 -380 {lab=iovdd}
N -170 -260 -150 -260 {lab=pad}
N -170 -220 -150 -220 {lab=pad}
N -120 -170 -110 -170 {lab=!}
N -110 -170 -110 -100 {lab=!}
N -140 -100 -110 -100 {lab=!}
N -110 -290 -110 -170 {lab=!}
N -120 -310 -80 -310 {lab=iovss}
N -120 -290 -110 -290 {lab=!}
N -120 -190 -100 -190 {lab=iovdd}
N -100 -380 -100 -190 {lab=iovdd}
N -160 -380 -100 -380 {lab=iovdd}
N -180 -240 -160 -240 {lab=pad}
N 60 -190 70 -190 {lab=pad}
N 60 -240 60 -190 {lab=pad}
N 0 -380 0 -340 {lab=iovdd}
N -40 -290 -30 -290 {lab=pad}
N -40 -290 -40 -240 {lab=pad}
N 0 -260 0 -60 {lab=iovss}
N 10 -260 10 -100 {lab=!}
N -200 -100 -140 -100 {lab=!}
N -80 -310 -80 -60 {lab=iovss}
N -160 -60 -80 -60 {lab=iovss}
C {iopin.sym} 230 -240 0 0 {name=p7 lab=padres
}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=iovdd
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=vss
}
C {iopin.sym} -200 -360 0 1 {name=p13 lab=vdd
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=!
}
C {sg13g2_pr/ptap1.sym} -120 10 0 0 {name=R2
model=ptap1
spiceprefix=X
w=4.89e-6
l=4.89e-6
lvs_format="tcleval(@name @pinlist @model A=23.85p P=159.6u )"
}
C {sg13g2_Clamp_P20N0D.sym} 0 -300 0 0 {name=x1}
C {sg13g2_DCPDiode.sym} -160 -300 0 0 {name=x2}
C {sg13g2_Clamp_N20N0D.sym} 100 -180 0 0 {name=x3}
C {sg13g2_DCNDiode.sym} -160 -180 0 0 {name=x4}
C {sg13g2_SecondaryProtection.sym} 170 -240 0 0 {name=x5}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss
}
C {iopin.sym} -200 -240 0 1 {name=p2 lab=pad
}
C {noconn.sym} -200 -360 0 1 {name=l1}
C {sg13g2_pr/ptap1.sym} 40 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=66.14e-6
l=66.14e-6
lvs_format="tcleval(@name @pinlist @model A=4273.4p P=593.62u )"
}
C {iopin.sym} 170 -380 0 1 {name=p3 lab=iovdd1
}
