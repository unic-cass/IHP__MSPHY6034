v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -240 230 -240 {lab=padres}
N -200 -240 -180 -240 {lab=pad}
N 110 -100 180 -100 {lab=sub}
N -160 -60 0 -60 {lab=vss}
N -100 -380 0 -380 {lab=avdd}
N -170 -230 -170 -220 {lab=pad}
N -180 -240 -170 -250 {lab=pad}
N -170 -260 -170 -250 {lab=pad}
N -170 -230 -160 -240 {lab=pad}
N -160 -140 -160 -60 {lab=vss}
N -200 -60 -160 -60 {lab=vss}
N -110 -100 10 -100 {lab=sub}
N 60 -240 140 -240 {lab=pad}
N -160 -240 -40 -240 {lab=pad}
N 170 -200 170 -60 {lab=vss}
N 100 -60 170 -60 {lab=vss}
N 180 -200 180 -100 {lab=sub}
N 170 -380 170 -280 {lab=avdd1}
N -40 -240 60 -240 {lab=pad}
N 100 -140 100 -60 {lab=vss}
N 40 -60 100 -60 {lab=vss}
N 110 -140 110 -100 {lab=sub}
N 20 -100 110 -100 {lab=sub}
N 20 40 40 40 {lab=sub}
N -200 -100 -110 -100 {lab=sub}
N 20 -100 20 40 {lab=sub}
N 10 -100 20 -100 {lab=sub}
N 40 -60 40 -20 {lab=vss}
N 0 -60 40 -60 {lab=vss}
N -160 -380 -160 -340 {lab=avdd}
N -200 -380 -160 -380 {lab=avdd}
N -170 -260 -150 -260 {lab=pad}
N -170 -220 -150 -220 {lab=pad}
N -120 -170 -110 -170 {lab=sub}
N -110 -170 -110 -100 {lab=sub}
N -110 -290 -110 -170 {lab=sub}
N -120 -310 -110 -310 {lab=sub}
N -120 -290 -110 -290 {lab=sub}
N -110 -310 -110 -290 {lab=sub}
N -120 -190 -100 -190 {lab=avdd}
N -100 -380 -100 -190 {lab=avdd}
N -160 -380 -100 -380 {lab=avdd}
N -180 -240 -160 -240 {lab=pad}
N 60 -190 70 -190 {lab=pad}
N 60 -240 60 -190 {lab=pad}
N 0 -380 0 -340 {lab=avdd}
N -40 -290 -30 -290 {lab=pad}
N -40 -290 -40 -240 {lab=pad}
N 0 -260 0 -60 {lab=vss}
N 10 -260 10 -100 {lab=sub}
C {iopin.sym} 230 -240 0 0 {name=p7 lab=padres
}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=avdd
}
C {iopin.sym} -200 -60 0 1 {name=p10 lab=vss
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=sub
}
C {sg13g2_Clamp_P20N0D_noptap.sym} 0 -300 0 0 {name=x1}
C {sg13g2_DCPDiode_noptap.sym} -160 -300 0 0 {name=x2}
C {sg13g2_Clamp_N20N0D.sym} 100 -180 0 0 {name=x3}
C {sg13g2_DCNDiode.sym} -160 -180 0 0 {name=x4}
C {sg13g2_SecondaryProtection.sym} 170 -240 0 0 {name=x5}
C {iopin.sym} -200 -240 0 1 {name=p2 lab=pad
}
C {sg13g2_pr/ptap1.sym} 40 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=51.6e-6
l=51.6e-6
lvs_format="tcleval(@name @pinlist @model A=2661.5448p P=1069.49u )"
}
C {iopin.sym} 170 -380 0 1 {name=p3 lab=avdd1
}
C {iopin.sym} -200 -20 0 1 {name=p1 lab=avss
}
C {noconn.sym} -200 -20 0 1 {name=l1}
