v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -20 -110 0 {lab=iovss1}
N 0 -20 0 0 {lab=iovss2}
N 110 -20 110 0 {lab=iovss3}
N 220 -20 220 0 {lab=vss}
N -110 60 -110 80 {lab=sub}
N 110 80 220 80 {lab=sub}
N 220 60 220 80 {lab=sub}
N 110 60 110 80 {lab=sub}
N 0 80 110 80 {lab=sub}
N -0 60 0 80 {lab=sub}
N -110 80 0 80 {lab=sub}
N 200 -60 220 -60 {lab=vdd}
N -20 -60 0 -60 {lab=iovdd}
C {iopin.sym} 220 -20 0 0 {name=p3 lab=vss}
C {iopin.sym} 0 -60 0 0 {name=p4 lab=iovdd}
C {iopin.sym} 220 -60 0 0 {name=p6 lab=vdd}
C {noconn.sym} -20 -60 0 0 {name=l1}
C {noconn.sym} 200 -60 0 0 {name=l2}
C {iopin.sym} 220 80 0 0 {name=p7 lab=sub}
C {iopin.sym} -110 -20 0 0 {name=p1 lab=iovss1}
C {iopin.sym} 0 -20 0 0 {name=p2 lab=iovss2}
C {iopin.sym} 110 -20 0 0 {name=p5 lab=iovss3}
