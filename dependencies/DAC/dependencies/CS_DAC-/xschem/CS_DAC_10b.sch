v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -200 270 -200 {
lab=VDD}
N 570 -260 710 -260 {
lab=#net1}
N 570 -240 710 -240 {
lab=#net2}
N 570 -220 710 -220 {
lab=#net3}
N 570 -200 710 -200 {
lab=#net4}
N 570 -180 710 -180 {
lab=#net5}
N 570 -160 710 -160 {
lab=#net6}
N 570 -140 710 -140 {
lab=#net7}
N 760 -870 760 -750 {
lab=X5}
N 780 -870 780 -750 {
lab=X6}
N 800 -870 800 -750 {
lab=X7}
N 820 -870 820 -750 {
lab=VDD}
N 760 -450 760 -310 {
lab=#net8}
N 780 -450 780 -310 {
lab=#net9}
N 800 -450 800 -310 {
lab=#net10}
N 820 -450 820 -310 {
lab=#net11}
N 840 -450 840 -310 {
lab=#net12}
N 860 -450 860 -310 {
lab=#net13}
N 880 -450 880 -310 {
lab=#net14}
N 150 -180 270 -180 {
lab=VSS}
N 840 -870 840 -750 {
lab=VSS}
N 120 -260 270 -260 {
lab=X8}
N 120 -240 270 -240 {
lab=X9}
N 120 -220 270 -220 {
lab=X10}
N 680 -280 710 -280 {
lab=CLK}
N 1030 -260 1030 -250 {
lab=OUTN}
N 1050 -240 1050 -230 {
lab=OUTP}
N 1420 -250 1450 -250 {
lab=OUTN}
N 1420 -230 1490 -230 {
lab=OUTP}
N 970 -260 1030 -260 {
lab=OUTN}
N 1030 -380 1030 -260 {
lab=OUTN}
N 970 -240 1050 -240 {
lab=OUTP}
N 1050 -340 1050 -240 {
lab=OUTP}
N 1490 -340 1540 -340 {
lab=OUTP}
N 1450 -380 1530 -380 {
lab=OUTN}
N 1450 -380 1450 -250 {
lab=OUTN}
N 1030 -380 1450 -380 {
lab=OUTN}
N 1490 -340 1490 -230 {
lab=OUTP}
N 1050 -340 1490 -340 {
lab=OUTP}
C {lab_pin.sym} 1120 -130 0 0 {name=p1 sig_type=std_logic lab=X4}
C {lab_pin.sym} 1120 -170 0 0 {name=p2 sig_type=std_logic lab=X2}
C {lab_pin.sym} 1120 -150 0 0 {name=p3 sig_type=std_logic lab=X3}
C {lab_pin.sym} 150 -200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 -870 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1120 -190 2 1 {name=p6 sig_type=std_logic lab=X1}
C {lab_pin.sym} 800 -870 3 1 {name=p7 sig_type=std_logic lab=X7}
C {lab_pin.sym} 780 -870 3 1 {name=p8 sig_type=std_logic lab=X6}
C {lab_pin.sym} 150 -180 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -870 1 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -220 0 0 {name=p11 sig_type=std_logic lab=X10}
C {lab_wire.sym} 120 -240 0 0 {name=p12 sig_type=std_logic lab=X9}
C {lab_wire.sym} 120 -260 0 0 {name=p13 sig_type=std_logic lab=X8}
C {lab_wire.sym} 1120 -250 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 760 -870 0 0 {name=p15 sig_type=std_logic lab=X5}
C {lab_wire.sym} 680 -280 0 0 {name=p16 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 970 -200 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -210 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 -220 0 1 {name=p19 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 1120 -230 0 0 {name=p20 sig_type=std_logic lab=VBIAS}
C {lab_pin.sym} 1420 -210 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -280 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1540 -340 0 1 {name=p35 sig_type=std_logic lab=OUTP}
C {lab_pin.sym} 1530 -380 0 1 {name=p36 sig_type=std_logic lab=OUTN}
C {ipin.sym} 670 -370 0 0 { name=p23 lab=X9 }
C {ipin.sym} 670 -390 0 0 { name=p24 lab=X8 }
C {ipin.sym} 670 -410 0 0 { name=p25 lab=X7 }
C {ipin.sym} 670 -430 0 0 { name=p26 lab=X6 }
C {ipin.sym} 670 -450 0 0 { name=p27 lab=X5 }
C {ipin.sym} 670 -470 0 0 { name=p28 lab=X4 }
C {ipin.sym} 670 -490 0 0 { name=p29 lab=X3 }
C {ipin.sym} 670 -510 0 0 { name=p30 lab=X2 }
C {ipin.sym} 670 -530 0 0 { name=p31 lab=X10 }
C {ipin.sym} 670 -550 0 0 { name=p32 lab=X1 }
C {iopin.sym} 670 -570 0 0 { name=p33 lab=VSS }
C {ipin.sym} 670 -590 0 0 { name=p34 lab=VDD }
C {ipin.sym} 670 -610 0 0 { name=p37 lab=VBIAS }
C {iopin.sym} 670 -630 0 0 { name=p38 lab=OUTP }
C {iopin.sym} 670 -650 0 0 { name=p39 lab=OUTN }
C {ipin.sym} 670 -670 0 0 { name=p40 lab=CLK }
C {thermo_decoder.sym} 820 -600 3 1 {name=x3}
C {thermo_decoder.sym} 420 -200 0 0 {name=x4}
C {6MSB.sym} 860 -120 0 0 {name=x1}
C {4LSB_weighted.sym} 1270 -190 0 0 {name=x2}
C {devices/code_shown.sym} 1040 -680 0 0 {name=LIB1 only_toplevel=false value="
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/cdl/sg13g2_stdcell.cdl

"}
