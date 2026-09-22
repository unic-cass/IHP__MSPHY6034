v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 0 320 0 {lab=core}
N -40 0 -40 70 {lab=#net1}
N -130 -60 -110 -60 {lab=iovdd}
N 0 70 40 70 {lab=sub}
N 300 70 340 70 {lab=sub}
N 300 100 300 120 {lab=vss}
N 230 180 340 180 {lab=sub}
N -160 0 -140 0 {lab=pad}
N 300 0 300 40 {lab=core}
N -110 40 -110 60 {lab=iovss}
N -110 -60 -110 -40 {lab=iovdd}
N -160 120 210 120 {lab=vss}
N 40 70 40 180 {lab=sub}
N -70 0 -40 0 {lab=#net1}
N -40 -70 -40 0 {lab=#net1}
N 300 -40 300 0 {lab=core}
N 340 70 340 180 {lab=sub}
N 0 0 0 40 {lab=#net2}
N 260 0 260 70 {lab=#net3}
N -100 40 -100 180 {lab=sub}
N -100 180 40 180 {lab=sub}
N -290 60 -290 120 {lab=iovss}
N -290 60 -110 60 {lab=iovss}
N 300 -120 300 -70 {lab=vdd}
N -110 -110 -110 -60 {lab=iovdd}
N -110 -110 -0 -110 {lab=iovdd}
N -0 -110 0 -70 {lab=iovdd}
N 80 0 80 70 {lab=#net2}
N 120 10 120 40 {lab=#net4}
N 40 -0 80 0 {lab=#net2}
N 0 -40 0 0 {lab=#net2}
N 80 -60 80 0 {lab=#net2}
N 0 -110 120 -110 {lab=iovdd}
N 120 -110 120 -60 {lab=iovdd}
N 210 120 300 120 {lab=vss}
N 120 10 170 10 {lab=#net4}
N 120 -30 120 10 {lab=#net4}
N 170 10 170 80 {lab=#net4}
N 210 0 210 50 {lab=#net3}
N 210 -0 260 0 {lab=#net3}
N 260 -70 260 0 {lab=#net3}
N 210 -60 230 -60 {lab=sub}
N 210 -30 210 -0 {lab=#net3}
N 40 -20 40 -0 {lab=#net2}
N 0 0 40 -0 {lab=#net2}
N 40 -20 170 -20 {lab=#net2}
N 170 -60 170 -20 {lab=#net2}
N 210 -120 210 -90 {lab=vdd}
N 210 -120 300 -120 {lab=vdd}
N 300 -140 300 -120 {lab=vdd}
N 390 -120 390 -60 {lab=vdd}
N 350 -120 390 -120 {lab=vdd}
N 350 -120 350 -60 {lab=vdd}
N 300 -120 350 -120 {lab=vdd}
N 390 -30 410 -30 {lab=vdd}
N 410 -120 410 -30 {lab=vdd}
N 390 -120 410 -120 {lab=vdd}
N 40 180 140 180 {lab=sub}
N 210 110 210 120 {lab=vss}
N 210 80 220 80 {lab=sub}
N 220 80 220 180 {lab=sub}
N 140 180 220 180 {lab=sub}
N -290 180 -100 180 {lab=sub}
N -110 60 -110 100 {lab=iovss}
N -110 100 120 100 {lab=iovss}
N 140 70 140 180 {lab=sub}
N 120 70 140 70 {lab=sub}
N 230 -60 230 180 {lab=sub}
N 220 180 230 180 {lab=sub}
C {iopin.sym} -130 -60 0 1 {name=p6 lab=iovdd
}
C {iopin.sym} -160 120 0 1 {name=p1 lab=vss
}
C {sg13g2_pr/ptap1.sym} -140 150 0 0 {name=R1
model=ptap1
spiceprefix=X
w=1.42e-6
l=1.42e-6
lvs_format="tcleval(@name @pinlist @model A=2.019p P=14.06u )"
}
C {iopin.sym} 320 0 0 0 {name=p2 lab=core
}
C {iopin.sym} -160 0 0 1 {name=p3 lab=pad
}
C {sg13g2_pr/sg13_hv_pmos.sym} -20 -70 0 0 {name=M5
l=0.45u
w=4.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 70 0 0 {name=M6
l=0.45u
w=1.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 70 0 0 {name=M7
l=0.13u
w=2.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -70 0 0 {name=M8
l=0.13u
w=4.75u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 300 -140 0 1 {name=p4 lab=vdd
}
C {sg13g2_SecondaryProtection.sym} -110 0 0 0 {name=x1}
C {iopin.sym} -290 60 0 1 {name=p7 lab=iovss
}
C {iopin.sym} -160 180 0 1 {name=p5 lab=sub
}
C {sg13g2_pr/ptap1.sym} -290 150 0 0 {name=R2
model=ptap1
spiceprefix=X
w=0.896e-6
l=0.896e-6
lvs_format="tcleval(@name @pinlist @model A=0.804p P=5.96u )"
}
C {sg13g2_pr/sg13_hv_pmos.sym} 100 -60 0 0 {name=M1
l=0.45u
w=4.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 70 0 0 {name=M2
l=0.45u
w=1.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 190 80 0 0 {name=M3
l=0.45u
w=2.65u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 190 -60 0 0 {name=M4
l=0.45u
w=2.65u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 370 -60 0 0 {name=M9
l=0.45u
w=4.65u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
