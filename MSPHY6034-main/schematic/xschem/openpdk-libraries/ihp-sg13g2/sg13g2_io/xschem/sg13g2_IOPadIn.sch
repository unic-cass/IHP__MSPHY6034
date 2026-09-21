v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 40 -100 40 {lab=!}
N 40 40 60 40 {lab=!}
N -100 -80 -100 -20 {lab=vss}
N 40 -100 40 40 {lab=!}
N 60 -60 60 -20 {lab=iovss1}
N 30 -100 40 -100 {lab=!}
N -200 -240 -180 -240 {lab=pad}
N 10 -60 60 -60 {lab=iovss1}
N -100 -80 20 -80 {lab=vss}
N -100 -380 10 -380 {lab=iovdd}
N -200 -80 -100 -80 {lab=vss}
N -120 -100 -120 40 {lab=!}
N -160 -140 -160 -60 {lab=iovss}
N -200 -60 -160 -60 {lab=iovss}
N -170 -220 -150 -220 {lab=pad}
N -170 -260 -150 -260 {lab=pad}
N -160 -380 -160 -340 {lab=iovdd}
N -200 -380 -160 -380 {lab=iovdd}
N -170 -230 -170 -220 {lab=pad}
N -180 -240 -170 -250 {lab=pad}
N -170 -260 -170 -250 {lab=pad}
N -170 -230 -160 -240 {lab=pad}
N -160 -240 -20 -240 {lab=pad}
N 60 -240 80 -240 {lab=p2c}
N 10 -380 10 -280 {lab=iovdd}
N 20 -360 20 -280 {lab=vdd}
N -200 -360 20 -360 {lab=vdd}
N -120 -190 -100 -190 {lab=iovdd}
N -100 -380 -100 -190 {lab=iovdd}
N -160 -380 -100 -380 {lab=iovdd}
N -120 -310 -80 -310 {lab=iovss1}
N -120 -170 -110 -170 {lab=!}
N -110 -290 -110 -170 {lab=!}
N -120 -290 -110 -290 {lab=!}
N 10 -200 10 -60 {lab=iovss1}
N 30 -200 30 -100 {lab=!}
N -110 -100 30 -100 {lab=!}
N 20 -200 20 -80 {lab=vss}
N -180 -240 -160 -240 {lab=pad}
N -110 -170 -110 -100 {lab=!}
N -120 -100 -110 -100 {lab=!}
N -200 -100 -120 -100 {lab=!}
N -80 -310 -80 -60 {lab=iovss1}
N -80 -60 10 -60 {lab=iovss1}
C {iopin.sym} -200 -380 0 1 {name=p9 lab=iovdd
}
C {iopin.sym} -200 -80 0 1 {name=p10 lab=vss
}
C {iopin.sym} -200 -360 0 1 {name=p13 lab=vdd
}
C {iopin.sym} -200 -100 0 1 {name=p14 lab=!
}
C {sg13g2_pr/ptap1.sym} -100 10 0 0 {name=R2
model=ptap1
spiceprefix=X
w=4.9e-6
l=4.9e-6
lvs_format="tcleval(@name @pinlist @model A=21.981p P=147.74u )"
}
C {iopin.sym} -200 -60 0 1 {name=p1 lab=iovss
}
C {sg13g2_pr/ptap1.sym} 60 10 0 0 {name=R1
model=ptap1
spiceprefix=X
w=73.6e-6
l=73.6e-6
lvs_format="tcleval(@name @pinlist @model A=5379.0466p P=677.04u)"
}
C {iopin.sym} 10 -60 0 1 {name=p2 lab=iovss1
}
C {sg13g2_LevelDown.sym} 20 -240 0 0 {name=x4}
C {iopin.sym} -200 -240 0 1 {name=p3 lab=pad
}
C {iopin.sym} 80 -240 0 0 {name=p4 lab=p2c
}
C {sg13g2_DCPDiode.sym} -160 -300 0 0 {name=x2}
C {sg13g2_DCNDiode.sym} -160 -180 0 0 {name=x1}
