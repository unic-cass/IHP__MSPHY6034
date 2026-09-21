v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1180 -140 1380 -140 {lab=vo}
N 590 -140 590 -130 {lab=vo}
N 790 -140 790 -130 {lab=vo}
N 990 -140 990 -130 {lab=vo}
N 790 -140 990 -140 {lab=vo}
N 1180 -140 1180 -130 {lab=vo}
N 990 -140 1180 -140 {lab=vo}
N 1380 -140 1380 -130 {lab=vo}
N 390 -140 390 -130 {lab=vo}
N 590 -140 790 -140 {lab=vo}
N 390 -140 590 -140 {lab=vo}
N 190 -140 390 -140 {lab=vo}
N 190 -140 190 -130 {lab=vo}
N -10 -140 -10 -130 {lab=vo}
N -10 -140 190 -140 {lab=vo}
N 590 -70 590 -30 {lab=C4}
N 790 -70 790 -30 {lab=C3}
N 990 -70 990 -30 {lab=C2}
N 1180 -70 1180 -30 {lab=C1}
N 1380 -70 1380 -30 {lab=vref}
N -260 -140 -10 -140 {lab=vo}
N 1380 -140 1420 -140 {lab=vo}
N -10 -70 -10 -30 {lab=C_MSB}
N 190 -70 190 -30 {lab=C6}
N 390 -70 390 -30 {lab=C5}
N -340 -140 -320 -140 {lab=vin}
N 10 -380 10 -350 {lab=#net1}
N 10 -290 10 -270 {lab=#net2}
C {sg13g2_pr/cap_cmim.sym} 1380 -100 0 0 {name=C1
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1180 -100 0 0 {name=C2
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 990 -100 0 0 {name=C3
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 790 -100 0 0 {name=C4
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=4
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 590 -100 0 0 {name=C5
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=8
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 390 -100 0 0 {name=C6
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=16
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 190 -100 0 0 {name=C7
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=32
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -10 -100 0 0 {name=C8
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=64
spiceprefix=X}
C {iopin.sym} -340 -140 0 1 {name=p1 lab=vin}
C {iopin.sym} 1420 -140 0 0 {name=p2 lab=vo}
C {iopin.sym} 190 -30 0 1 {name=p4 lab=C6}
C {iopin.sym} 390 -30 0 1 {name=p5 lab=C5}
C {iopin.sym} 590 -30 0 1 {name=p6 lab=C4}
C {iopin.sym} 790 -30 0 1 {name=p7 lab=C3}
C {iopin.sym} 990 -30 0 1 {name=p8 lab=C2}
C {iopin.sym} 1180 -30 0 1 {name=p9 lab=C1}
C {iopin.sym} 1380 -30 0 1 {name=p10 lab=vref}
C {iopin.sym} -10 -30 0 1 {name=p12 lab=C_MSB}
C {sg13g2_pr/cap_cmim.sym} 10 -320 0 0 {name=C9
model=cap_cmim
w=5.71e-6
l=5.71e-6
m=40
spiceprefix=X
}
C {noconn.sym} 10 -380 0 0 {name=l3}
C {noconn.sym} 10 -270 0 0 {name=l4}
C {sg13g2_pr/cap_cmim.sym} -290 -140 3 0 {name=C10
model=cap_cmim
w=1.5e-6
l=1.5e-6
m=1
spiceprefix=X
}
