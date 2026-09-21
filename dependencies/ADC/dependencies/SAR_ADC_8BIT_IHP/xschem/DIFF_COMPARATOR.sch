v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -860 210 -810 {
lab=#net1}
N 530 -860 530 -810 {
lab=#net1}
N 780 -680 780 -660 {
lab=out-}
N 700 -740 740 -740 {
lab=#net2}
N 700 -680 700 -630 {
lab=#net2}
N 700 -630 740 -630 {
lab=#net2}
N 530 -750 530 -680 {
lab=#net2}
N 530 -680 700 -680 {
lab=#net2}
N 700 -740 700 -680 {
lab=#net2}
N 440 -480 440 -440 {
lab=#net2}
N 530 -480 620 -480 {
lab=#net2}
N 620 -480 620 -440 {
lab=#net2}
N 530 -680 530 -480 {
lab=#net2}
N 440 -480 530 -480 {
lab=#net2}
N 620 -380 620 -340 {
lab=gnd}
N 440 -380 440 -340 {
lab=gnd}
N 120 -480 120 -440 {
lab=#net3}
N 210 -480 300 -480 {
lab=#net3}
N 300 -480 300 -440 {
lab=#net3}
N 120 -480 210 -480 {
lab=#net3}
N 300 -380 300 -340 {
lab=gnd}
N 120 -380 120 -340 {
lab=gnd}
N 370 -860 530 -860 {
lab=#net1}
N 370 -920 370 -860 {
lab=#net1}
N 210 -860 370 -860 {
lab=#net1}
N 40 -680 210 -680 {
lab=#net3}
N 210 -680 210 -480 {
lab=#net3}
N 210 -750 210 -680 {
lab=#net3}
N -40 -680 -40 -660 {
lab=out+}
N 0 -740 40 -740 {
lab=#net3}
N 40 -680 40 -630 {
lab=#net3}
N 0 -630 40 -630 {
lab=#net3}
N 40 -740 40 -680 {
lab=#net3}
N -40 -340 120 -340 {
lab=gnd}
N 300 -340 440 -340 {
lab=gnd}
N 620 -340 780 -340 {
lab=gnd}
N 210 -680 400 -410 {
lab=#net3}
N 340 -410 530 -680 {
lab=#net2}
N -140 -680 -40 -680 {
lab=out+}
N -40 -710 -40 -680 {
lab=out+}
N 780 -680 880 -680 {
lab=out-}
N 780 -710 780 -680 {
lab=out-}
N 60 -410 80 -410 {
lab=clk}
N 160 -780 170 -780 {
lab=v+}
N 570 -780 580 -780 {
lab=v-}
N 660 -410 680 -410 {
lab=clk}
N 960 -570 960 -540 {lab=gnd}
N 960 -570 1000 -570 {lab=gnd}
N 1000 -570 1000 -450 {lab=gnd}
N 960 -450 1000 -450 {lab=gnd}
N 960 -480 960 -450 {lab=gnd}
N 910 -510 960 -510 {lab=sub}
N 780 -630 830 -630 {lab=gnd}
N -90 -630 -40 -630 {lab=gnd}
N 780 -740 830 -740 {lab=well}
N -90 -740 -40 -740 {lab=well}
N 370 -1020 370 -980 {lab=#net4}
N 370 -1140 370 -1080 {lab=vdd}
N -40 -1140 370 -1140 {
lab=vdd}
N 60 -950 60 -410 {lab=clk}
N 50 -410 60 -410 {
lab=clk}
N 60 -950 330 -950 {lab=clk}
N 300 -1050 330 -1050 {lab=vbias}
N 370 -950 430 -950 {lab=well}
N 370 -1050 430 -1050 {lab=well}
N 430 -1050 430 -950 {lab=well}
N 370 -1140 780 -1140 {
lab=vdd}
N -40 -1140 -40 -770 {lab=vdd}
N -40 -600 -40 -340 {lab=gnd}
N 120 -410 300 -410 {
lab=gnd}
N 120 -340 300 -340 {
lab=gnd}
N 440 -410 620 -410 {
lab=gnd}
N 440 -340 620 -340 {
lab=gnd}
N 780 -600 780 -340 {lab=gnd}
N 210 -780 530 -780 {
lab=well}
N 780 -1140 780 -770 {lab=vdd}
N 1280 -550 1280 -530 {lab=well}
N 1280 -470 1280 -450 {lab=vdd}
C {iopin.sym} 780 -1140 0 0 {name=p1 lab=vdd}
C {iopin.sym} 780 -340 0 0 {name=p2 lab=gnd}
C {ipin.sym} 160 -780 0 0 {name=p3 lab=v+}
C {ipin.sym} 580 -780 0 1 {name=p4 lab=v-}
C {ipin.sym} 50 -410 0 0 {name=p6 lab=clk}
C {opin.sym} 880 -680 0 0 {name=p7 lab=out-}
C {opin.sym} -140 -680 0 1 {name=p8 lab=out+}
C {sg13g2_pr/sg13_lv_pmos.sym} 190 -780 0 0 {name=M2
l=200n
w=8u
ng=2
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 550 -780 0 1 {name=M1
l=200n
w=8u
ng=2
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 760 -740 0 0 {name=M4
l=0.200u
w=8u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -740 0 1 {name=M5
l=0.200u
w=8u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 -630 2 0 {name=M11
l=0.200u
w=4.0u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 760 -630 2 1 {name=M12
l=0.200u
w=4.0u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 -410 2 0 {name=M6
l=0.200u
w=4.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 -410 2 1 {name=M10
l=0.200u
w=4.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -410 2 0 {name=M7
l=0.200u
w=4.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 -410 2 1 {name=M8
l=0.200u
w=4.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 680 -410 2 0 {name=p11 sig_type=std_logic lab=clk}
C {sg13g2_pr/sg13_lv_nmos.sym} 980 -510 0 1 {name=M3
l=0.200u
w=4.0u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 960 -570 0 0 {name=p12 sig_type=std_logic lab=gnd
m=4}
C {lab_pin.sym} 540 -410 3 0 {name=p14 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 210 -410 3 0 {name=p15 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 380 -780 1 1 {name=p18 sig_type=std_logic lab=well}
C {lab_pin.sym} 830 -740 0 1 {name=p19 sig_type=std_logic lab=well}
C {lab_pin.sym} -90 -740 2 1 {name=p20 sig_type=std_logic lab=well}
C {lab_pin.sym} 830 -630 0 1 {name=p21 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -90 -630 2 1 {name=p22 sig_type=std_logic lab=gnd}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 -950 0 0 {name=M13
l=0.3u
w=18u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 350 -1050 0 0 {name=M9
l=0.3u
w=18u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 300 -1050 0 0 {name=p5 lab=vbias}
C {lab_pin.sym} 430 -1000 0 1 {name=p23 sig_type=std_logic lab=well}
C {sg13g2_pr/annotate_fet_params.sym} -40 -610 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/ntap1.sym} 1280 -500 2 0 {name=R1
model=ntap1
spiceprefix=X
w=49.2880405e-6
l=0.3119595e-6

}
C {lab_pin.sym} 1280 -450 2 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1280 -550 0 1 {name=p17 sig_type=std_logic lab=well}
C {lab_pin.sym} 910 -510 0 0 {name=p10 sig_type=std_logic lab=gnd}
