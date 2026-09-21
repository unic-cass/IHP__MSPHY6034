v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 5 -420 805 -20 {flags=graph
y1=-0.02
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8e-07
x2=4.8e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=1.0065781
color=4
node=vo}
B 2 825 -420 1625 -20 {flags=graph
y1=0
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8e-07
x2=4.8e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=1.0065781
color=4
node=a}
B 2 825 0 1625 400 {flags=graph
y1=0
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8e-07
x2=4.8e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=1.0065781
color=7
node=b}
N -750 -120 -750 -100 {lab=A}
N -750 -60 -750 -30 {lab=GND}
N -800 -120 -800 -100 {lab=vdd}
N -800 -40 -800 -30 {lab=GND}
N -750 0 -750 20 {lab=B}
N -750 60 -750 90 {lab=GND}
N -340 -100 -320 -100 {lab=A}
N -340 -40 -320 -40 {lab=B}
N -230 -180 -230 -150 {lab=vdd}
N -230 20 -230 30 {lab=GND}
N -80 -70 -70 -70 {lab=Vo}
N -80 -70 -80 -50 {lab=Vo}
N -90 -70 -80 -70 {lab=Vo}
N -80 10 -80 20 {lab=GND}
N -230 20 -80 20 {lab=GND}
N -230 10 -230 20 {lab=GND}
C {devices/code_shown.sym} -835 -360 0 0 {name=NGSPICE only_toplevel=true 
value="
.control
tran 1u 4u 
write nand_tb.raw
.endc
"}
C {devices/code_shown.sym} -825 -225 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_pin.sym} -750 -120 2 0 {name=p24 sig_type=std_logic lab=A}
C {devices/gnd.sym} -750 -30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -750 -70 0 0 {name=V1 value="dc 0 ac 0 PULSE(0 1 0 1n 1n 2u 4u)"}
C {devices/vsource.sym} -800 -70 0 1 {name=V6 value=1.2}
C {devices/gnd.sym} -800 -30 0 1 {name=l11 lab=GND
value=1.2}
C {devices/lab_pin.sym} -800 -120 2 1 {name=p26 sig_type=std_logic lab=vdd}
C {devices/launcher.sym} 72.5 20 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/nand_tb.raw tran"
}
C {devices/lab_pin.sym} -750 0 2 0 {name=p1 sig_type=std_logic lab=B}
C {devices/gnd.sym} -750 90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -750 50 0 0 {name=V2 value="dc 0 ac 0 PULSE(0 1 0 1n 1n 1u 2u)"}
C {devices/lab_pin.sym} -340 -100 2 1 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -340 -40 2 1 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -230 -180 2 1 {name=p4 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} -230 30 0 1 {name=l2 lab=GND
value=1.2}
C {opin.sym} -70 -70 0 0 {name=p5 lab=Vo}
C {capa.sym} -80 -20 0 0 {name=C3
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {/home/userdata/k67D/duynk_67d/SAR_ADC_8BIT_IHP/pex/xschem_pex_symbol/nand_gate.sym} -170 -60 0 0 {name=x1
schematic=nand_gate_pex
spice_sym_def=
"
.subckt nand_gate_pex vdd Vo B A gnd
X0 a_n15_n246.t0 B.t0 gnd.t2 gnd.t1 sg13_lv_nmos ad=62.5f pd=0.74u as=0.1075p ps=1.34u w=0.25u l=0.13u
X1 vdd.t1 A.t0 Vo.t1 vdd.t0 sg13_lv_pmos ad=0.17p pd=1.68u as=95f ps=0.88u w=0.5u l=0.13u
X2 Vo.t1 B.t0 vdd.t2 vdd.t0 sg13_lv_pmos ad=95f pd=0.88u as=0.17p ps=1.68u w=0.5u l=0.13u
X3 Vo.t0 A.t0 a_n15_n246.t0 gnd.t0 sg13_lv_nmos ad=0.1075p pd=1.34u as=62.5f ps=0.74u w=0.25u l=0.13u
C0 A Vo 0.15477f
C1 B Vo 0.07214f
C2 A B 0.05121f
C3 vdd Vo 0.13452f
C4 A vdd 0.08588f
C5 B vdd 0.09489f
R0 B B.t0 15.0687
R1 gnd.n0 gnd.t1 149.24
R2 gnd.n0 gnd.t0 125.602
R3 gnd.n1 gnd.t2 17.2409
R4 gnd.n1 gnd.n0 6.88979
R5 gnd gnd.n1 0.0923197
R6 A A.t0 15.0665
R7 Vo.n0 Vo.t1 17.7224
R8 Vo.n0 Vo.t0 17.6641
R9 Vo Vo.n0 0.117375
R10 Vo.n0 Vo 0.0468158
R11 vdd.n1 vdd.t1 17.5381
R12 vdd.n0 vdd.t2 17.4749
R13 vdd.n3 vdd.n2 17.0005
R14 vdd.n2 vdd.n1 5.64075
R15 vdd.n2 vdd.t0 4.2505
R16 vdd.n1 vdd.n0 0.137308
R17 vdd vdd.n3 0.0569602
R18 vdd.n3 vdd.n0 0.0121814
C6 Vo gnd 0.12333f
C7 A gnd 0.20741f
C8 B gnd 0.23365f
C9 vdd gnd 0.17173f
.ends
"
}
