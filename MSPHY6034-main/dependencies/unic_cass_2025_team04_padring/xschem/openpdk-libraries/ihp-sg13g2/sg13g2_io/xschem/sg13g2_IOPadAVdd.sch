v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 40 0 40 {lab=sub}
N -200 -100 -120 -100 {lab=sub}
N -20 -100 -20 40 {lab=sub}
N 0 -60 0 -20 {lab=vss1}
N -170 -380 -170 -340 {lab=avdd}
N -200 -380 -170 -380 {lab=avdd}
N -60 -100 -20 -100 {lab=sub}
N -130 -380 80 -380 {lab=avdd}
N -170 -260 -170 -180 {lab=#net1}
N -130 -140 -130 -60 {lab=vss1}
N -200 -60 -130 -60 {lab=vss1}
N -120 -140 -120 -100 {lab=sub}
N -130 -380 -130 -220 {lab=avdd}
N -170 -380 -130 -380 {lab=avdd}
N 110 -140 110 -60 {lab=vss}
N 120 -140 120 -100 {lab=sub}
N -20 -100 120 -100 {lab=sub}
N 80 -380 80 -190 {lab=avdd}
N -90 -180 80 -180 {lab=#net2}
N -130 -60 0 -60 {lab=vss1}
N -150 -300 -60 -300 {lab=sub}
N -60 -300 -60 -100 {lab=sub}
N -120 -100 -60 -100 {lab=sub}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=avdd
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=avss
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=!
}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=vss1
}
C {sg13g2_pr/ptap1.sym} 0 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=37.5e-6
l=37.5e-6
lvs_format="tcleval(@name @pinlist @model A=1403.2524p P=658.84u)"
}
C {sg13g2_Clamp_N43N43D4R.sym} 110 -180 0 0 {name=x1}
C {sg13g2_RCClampResistor.sym} -170 -300 0 0 {name=x2}
C {sg13g2_RCClampInverter_noptap.sym} -130 -180 0 0 {name=x3}
C {iopin.sym} 110 -60 0 1 {name=p2 lab=vss
}
