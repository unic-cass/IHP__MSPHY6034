v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -100 230 -100 {lab=PHI1}
N 180 -80 230 -80 {lab=vinp}
N 180 -60 230 -60 {lab=PHI2}
N 180 -40 230 -40 {lab=vinm}
N 180 -20 230 -20 {lab=PHI3}
N 180 0 230 0 {lab=vop}
N 180 20 230 20 {lab=PHI4}
N 180 40 230 40 {lab=vom}
N 180 80 230 80 {lab=bv}
N 180 100 230 100 {lab=VICM_REF}
N 180 120 230 120 {lab=VCM_REF}
N 180 140 230 140 {lab=AVDD}
N 180 60 230 60 {lab=gnd}
C {lab_pin.sym} 230 140 0 1 {name=p11 sig_type=std_logic lab=AVDD
}
C {lab_pin.sym} 230 120 2 0 {name=p12 sig_type=std_logic lab=VCM_REF}
C {lab_pin.sym} 230 100 2 0 {name=p13 sig_type=std_logic lab=VICM_REF}
C {lab_pin.sym} 230 80 2 0 {name=p14 sig_type=std_logic lab=bv}
C {devices/lab_pin.sym} 230 20 2 0 {name=p15 sig_type=std_logic lab=PHI4
}
C {devices/lab_pin.sym} 230 -20 2 0 {name=p16 sig_type=std_logic lab=PHI3
}
C {lab_pin.sym} 230 -40 2 0 {name=p17 sig_type=std_logic lab=vinm}
C {devices/lab_pin.sym} 230 -60 2 0 {name=p18 sig_type=std_logic lab=PHI2
}
C {lab_pin.sym} 230 -80 0 1 {name=p19 sig_type=std_logic lab=vinp
}
C {devices/lab_pin.sym} 230 -100 2 0 {name=p20 sig_type=std_logic lab=PHI1
}
C {devices/lab_pin.sym} 230 0 2 0 {name=p21 sig_type=std_logic lab=vop
}
C {devices/lab_pin.sym} 230 40 2 0 {name=p22 sig_type=std_logic lab=vom
}
C {imp_boost_tech.sym} 30 20 0 0 {name=x1}
C {Clock_gen_using_transistor_hv/pulse_gen_circuit.sym} 320 30 0 0 {name=x2}
C {lab_pin.sym} 470 -10 2 0 {name=p2 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 470 10 2 0 {name=p3 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 470 30 2 0 {name=p4 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 470 50 2 0 {name=p5 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 470 70 2 0 {name=p6 sig_type=std_logic lab=phi3}
C {lab_pin.sym} 470 90 2 0 {name=p25 sig_type=std_logic lab=phi4}
C {devices/lab_pin.sym} 230 60 2 0 {name=p26 sig_type=std_logic lab=gnd
}
C {iopin.sym} 710 -20 0 0 {name=p7 lab=clk}
C {iopin.sym} 710 10 0 0 {name=p8 lab=DVDD}
C {iopin.sym} 710 40 0 0 {name=p9 lab=gnd}
C {iopin.sym} 710 70 0 0 {name=p23 lab=vop}
C {iopin.sym} 710 110 0 0 {name=p24 lab=vom}
C {iopin.sym} 710 130 0 0 {name=p29 lab=bv}
C {iopin.sym} 710 170 0 0 {name=p30 lab=vinp}
C {iopin.sym} 710 200 0 0 {name=p10 lab=vinm}
C {iopin.sym} 710 -50 0 0 {name=p31 lab=AVDD}
C {vcm_ref_vicm_ref_gen.sym} 60 270 0 0 {name=x3}
C {devices/lab_pin.sym} 470 -30 2 0 {name=p32 sig_type=std_logic lab=clk
}
C {iopin.sym} 710 -90 0 0 {name=p33 lab=VDD}
C {lab_pin.sym} 210 230 0 1 {name=p34 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 210 250 2 0 {name=p35 sig_type=std_logic lab=bv}
C {devices/lab_pin.sym} 210 270 2 0 {name=p36 sig_type=std_logic lab=gnd
}
C {lab_pin.sym} 210 310 2 0 {name=p27 sig_type=std_logic lab=VICM_REF}
C {lab_pin.sym} 210 290 2 0 {name=p28 sig_type=std_logic lab=VCM_REF}
