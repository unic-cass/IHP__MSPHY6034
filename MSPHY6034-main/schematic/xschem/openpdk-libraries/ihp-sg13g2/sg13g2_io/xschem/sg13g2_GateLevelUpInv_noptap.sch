v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 -80 -140 -80 {lab=iovdd}
N -210 80 -150 80 {lab=vss}
N -210 0 -190 0 {lab=core}
N -110 0 -90 0 {lab=pgate}
N 160 0 180 0 {lab=ngate}
N -210 -60 -150 -60 {lab=vdd}
N -150 -60 -150 -40 {lab=vdd}
N -140 -80 -140 -40 {lab=iovdd}
N -200 60 -160 60 {lab=sub}
N -160 40 -160 60 {lab=sub}
N -150 40 -150 80 {lab=vss}
N 60 0 80 0 {lab=core}
N -150 -60 120 -60 {lab=vdd}
N 120 -60 120 -40 {lab=vdd}
N -140 -80 130 -80 {lab=iovdd}
N 130 -80 130 -40 {lab=iovdd}
N -160 60 110 60 {lab=sub}
N 110 40 110 60 {lab=sub}
N -150 80 120 80 {lab=vss}
N 120 40 120 80 {lab=vss}
N -200 140 -180 140 {lab=sub}
N -200 60 -200 140 {lab=sub}
N -210 60 -200 60 {lab=sub}
C {iopin.sym} -210 -80 0 1 {name=p6 lab=iovdd
}
C {iopin.sym} -210 80 0 1 {name=p1 lab=vss
}
C {iopin.sym} -90 0 0 0 {name=p2 lab=pgate
}
C {iopin.sym} -210 0 0 1 {name=p3 lab=core
}
C {iopin.sym} -210 -60 0 1 {name=p4 lab=vdd
}
C {iopin.sym} -210 60 0 1 {name=p5 lab=sub
}
C {sg13g2_LevelUpInv_noptap.sym} -150 0 0 0 {name=x1}
C {sg13g2_LevelUpInv_noptap.sym} 120 0 0 0 {name=x2}
C {iopin.sym} 180 0 0 0 {name=p7 lab=ngate
}
C {lab_pin.sym} 60 0 0 0 {name=p8 sig_type=std_logic lab=core}
