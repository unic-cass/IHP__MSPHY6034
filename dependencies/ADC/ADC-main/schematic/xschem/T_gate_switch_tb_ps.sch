v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -180 -80 620 320 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5e-05
x2=8.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=control
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -180 -490 620 -90 {flags=graph
y1=0.6
y2=0.62
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5e-05
x2=8.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vref}
B 2 650 -80 1450 320 {flags=graph
y1=-0.0006
y2=0.61
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5e-05
x2=8.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vo
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -900 40 -900 70 {lab=vref}
N -900 130 -900 160 {lab=GND}
N -900 190 -900 220 {lab=Control}
N -900 280 -900 310 {lab=GND}
N -900 -110 -900 -80 {lab=vdd}
N -900 -20 -900 10 {lab=GND}
N -540 60 -540 90 {lab=Control}
N -460 -20 -400 -20 {lab=Vo}
N -540 -270 -540 -100 {lab=#net1}
N -460 -350 -400 -350 {lab=Vo}
N -400 -190 -400 -20 {lab=Vo}
N -370 -190 -350 -190 {lab=Vo}
N -400 -350 -400 -190 {lab=Vo}
N -540 -500 -540 -430 {lab=Control}
N -750 -500 -540 -500 {lab=Control}
N -750 -500 -750 -180 {lab=Control}
N -750 -180 -720 -180 {lab=Control}
N -680 -20 -620 -20 {lab=GND}
N -680 30 -620 30 {lab=GND}
N -680 -60 -620 -60 {lab=vdd}
N -750 -180 -750 90 {lab=Control}
N -750 90 -540 90 {lab=Control}
N -680 -350 -620 -350 {lab=vref}
N -680 -300 -620 -300 {lab=GND}
N -680 -390 -620 -390 {lab=vdd}
N -790 -180 -750 -180 {lab=Control}
N -680 -250 -680 -240 {lab=vdd}
N -680 -120 -680 -110 {lab=GND}
N -370 -190 -370 -170 {lab=Vo}
N -400 -190 -370 -190 {lab=Vo}
N -370 -110 -370 -100 {lab=GND}
C {vsource.sym} -900 100 0 0 {name=V1 value=0.6}
C {vsource.sym} -900 250 0 0 {name=V2 value="PULSE(0 1.2 0 1u 1u 10u 20u)"}
C {devices/code_shown.sym} -690 130 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 1u 100u
write T_gate_tb.raw
.endc
" }
C {devices/code_shown.sym} -700 300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {gnd.sym} -900 310 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -900 40 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_pin.sym} -900 190 0 0 {name=p2 sig_type=std_logic lab=Control}
C {gnd.sym} -900 160 0 0 {name=l2 lab=GND}
C {vsource.sym} -900 -50 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -900 -110 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -900 10 0 0 {name=l3 lab=GND}
C {iopin.sym} -350 -190 0 0 {name=p5 lab=Vo}
C {launcher.sym} -120 360 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/T_gate_tb.raw tran"
}
C {gnd.sym} -680 -20 0 0 {name=l5 lab=GND}
C {gnd.sym} -680 30 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -680 -60 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {gnd.sym} -680 -300 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -680 -390 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -680 -350 0 0 {name=p8 sig_type=std_logic lab=vref}
C {lab_pin.sym} -790 -180 0 0 {name=p9 sig_type=std_logic lab=Control}
C {lab_pin.sym} -680 -250 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} -680 -110 0 0 {name=l4 lab=GND}
C {capa.sym} -370 -140 0 0 {name=C1
m=1
value=7p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 -100 0 0 {name=l7 lab=GND}
C {/home/tien/SAR_ADC_8BIT_IHP/xschem/xschem_pex_symbol/inverter.sym} -700 -180 0 0 {name=x1
schematic=inverter_pex
spice_sym_def=
"
.subckt inverter_pex vdd vi vo gnd
X0 vo vi vdd vdd sg13_lv_pmos ad=0.272p pd=2.28u as=0.272p ps=2.28u w=0.8u l=0.13u
X1 vo vi gnd gnd sg13_lv_nmos ad=0.136p pd=1.48u as=0.136p ps=1.48u w=0.4u l=0.13u
C0 vo vdd 0.12375f
C1 vo vi 0.06195f
C2 vi vdd 0.09004f
C3 vo gnd 0.20432f
C4 vi gnd 0.35463f
C5 vdd gnd 0.1104f
.ends
"
}
C {/home/tien/SAR_ADC_8BIT_IHP/xschem/xschem_pex_symbol/T_gate.sym} -540 -20 0 0 {name=x2
schematic=T_gate_pex
spice_sym_def=
"
.subckt T_gate_pex Vin Vout Control gnd vdd
X0 Vout Control Vin gnd sg13_lv_nmos ad=0.34p pd=2.68u as=0.34p ps=2.68u w=1u l=0.13u
X1 Vout Control Vin vdd sg13_lv_pmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.13u
C0 Control vdd 0.06532f
C1 Vin Vout 0.44023f
C2 vdd Vout 0.19552f
C3 Control gnd 0.26277f
C4 Vout gnd 0.30897f
C5 Vin gnd 0.22881f
C6 Control gnd 0.30202f
C7 vdd gnd 0.09029f
.ends
"
}
C {/home/tien/SAR_ADC_8BIT_IHP/xschem/xschem_pex_symbol/T_gate.sym} -540 -350 0 0 {name=x3
schematic=T_gate_pex
spice_sym_def=
"
.subckt T_gate_pex Vin Vout Control gnd vdd
X0 Vout Control Vin gnd sg13_lv_nmos ad=0.34p pd=2.68u as=0.34p ps=2.68u w=1u l=0.13u
X1 Vout Control Vin vdd sg13_lv_pmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.13u
C0 Control vdd 0.06532f
C1 Vin Vout 0.44023f
C2 vdd Vout 0.19552f
C3 Control gnd 0.26277f
C4 Vout gnd 0.30897f
C5 Vin gnd 0.22881f
C6 Control gnd 0.30202f
C7 vdd gnd 0.09029f
.ends
"
}
