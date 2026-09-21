v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -60 -0 -30 {lab=p1}
N 0 30 -0 60 {lab=p2}
C {iopin.sym} 0 -60 0 0 {name=p6 lab=p1
}
C {iopin.sym} 0 60 0 0 {name=p1 lab=p2
}
C {sg13g2_pr/rppd.sym} 0 0 0 0 {name=R1
w=1e-6
l=520e-6
model=rppd
body=sub!
spiceprefix=X
b=0
m=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
lvs_format="R@name @pinlist \\$SUB=@body \\$[@model\\\\] w=@w l=@l b=@b m=@m"
}
C {iopin.sym} 80 -60 0 0 {name=p2 lab=!
}
