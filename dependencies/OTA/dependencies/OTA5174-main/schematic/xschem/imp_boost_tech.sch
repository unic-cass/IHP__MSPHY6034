v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 10 -360 10 {lab=bv}
N -390 40 -360 40 {lab=ota_vinp}
N -390 80 -360 80 {lab=ota_vinm}
N -390 110 -360 110 {lab=gnd}
N -610 -220 -580 -220 {lab=#net1}
N -610 -240 -580 -240 {lab=#net2}
N -20 -220 10 -220 {lab=#net3}
N -110 -220 -80 -220 {lab=#net4}
N -110 -240 -80 -240 {lab=#net5}
N -20 -240 10 -240 {lab=#net6}
N -350 -240 -250 -240 {lab=ota_vinp}
N -350 -220 -250 -220 {lab=ota_vinm}
N 390 -240 710 -240 {lab=vom}
N 390 -220 520 -220 {lab=vop}
N -930 -370 -930 -290 {lab=phi1}
N -910 -370 -910 -290 {lab=phi2}
N -190 -370 -190 -290 {lab=phi1}
N -170 -370 -170 -290 {lab=phi2}
N 310 -370 310 -290 {lab=phi1}
N 330 -370 330 -290 {lab=phi2}
N 70 -370 70 -290 {lab=phi1}
N 90 -370 90 -290 {lab=phi2}
N -690 -370 -690 -290 {lab=phi3}
N -670 -370 -670 -290 {lab=phi4}
N -430 -370 -430 -290 {lab=phi3}
N -410 -370 -410 -290 {lab=phi4}
N 150 -240 250 -240 {lab=ota_vop}
N 150 -220 250 -220 {lab=ota_vom}
N -580 -420 -580 -240 {lab=#net2}
N -520 -420 -520 -240 {lab=#net7}
N -80 -420 -80 -240 {lab=#net5}
N -20 -420 -20 -240 {lab=#net6}
N -520 -220 -520 20 {lab=#net8}
N -20 -220 -20 30 {lab=#net3}
N -80 -220 -80 30 {lab=#net4}
N -580 -220 -580 20 {lab=#net1}
N -520 -240 -490 -240 {lab=#net7}
N -520 -220 -490 -220 {lab=#net8}
N -850 -240 -750 -240 {lab=#net9}
N -850 -220 -750 -220 {lab=#net10}
C {lab_pin.sym} -390 80 0 0 {name=p2 sig_type=std_logic lab=ota_vinm}
C {lab_pin.sym} -390 40 0 0 {name=p5 sig_type=std_logic lab=ota_vinp
}
C {lab_pin.sym} -390 10 0 0 {name=p7 sig_type=std_logic lab=bv}
C {lab_pin.sym} -180 40 2 0 {name=p8 sig_type=std_logic lab=ota_vop}
C {lab_pin.sym} -180 80 2 0 {name=p9 sig_type=std_logic lab=ota_vom}
C {lab_pin.sym} -180 110 2 0 {name=p10 sig_type=std_logic lab=VCM_REF}
C {lab_pin.sym} -990 -240 1 0 {name=p13 sig_type=std_logic lab=vinp}
C {lab_pin.sym} -990 -220 3 0 {name=p14 sig_type=std_logic lab=vinm}
C {lab_pin.sym} 210 -220 3 0 {name=p15 sig_type=std_logic lab=ota_vom}
C {lab_pin.sym} 200 -240 1 0 {name=p16 sig_type=std_logic lab=ota_vop}
C {sg13g2_pr/cap_cmim.sym} -550 -330 1 0 {name=C4
model=cap_cmim
w=26e-6
l=12.8e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -550 -160 1 0 {name=C5
model=cap_cmim
w=26e-6
l=12.8e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -50 -160 1 0 {name=C9
model=cap_cmim
w=5.7e-6
l=5.7e-6
m=2
spiceprefix=X}
C {lab_pin.sym} -300 -240 1 0 {name=p17 sig_type=std_logic lab=ota_vinp}
C {lab_pin.sym} -300 -220 1 1 {name=p18 sig_type=std_logic lab=ota_vinm}
C {lab_pin.sym} 430 -240 1 0 {name=p19 sig_type=std_logic lab=vom}
C {lab_pin.sym} 420 -220 3 0 {name=p20 sig_type=std_logic lab=vop}
C {lab_pin.sym} -270 180 2 0 {name=p11 sig_type=std_logic lab=VICM_REF}
C {lab_pin.sym} -930 -370 1 0 {name=p21 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -910 -370 1 0 {name=p22 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -190 -370 1 0 {name=p23 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -170 -370 1 0 {name=p24 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 310 -370 1 0 {name=p25 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 330 -370 1 0 {name=p26 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 70 -370 1 0 {name=p27 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 90 -370 1 0 {name=p28 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -690 -370 1 0 {name=p29 sig_type=std_logic lab=phi3}
C {lab_pin.sym} -670 -370 1 0 {name=p30 sig_type=std_logic lab=phi4}
C {lab_pin.sym} -430 -370 1 0 {name=p31 sig_type=std_logic lab=phi3}
C {lab_pin.sym} -410 -370 1 0 {name=p32 sig_type=std_logic lab=phi4}
C {lab_pin.sym} -920 -160 2 0 {name=p33 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -680 -160 2 0 {name=p34 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -420 -160 2 0 {name=p35 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -180 -160 2 0 {name=p36 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 80 -160 2 0 {name=p37 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 320 -160 2 0 {name=p38 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -390 110 0 0 {name=p39 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -180 10 0 1 {name=p42 sig_type=std_logic lab=vdd}
C {iopin.sym} -800 -10 0 0 {name=p1 lab=vinp}
C {iopin.sym} -800 20 0 0 {name=p3 lab=vinm}
C {iopin.sym} -800 50 0 0 {name=p4 lab=vop}
C {iopin.sym} -810 90 0 0 {name=p6 lab=vom}
C {iopin.sym} -810 270 0 0 {name=p46 lab=phi1}
C {iopin.sym} -810 310 0 0 {name=p47 lab=phi2}
C {iopin.sym} -810 360 0 0 {name=p48 lab=phi3}
C {iopin.sym} -810 400 0 0 {name=p49 lab=phi4}
C {iopin.sym} -800 120 2 1 {name=p50 sig_type=std_logic lab=VICM_REF}
C {iopin.sym} -810 440 0 0 {name=p51 sig_type=std_logic lab=bv}
C {iopin.sym} -800 190 0 0 {name=p52 sig_type=std_logic lab=gnd}
C {iopin.sym} -810 160 0 0 {name=p53 sig_type=std_logic lab=vdd}
C {iopin.sym} -810 230 2 1 {name=p54 sig_type=std_logic lab=VCM_REF}
C {CHOPPER.sym} -990 -180 0 0 {name=x8}
C {CHOPPER.sym} -750 -180 0 0 {name=x1}
C {CHOPPER.sym} -490 -180 0 0 {name=x3}
C {CHOPPER.sym} -250 -180 0 0 {name=x4}
C {CHOPPER.sym} 10 -180 0 0 {name=x5}
C {CHOPPER.sym} 250 -180 0 0 {name=x6}
C {Differntial_ended_symbol_making.sym} -270 180 1 0 {name=x7}
C {sg13g2_pr/cap_cmim.sym} -50 -320 1 0 {name=C2
model=cap_cmim
w=5.7e-6
l=5.7e-6
m=2
spiceprefix=X}
