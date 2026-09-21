v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -590 100 -480 100 {lab=nbias}
N -520 -80 -440 -80 {lab=tail}
N -440 100 -440 130 {lab=gnd}
N -580 130 -440 130 {lab=gnd}
N -520 -110 -520 -80 {lab=tail}
N -630 -80 -520 -80 {lab=tail}
N -520 -170 -520 -140 {lab=vdd}
N -700 -140 -560 -140 {lab=b_v}
N -440 50 -440 70 {lab=vom}
N -630 100 -630 130 {lab=gnd}
N -630 50 -630 70 {lab=vop}
N -70 50 -70 70 {lab=#net1}
N -70 50 -10 50 {lab=#net1}
N -70 0 -70 50 {lab=#net1}
N -10 50 -10 100 {lab=#net1}
N -30 100 -10 100 {lab=#net1}
N 40 -80 120 -80 {lab=tail_cmfb}
N 120 100 120 130 {lab=gnd}
N -70 130 120 130 {lab=gnd}
N 40 -110 40 -80 {lab=tail_cmfb}
N 40 -170 40 -140 {lab=vdd}
N -70 100 -70 130 {lab=gnd}
N -70 0 -30 0 {lab=#net1}
N -130 0 -70 0 {lab=#net1}
N -80 -60 -30 -60 {lab=tail_cmfb}
N -80 -80 40 -80 {lab=tail_cmfb}
N -80 -80 -80 -60 {lab=tail_cmfb}
N -130 -60 -80 -60 {lab=tail_cmfb}
N -100 -30 -30 -30 {lab=vdd}
N 120 0 120 20 {lab=nbias}
N 120 20 120 70 {lab=nbias}
N 320 20 390 20 {lab=nbias}
N -10 100 80 100 {lab=#net1}
N -440 50 -390 50 {lab=vom}
N -440 0 -440 50 {lab=vom}
N -670 50 -630 50 {lab=vop}
N -630 0 -630 50 {lab=vop}
N -770 -170 -520 -170 {lab=vdd}
N -770 -170 -770 -140 {lab=vdd}
N -700 -140 -700 -90 {lab=b_v}
N -730 -140 -700 -140 {lab=b_v}
N -770 -90 -700 -90 {lab=b_v}
N -770 -110 -770 -90 {lab=b_v}
N -100 -170 40 -170 {lab=vdd}
N -440 130 -70 130 {lab=gnd}
N 320 120 320 130 {lab=gnd}
N 120 130 320 130 {lab=gnd}
N 320 20 320 60 {lab=nbias}
N 120 20 320 20 {lab=nbias}
N -390 220 -350 220 {lab=vinm}
N -390 220 -390 250 {lab=vinm}
N -350 200 -350 220 {lab=vinm}
N -350 280 -350 310 {lab=VICM_REF}
N -170 220 -130 220 {lab=vinp}
N -130 220 -130 250 {lab=vinp}
N -170 200 -170 220 {lab=vinp}
N -170 280 -170 310 {lab=VICM_REF}
N -350 310 -170 310 {lab=VICM_REF}
N -630 -80 -630 -60 {lab=tail}
N -440 -80 -440 -60 {lab=tail}
N -100 -170 -100 -30 {lab=vdd}
N -130 -30 -100 -30 {lab=vdd}
N 120 -80 120 -60 {lab=tail_cmfb}
N -240 -170 -100 -170 {lab=vdd}
N -460 -30 -440 -30 {lab=vdd}
N -460 -170 -460 -30 {lab=vdd}
N -520 -170 -460 -170 {lab=vdd}
N -630 -30 -460 -30 {lab=vdd}
N 110 -30 120 -30 {lab=vdd}
N 110 -170 110 -30 {lab=vdd}
N 40 -170 110 -170 {lab=vdd}
N -580 130 -580 180 {lab=gnd}
N -630 130 -580 130 {lab=gnd}
N -240 250 -170 250 {lab=vdd}
N -240 -170 -240 250 {lab=vdd}
N -460 -170 -240 -170 {lab=vdd}
N -350 250 -240 250 {lab=vdd}
N -630 250 -630 280 {lab=vdd}
N -770 250 -770 280 {lab=gnd}
N -710 250 -710 280 {lab=gnd}
N -770 250 -710 250 {lab=gnd}
N -730 280 -710 280 {lab=gnd}
N -710 280 -710 310 {lab=gnd}
N -770 310 -710 310 {lab=gnd}
N -670 250 -670 310 {lab=vdd}
N -670 250 -630 250 {lab=vdd}
N -670 310 -630 310 {lab=vdd}
N -630 210 -630 250 {lab=vdd}
N -770 180 -770 250 {lab=gnd}
N -770 180 -580 180 {lab=gnd}
C {sg13g2_pr/sg13_hv_nmos.sym} -610 100 0 1 {name=M7
l=2u
w=2u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -650 -30 0 0 {name=M8
l=1u
w=4.5u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -460 100 0 0 {name=M9
l=2u
w=2u
ng=1
m=2
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -420 -30 0 1 {name=M10
l=1u
w=4.5u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -540 -140 0 0 {name=M11
l=1u
w=4u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -540 -80 3 0 {name=p12 sig_type=std_logic lab=tail}
C {lab_pin.sym} -510 100 0 0 {name=p14 sig_type=std_logic lab=nbias}
C {sg13g2_pr/sg13_hv_nmos.sym} -50 100 0 1 {name=M6
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -150 -30 0 0 {name=M13
l=0.50u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 100 100 0 0 {name=M14
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 140 -30 0 1 {name=M15
l=0.5u
w=2.25u
ng=1
m=2
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 20 -140 0 0 {name=M16
l=1u
w=4u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 40 -80 0 0 {name=p19 sig_type=std_logic lab=tail_cmfb}
C {sg13g2_pr/sg13_lv_pmos.sym} -10 -30 0 1 {name=M17
l=0.50u
w=2.25u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 390 20 2 0 {name=p5 sig_type=std_logic lab=nbias}
C {iopin.sym} -770 -90 1 0 {name=p1 lab=b_v}
C {iopin.sym} -670 -30 0 1 {name=p4 lab=vinm}
C {iopin.sym} 160 -30 2 1 {name=p6 lab=vcm_ref}
C {iopin.sym} -400 -30 0 0 {name=p21 lab=vinp}
C {iopin.sym} -670 50 2 0 {name=p22 lab=vop}
C {iopin.sym} -390 50 0 0 {name=p23 lab=vom}
C {iopin.sym} -540 130 3 1 {name=p7 lab=gnd}
C {lab_pin.sym} -440 20 2 0 {name=p2 sig_type=std_logic lab=vom}
C {lab_pin.sym} -630 20 0 0 {name=p15 sig_type=std_logic lab=vop}
C {lab_pin.sym} -170 -30 3 0 {name=p24 sig_type=std_logic lab=vop}
C {lab_pin.sym} 10 -30 3 0 {name=p25 sig_type=std_logic lab=vom}
C {lab_pin.sym} 0 -140 0 0 {name=p11 sig_type=std_logic lab=b_v}
C {sg13g2_pr/sg13_hv_pmos.sym} -750 -140 0 1 {name=M1
l=1u
w=4u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/cap_cmim.sym} 320 90 0 0 {name=C1
model=cap_cmim
w=14.0e-6
l=50.0e-6
m=1
spiceprefix=X}
C {iopin.sym} -620 -170 3 0 {name=p13 lab=vdd}
C {sg13g2_pr/sg13_hv_pmos.sym} -370 250 0 0 {name=M2
l=1u
w=50u
ng=5
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -150 250 0 1 {name=M3
l=1u
w=50u
ng=5
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -350 200 3 1 {name=p8 sig_type=std_logic lab=vinm}
C {lab_pin.sym} -170 200 3 1 {name=p9 sig_type=std_logic lab=vinp}
C {iopin.sym} -260 310 3 1 {name=p10 lab=VICM_REF}
C {sg13g2_pr/sg13_hv_pmos.sym} -650 280 0 0 {name=M4
l=0.4u
w=4.5u
ng=1
m=4
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -750 280 0 1 {name=M5
l=2u
w=2u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -630 210 0 0 {name=p3 sig_type=std_logic lab=vdd}
