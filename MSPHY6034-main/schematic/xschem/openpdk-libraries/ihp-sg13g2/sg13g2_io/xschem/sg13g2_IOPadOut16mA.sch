v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 40 -100 40 {lab=sub}
N 110 40 130 40 {lab=sub}
N -100 -80 -100 -20 {lab=vss}
N 110 -100 110 40 {lab=sub}
N 130 -60 130 -20 {lab=iovss}
N 80 -60 130 -60 {lab=iovss}
N -140 -80 -100 -80 {lab=vss}
N -120 -100 -120 40 {lab=sub}
N -150 -100 -120 -100 {lab=sub}
N 80 -140 80 -60 {lab=iovss}
N 10 -60 80 -60 {lab=iovss}
N 70 -220 90 -220 {lab=pad}
N 70 -260 90 -260 {lab=pad}
N 80 -380 80 -340 {lab=iovdd1}
N -40 -380 80 -380 {lab=iovdd1}
N 70 -230 70 -220 {lab=pad}
N 60 -240 70 -250 {lab=pad}
N 70 -260 70 -250 {lab=pad}
N 70 -230 80 -240 {lab=pad}
N 120 -190 140 -190 {lab=iovdd1}
N 140 -380 140 -190 {lab=iovdd1}
N 120 -310 130 -310 {lab=sub}
N 120 -170 130 -170 {lab=sub}
N 130 -290 130 -170 {lab=sub}
N 120 -290 130 -290 {lab=sub}
N 130 -310 130 -290 {lab=sub}
N 60 -240 80 -240 {lab=pad}
N 130 -170 130 -100 {lab=sub}
N 110 -100 130 -100 {lab=sub}
N -200 -240 -180 -240 {lab=c2p}
N -100 -310 -100 -250 {lab=#net1}
N -100 -310 -80 -310 {lab=#net1}
N -100 -240 -100 -160 {lab=#net2}
N -100 -160 -80 -160 {lab=#net2}
N -50 -120 -50 -100 {lab=sub}
N -120 -100 -50 -100 {lab=sub}
N -40 -120 -40 -60 {lab=iovss}
N -200 -60 -40 -60 {lab=iovss}
N -50 -270 -50 -190 {lab=sub}
N -50 -190 -0 -190 {lab=sub}
N 0 -190 -0 -100 {lab=sub}
N -50 -100 -0 -100 {lab=sub}
N -40 -270 -40 -200 {lab=iovss}
N -40 -200 10 -200 {lab=iovss}
N 10 -200 10 -60 {lab=iovss}
N -40 -60 10 -60 {lab=iovss}
N -40 -380 -40 -350 {lab=iovdd1}
N 80 -240 160 -240 {lab=pad}
N -10 -240 60 -240 {lab=pad}
N 80 -380 140 -380 {lab=iovdd1}
N -150 -200 -150 -100 {lab=sub}
N -200 -100 -150 -100 {lab=sub}
N -140 -200 -140 -80 {lab=vss}
N -200 -80 -140 -80 {lab=vss}
N -140 -360 -140 -280 {lab=vdd}
N -200 -360 -140 -360 {lab=vdd}
N -130 -380 -130 -280 {lab=iovdd1}
N -200 -380 -130 -380 {lab=iovdd1}
N -0 -100 110 -100 {lab=sub}
N -10 -300 -10 -240 {lab=pad}
N -10 -240 -10 -170 {lab=pad}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=iovdd1
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=vss
}
C {iopin.sym} -200 -360 0 1 {name=p13 lab=vdd
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=sub
}
C {sg13g2_pr/ptap1.sym} -100 10 0 0 {name=R2
model=ptap1
spiceprefix=X
w=4.9e-6
l=4.9e-6
lvs_format="tcleval(@name @pinlist @model A=24p P=160.6u )"
}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss
}
C {sg13g2_pr/ptap1.sym} 130 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=66.44e-6
l=66.44e-6
lvs_format="tcleval(@name @pinlist @model A=4413.9448p P=953.3u)"
}
C {iopin.sym} -40 -380 0 1 {name=p2 lab=iovdd
}
C {iopin.sym} 160 -240 0 0 {name=p3 lab=pad
}
C {iopin.sym} -200 -240 0 1 {name=p4 lab=c2p
}
C {sg13g2_DCPDiode_noptap.sym} 80 -300 0 0 {name=x2}
C {sg13g2_DCNDiode.sym} 80 -180 0 0 {name=x1}
C {sg13g2_GateLevelUpInv_noptap.sym} -140 -240 0 0 {name=x3}
C {sg13g2_Clamp_N8N8D.sym} -40 -160 0 1 {name=x4}
C {sg13g2_Clamp_P8N8D_noptap.sym} -40 -310 0 1 {name=x5}
