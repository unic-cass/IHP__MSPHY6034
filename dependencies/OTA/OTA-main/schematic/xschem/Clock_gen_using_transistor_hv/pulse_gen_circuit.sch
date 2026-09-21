v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -200 70 -200 {lab=x}
N 20 -80 80 -80 {lab=y}
N -210 -220 -210 -190 {lab=clk}
N -210 -220 -100 -220 {lab=clk}
N -210 -110 -210 -60 {lab=clk_bar}
N -210 -60 -100 -60 {lab=clk_bar}
N -170 70 -120 70 {lab=out1}
N -150 280 -100 280 {lab=#net1}
N 20 300 50 300 {lab=phi4}
N 0 90 20 90 {lab=phi3}
N -250 280 -230 280 {lab=phi2}
N -270 70 -250 70 {lab=phi1}
N 150 -200 180 -200 {lab=phi1}
N 160 -80 190 -80 {lab=phi2}
C {lab_pin.sym} -100 -180 0 0 {name=p1 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -100 -100 0 0 {name=p2 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 180 -200 2 0 {name=p3 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 190 -80 0 1 {name=p4 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -120 110 0 0 {name=p5 sig_type=std_logic lab=x}
C {lab_pin.sym} -100 320 0 0 {name=p6 sig_type=std_logic lab=y}
C {lab_pin.sym} 40 -200 1 0 {name=p7 sig_type=std_logic lab=x}
C {lab_pin.sym} 40 -80 1 0 {name=p8 sig_type=std_logic lab=y}
C {lab_pin.sym} -270 70 2 1 {name=p9 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -250 280 0 0 {name=p10 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -180 -220 1 0 {name=p11 sig_type=std_logic lab=clk}
C {lab_pin.sym} 20 90 0 1 {name=p12 sig_type=std_logic lab=phi3}
C {lab_pin.sym} 50 300 0 1 {name=p13 sig_type=std_logic lab=phi4}
C {Clock_gen_using_transistor_hv/and.sym} 320 300 0 0 {name=x1}
C {Clock_gen_using_transistor_hv/and.sym} 340 510 0 0 {name=x2}
C {Clock_gen_using_transistor_hv/nor.sym} 250 -40 0 0 {name=x4}
C {Clock_gen_using_transistor_hv/nor.sym} 250 80 0 0 {name=x6}
C {Clock_gen_using_transistor_hv/inverter.sym} -190 -140 1 0 {name=x7}
C {Clock_gen_using_transistor_hv/buffer.sym} -80 170 0 0 {name=x8}
C {Clock_gen_using_transistor_hv/buffer.sym} -60 380 0 0 {name=x9}
C {lab_pin.sym} -30 -250 2 0 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 110 -230 2 0 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -50 -30 0 0 {name=p18 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -70 150 0 0 {name=p19 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -50 360 2 1 {name=p20 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -50 -150 0 0 {name=p21 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 110 -170 2 0 {name=p22 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -30 -130 2 0 {name=p23 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -70 30 2 0 {name=p24 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -50 240 2 0 {name=p25 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -190 -150 2 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -210 40 2 0 {name=p26 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 120 -50 2 0 {name=p28 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 120 -110 2 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -230 -150 0 0 {name=p30 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -210 100 0 0 {name=p31 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -190 310 0 0 {name=p32 sig_type=std_logic lab=gnd}
C {lab_pin.sym} -190 250 2 0 {name=p33 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -170 -60 1 0 {name=p34 sig_type=std_logic lab=clk_bar}
C {Clock_gen_using_transistor_hv/buffer.sym} 240 -100 0 0 {name=x3}
C {Clock_gen_using_transistor_hv/buffer.sym} 250 20 0 0 {name=x5}
C {lab_pin.sym} -150 70 1 0 {name=p35 sig_type=std_logic lab=out1}
C {iopin.sym} 360 -20 0 0 {name=p15 lab=vdd}
C {iopin.sym} 360 10 0 0 {name=p27 lab=gnd}
C {iopin.sym} 360 40 0 0 {name=p36 lab=phi1}
C {iopin.sym} 360 80 0 0 {name=p37 lab=phi2}
C {iopin.sym} 360 110 0 0 {name=p38 lab=phi3}
C {iopin.sym} 360 150 0 0 {name=p39 lab=phi4}
C {iopin.sym} 360 -50 0 0 {name=p40 lab=clk}
