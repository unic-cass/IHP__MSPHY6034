v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 40 -120 40 {lab=!}
N -20 40 0 40 {lab=!}
N -140 -100 -140 40 {lab=!}
N -120 -80 -120 -20 {lab=vss}
N -200 -80 -120 -80 {lab=vss}
N -20 -100 -20 40 {lab=!}
N 0 -60 0 -20 {lab=iovss1}
N -170 -380 -170 -340 {lab=iovdd}
N -200 -380 -170 -380 {lab=iovdd}
N -60 -100 -20 -100 {lab=!}
N -130 -380 80 -380 {lab=iovdd}
N -170 -260 -170 -180 {lab=#net1}
N -130 -140 -130 -60 {lab=iovss1}
N -200 -60 -130 -60 {lab=iovss1}
N -120 -140 -120 -100 {lab=!}
N -140 -100 -120 -100 {lab=!}
N -130 -380 -130 -220 {lab=iovdd}
N -170 -380 -130 -380 {lab=iovdd}
N 110 -140 110 -60 {lab=iovss}
N 120 -140 120 -100 {lab=!}
N -20 -100 120 -100 {lab=!}
N 80 -380 80 -190 {lab=iovdd}
N -90 -180 80 -180 {lab=#net2}
N -130 -60 0 -60 {lab=iovss1}
N -150 -300 -60 -300 {lab=!}
N -60 -300 -60 -100 {lab=!}
N -120 -100 -60 -100 {lab=!}
N -200 -100 -140 -100 {lab=!}
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
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss1
}
C {noconn.sym} -200 -360 0 1 {name=l1}
C {sg13g2_pr/ptap1.sym} 0 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=45.3e-6
l=45.3e-6
lvs_format="tcleval(@name @pinlist @model A=2052.0763p P=727.52u)"
}
C {sg13g2_Clamp_N43N43D4R.sym} 110 -180 0 0 {name=x1}
C {sg13g2_RCClampResistor.sym} -170 -300 0 0 {name=x2}
C {sg13g2_RCClampInverter_noptap.sym} -130 -180 0 0 {name=x3}
C {iopin.sym} 110 -60 0 1 {name=p2 lab=iovss
}
