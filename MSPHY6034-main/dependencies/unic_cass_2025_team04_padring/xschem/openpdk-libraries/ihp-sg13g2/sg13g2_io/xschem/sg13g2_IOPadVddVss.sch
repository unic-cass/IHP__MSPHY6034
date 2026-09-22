v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 40 -120 40 {lab=sub}
N -20 40 0 40 {lab=sub}
N -140 -100 -140 40 {lab=sub}
N -200 -100 -140 -100 {lab=sub}
N -120 -80 -120 -20 {lab=vss}
N -130 -80 -120 -80 {lab=vss}
N -20 -100 -20 40 {lab=sub}
N -60 -100 -20 -100 {lab=sub}
N -170 -260 -170 -180 {lab=#net1}
N -120 -140 -120 -100 {lab=sub}
N -140 -100 -120 -100 {lab=sub}
N 120 -140 120 -100 {lab=sub}
N -20 -100 120 -100 {lab=sub}
N 80 -360 80 -190 {lab=vdd}
N -90 -180 80 -180 {lab=#net2}
N -170 -360 -130 -360 {lab=vdd}
N -170 -360 -170 -340 {lab=vdd}
N -130 -360 -130 -220 {lab=vdd}
N -130 -360 80 -360 {lab=vdd}
N -200 -360 -170 -360 {lab=vdd}
N -130 -140 -130 -80 {lab=vss}
N -200 -80 -130 -80 {lab=vss}
N -120 -80 0 -80 {lab=vss}
N 0 -80 0 -20 {lab=vss}
N 0 -80 110 -80 {lab=vss}
N 110 -140 110 -80 {lab=vss}
N 80 -360 220 -360 {lab=vdd}
N 220 -360 220 -340 {lab=vdd}
N 220 -260 230 -260 {lab=vss}
N 220 -250 220 -80 {lab=vss}
N 210 -260 220 -260 {lab=vss}
N 110 -80 220 -80 {lab=vss}
N 270 -210 270 -100 {lab=sub}
N 120 -100 270 -100 {lab=sub}
N 260 -290 270 -290 {lab=sub}
N 280 -190 280 -80 {lab=vss}
N 260 -310 280 -310 {lab=vss}
N 350 -240 360 -240 {lab=vss}
N 350 -250 350 -240 {lab=vss}
N 340 -240 350 -240 {lab=vss}
N 220 -250 350 -250 {lab=vss}
N 220 -260 220 -250 {lab=vss}
N 350 -160 350 -60 {lab=iovss}
N 280 -190 310 -190 {lab=vss}
N 280 -310 280 -190 {lab=vss}
N 270 -210 310 -210 {lab=sub}
N 270 -290 270 -210 {lab=sub}
N 220 -80 280 -80 {lab=vss}
N -200 -60 350 -60 {lab=iovss}
N -150 -300 -60 -300 {lab=sub}
N -60 -300 -60 -100 {lab=sub}
N -120 -100 -60 -100 {lab=sub}
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
w=4.9e-6
l=4.9e-6
lvs_format="tcleval(@name @pinlist @model A=24p P=160.6u )"
}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss
}
C {sg13g2_pr/ptap1.sym} 0 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=45.3e-6
l=45.3e-6
lvs_format="tcleval(@name @pinlist @model A=2051.93485p P=727.53u)"
}
C {sg13g2_Clamp_N43N43D4R.sym} 110 -180 0 0 {name=x1}
C {sg13g2_RCClampResistor.sym} -170 -300 0 0 {name=x2}
C {sg13g2_RCClampInverter_noptap.sym} -130 -180 0 0 {name=x3}
C {noconn.sym} -200 -380 0 1 {name=l1}
C {sg13g2_DCPDiode.sym} 220 -300 0 0 {name=x4}
C {sg13g2_DCPDiode.sym} 350 -200 2 0 {name=x5}
