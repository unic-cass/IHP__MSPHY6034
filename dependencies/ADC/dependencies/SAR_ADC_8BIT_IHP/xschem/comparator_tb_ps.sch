v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2560 995 -1760 1395 {flags=graph
y1=-1.754609
y2=2.1271702
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.7671656e-07

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=9.6174965e-07
color=4
node=clk}
B 2 -2560 1365 -1760 1765 {flags=graph
y1=0.5937763
y2=0.62614953
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.7671656e-07

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=9.6174965e-07


color=4
node=vinp}
B 2 -1730 995 -930 1395 {flags=graph
y1=-1.6758934
y2=1.7650846
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.7671656e-07

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=9.6174965e-07


color=4
node=vout}
B 2 -1730 1415 -930 1815 {flags=graph
y1=-0.7953986
y2=1.8309941
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=outp
x2=9.6174965e-07
x1=6.7671656e-07
hcursor1_y=0.11313234
hcursor2_y=1.0706523}
B 2 -1730 1825 -930 2225 {flags=graph
y1=-0.17868922
y2=1.1925281
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.7671656e-07

divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
x2=9.6174965e-07


color=4
node=outm}
N -3120 2040 -3120 2060 {
lab=vbias}
N -3190 2040 -3190 2060 {
lab=vdd}
N -3190 2120 -3190 2140 {
lab=GND}
N -3150 2140 -3120 2140 {
lab=GND}
N -3000 2040 -3000 2060 {
lab=clk}
N -3000 2120 -3000 2150 {
lab=GND}
N -3150 2140 -3150 2150 {
lab=GND}
N -3000 2150 -2790 2150 {
lab=GND}
N -2790 2120 -2790 2150 {
lab=GND}
N -2790 2040 -2790 2060 {
lab=vinp}
N -2520 2000 -2460 2000 {
lab=vbias}
N -2380 2100 -2380 2130 {
lab=GND}
N -2330 2080 -2330 2110 {
lab=clk}
N -2380 1870 -2380 1900 {
lab=vdd}
N -2180 2010 -2080 2010 {
lab=outm}
N -2180 1990 -2080 1990 {
lab=outp}
N -2500 2060 -2460 2060 {
lab=vbias}
N -2500 1940 -2460 1940 {
lab=vinp}
N -3190 2140 -3150 2140 {
lab=GND}
N -3120 2120 -3120 2140 {
lab=GND}
N -2520 1940 -2500 1940 {
lab=vinp}
N -2500 2060 -2500 2080 {
lab=vbias}
N -2520 2060 -2500 2060 {
lab=vbias}
N -2500 2140 -2500 2160 {
lab=GND}
N -2120 2070 -2120 2080 {
lab=GND}
N -2120 1920 -2120 1930 {
lab=GND}
N -2500 1920 -2500 1940 {
lab=vinp}
N -2500 1840 -2500 1860 {
lab=GND}
C {devices/code_shown.sym} -3885 1540 0 0 {name=MODEL only_toplevel=false
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -3905 1040 0 0 {name=NGSPICE only_toplevel=false 
value="
.param temp=27
.param clock = 100e6       ; 100 MHz clock
.param period = \{1/clock\}
.param num_cycles = 100
.param tr = \{num_cycles * period\}

.control
save all
* Operating point simulation
op
write comparator_tb.raw
set appendwrite

* Transient analysis
.options meas_step_max=1e-10
tran 500p 1u
let vindiff = v(vinp) - v(vbias)
let clk = v(clk)
let vout = v(outp) - v(outm)

meas TRAN rise_time TRIG v(outp) VAL=0.12  TD=9n RISE=4 TARG v(outp) VAL=1.08 TD=9n RISE=4
meas TRAN fall_time TRIG v(outp) VAL=1.08  TD=9n RISE=4 TARG v(outp) VAL=0.12 TD=9n RISE=4

write comparator_tb.raw
.endc
"}
C {vsource.sym} -3190 2090 0 0 {name=V3 value="DC 1.2"}
C {vsource.sym} -3120 2090 0 0 {name=V4 value="DC 0.6"}
C {gnd.sym} -2890 2150 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -3120 2040 2 0 {name=p3 sig_type=std_logic lab=vbias}
C {lab_pin.sym} -3190 2040 2 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} -3000 2090 0 0 {name=V1 value="PULSE(0 1.2 0 0 0 5N \{period\})"}
C {lab_pin.sym} -3000 2040 2 0 {name=p1 sig_type=std_logic lab=clk}
C {gnd.sym} -3150 2150 0 0 {name=l2 lab=GND}
C {vsource.sym} -2790 2090 0 0 {name=V2 value="PULSE(595e-3 605e-3 0 tr 1S 1S)"}
C {lab_pin.sym} -2790 2040 2 0 {name=p2 sig_type=std_logic lab=vinp}
C {lab_pin.sym} -2520 1940 2 1 {name=p5 sig_type=std_logic lab=vinp}
C {lab_pin.sym} -2380 1870 2 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -2520 2000 2 1 {name=p7 sig_type=std_logic lab=vbias}
C {lab_pin.sym} -2520 2060 2 1 {name=p8 sig_type=std_logic lab=vbias}
C {lab_pin.sym} -2330 2110 2 0 {name=p9 sig_type=std_logic lab=clk}
C {gnd.sym} -2380 2130 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -2080 1990 2 0 {name=p10 sig_type=std_logic lab=outp}
C {lab_pin.sym} -2080 2010 2 0 {name=p11 sig_type=std_logic lab=outm}
C {capa.sym} -2500 2110 0 0 {name=C1
m=1
value=6.4p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -2500 2160 0 0 {name=l4 lab=GND}
C {gnd.sym} -2500 1840 2 0 {name=l5 lab=GND}
C {capa.sym} -2500 1890 2 0 {name=C2
m=1
value=6.4p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -2120 1960 2 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -2120 2040 0 0 {name=C3
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -2120 2080 0 0 {name=l6 lab=GND}
C {gnd.sym} -2120 1920 2 0 {name=l7 lab=GND}
C {devices/launcher.sym} -2790 1410 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} -2790 1370 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {launcher.sym} -2790 1445 0 0 {name=h2
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {xschem_pex_symbol/dynamic_comparator.sym} -2310 2000 0 0 {name=x1
schematic=DIFF_COMPARATOR_pex
spice_sym_def=
"
.subckt DIFF_COMPARATOR_pex vdd vbias V+ V- out- out+ clk gnd
X0 a_1245_3300.t11 V+.t0 a_944_1911.t5 vdd.t1 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X1 gnd.t8 a_944_1911.t6 out+.t1 gnd.t11 sg13_lv_nmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.2u
X2 a_1752_817.t1 clk.t0 a_1245_3300.t15 vdd.t1 sg13_lv_pmos ad=0.855p pd=4.88u as=1.53p ps=9.68u w=4.5u l=0.3u
X3 a_687_2445.t4 V-.t0 a_1245_3300.t13 vdd.t1 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X4 a_944_1911.t4 V+.t1 a_1245_3300.t10 vdd.t0 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X5 a_1752_817.t4 vbias.t0 vdd.t6 vdd.t1 sg13_lv_pmos ad=1.53p pd=9.68u as=0.855p ps=4.88u w=4.5u l=0.3u
X6 gnd.t22 gnd.t19 gnd.t21 gnd.t20 sg13_lv_nmos ad=1.36p pd=8.68u as=0 ps=0 w=4u l=0.2u
X7 a_1752_817.t2 vbias.t0 vdd.t7 vdd.t1 sg13_lv_pmos ad=0.855p pd=4.88u as=0.855p ps=4.88u w=4.5u l=0.3u
X8 a_1245_3300.t18 V-.t1 a_687_2445.t2 vdd.t0 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X9 vdd.t4 a_944_1911.t6 out+.t3 vdd.t1 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X10 a_944_1911.t0 a_687_2445.t6 gnd.t4 gnd.t3 sg13_lv_nmos ad=1.44p pd=4.72u as=0.76p ps=4.38u w=4u l=0.2u
X11 a_1245_3300.t9 V+.t2 a_944_1911.t2 vdd.t0 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X12 a_944_1911.t5 V+.t0 a_1245_3300.t8 vdd.t1 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X13 a_1245_3300.t3 V-.t2 a_687_2445.t5 vdd.t1 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X14 gnd.t18 gnd.t16 gnd.t4 gnd.t17 sg13_lv_nmos ad=1.36p pd=8.68u as=0 ps=0 w=4u l=0.2u
X15 a_944_1911.t3 V+.t3 a_1245_3300.t7 vdd.t1 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X16 a_687_2445.t1 clk.t1 gnd.t21 gnd.t23 sg13_lv_nmos ad=1.44p pd=4.72u as=0.76p ps=4.38u w=4u l=0.2u
X17 gnd.t10 a_944_1911.t7 a_687_2445.t0 gnd.t9 sg13_lv_nmos ad=0.76p pd=4.38u as=1.44p ps=4.72u w=4u l=0.2u
X18 out-.t3 a_687_2445.t7 gnd.t1 gnd.t2 sg13_lv_nmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.2u
X19 gnd.t6 gnd.t14 gnd.t6 gnd.t15 sg13_lv_nmos ad=0.76p pd=4.38u as=0 ps=0 w=4u l=0.2u
X20 a_1245_3300.t1 V-.t3 a_687_2445.t3 vdd.t0 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X21 a_687_2445.t5 V-.t2 a_1245_3300.t2 vdd.t1 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X22 gnd.t10 gnd.t12 gnd.t10 gnd.t13 sg13_lv_nmos ad=0.76p pd=4.38u as=0 ps=0 w=4u l=0.2u
X23 gnd.t6 clk.t2 a_944_1911.t1 gnd.t5 sg13_lv_nmos ad=0.76p pd=4.38u as=1.44p ps=4.72u w=4u l=0.2u
X24 out-.t1 a_687_2445.t7 vdd.t2 vdd.t1 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X25 gnd.t1 a_687_2445.t7 out-.t2 gnd.t0 sg13_lv_nmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.2u
X26 out+.t0 a_944_1911.t6 gnd.t8 gnd.t7 sg13_lv_nmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.2u
X27 a_1245_3300.t6 V+.t3 a_944_1911.t3 vdd.t1 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X28 vdd.t7 vbias.t0 a_1752_817.t3 vdd.t1 sg13_lv_pmos ad=0.855p pd=4.88u as=1.53p ps=9.68u w=4.5u l=0.3u
X29 a_1245_3300.t12 V-.t0 a_687_2445.t4 vdd.t1 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X30 a_687_2445.t3 V-.t3 a_1245_3300.t0 vdd.t0 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X31 a_1245_3300.t5 V+.t1 a_944_1911.t4 vdd.t0 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X32 a_1245_3300.t14 clk.t0 a_1752_817.t1 vdd.t1 sg13_lv_pmos ad=0.855p pd=4.88u as=0.855p ps=4.88u w=4.5u l=0.3u
X33 a_687_2445.t2 V-.t1 a_1245_3300.t17 vdd.t0 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X34 a_1245_3300.t16 clk.t0 a_1752_817.t0 vdd.t1 sg13_lv_pmos ad=1.53p pd=9.68u as=0.855p ps=4.88u w=4.5u l=0.3u
X35 a_944_1911.t2 V+.t2 a_1245_3300.t4 vdd.t0 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X36 vdd.t2 a_687_2445.t7 out-.t0 vdd.t1 sg13_lv_pmos ad=0.76p pd=4.38u as=1.36p ps=8.68u w=4u l=0.2u
X37 a_1752_817.t0 clk.t0 a_1245_3300.t14 vdd.t1 sg13_lv_pmos ad=0.855p pd=4.88u as=0.855p ps=4.88u w=4.5u l=0.3u
X38 out+.t2 a_944_1911.t6 vdd.t4 vdd.t1 sg13_lv_pmos ad=1.36p pd=8.68u as=0.76p ps=4.38u w=4u l=0.2u
X39 vdd.t6 vbias.t0 a_1752_817.t2 vdd.t1 sg13_lv_pmos ad=0.855p pd=4.88u as=0.855p ps=4.88u w=4.5u l=0.3u
C0 vdd vbias 2.83964f
C1 vdd V- 4.06121f
C2 out- clk 0.01763f
C3 vdd out+ 1.84773f
C4 w_805_2869# V- 0.0106f
C5 V- V+ 1.61045f
C6 clk vbias 0.19878f
C7 w_805_2869# vdd 0.1537f
C8 vdd V+ 4.08205f
C9 out+ clk 0.0169f
C10 vdd clk 2.98842f
C11 out- out+ 0.0933f
C12 vdd out- 1.84304f
C13 w_805_2869# V+ 0.01037f
R0 V+.n2 V+.t1 17.1875
R1 V+.n2 V+.t2 16.5321
R2 V+.t0 V+.t3 15.8046
R3 V+.n1 V+.n0 9.60223
R4 V+.n1 V+.t3 8.28871
R5 V+.n0 V+.t1 8.28871
R6 V+.t2 V+.n1 7.51146
R7 V+.n0 V+.t0 7.51146
R8 V+ V+.n2 1.77098
R9 a_944_1911.n2 a_944_1911.t7 42.3316
R10 a_944_1911.n0 a_944_1911.t1 17.0005
R11 a_944_1911.n10 a_944_1911.t1 17.0005
R12 a_944_1911.n34 a_944_1911.t0 17.0005
R13 a_944_1911.n34 a_944_1911.t1 17.0005
R14 a_944_1911.n32 a_944_1911.t0 17.0005
R15 a_944_1911.n32 a_944_1911.t1 17.0005
R16 a_944_1911.n11 a_944_1911.t1 17.0005
R17 a_944_1911.n17 a_944_1911.t1 17.0005
R18 a_944_1911.n27 a_944_1911.t0 17.0005
R19 a_944_1911.n27 a_944_1911.t1 17.0005
R20 a_944_1911.n25 a_944_1911.t0 17.0005
R21 a_944_1911.n25 a_944_1911.t1 17.0005
R22 a_944_1911.n18 a_944_1911.t0 17.0005
R23 a_944_1911.n18 a_944_1911.t1 17.0005
R24 a_944_1911.n19 a_944_1911.t0 17.0005
R25 a_944_1911.n19 a_944_1911.t1 17.0005
R26 a_944_1911.n5 a_944_1911.t6 16.5258
R27 a_944_1911.n1 a_944_1911.t2 11.5274
R28 a_944_1911.n3 a_944_1911.t3 11.5243
R29 a_944_1911.n1 a_944_1911.t4 10.9352
R30 a_944_1911.n3 a_944_1911.t5 10.9296
R31 a_944_1911.n6 a_944_1911.n5 10.127
R32 a_944_1911.n22 a_944_1911.n20 9.07383
R33 a_944_1911.n29 a_944_1911.n14 9.0005
R34 a_944_1911.n30 a_944_1911.n13 9.0005
R35 a_944_1911.n12 a_944_1911.n8 9.0005
R36 a_944_1911.n36 a_944_1911.n7 9.0005
R37 a_944_1911.n37 a_944_1911.n6 9.0005
R38 a_944_1911.n21 a_944_1911.n15 9.0005
R39 a_944_1911.n38 a_944_1911.n37 9.0005
R40 a_944_1911.n36 a_944_1911.n35 9.0005
R41 a_944_1911.n33 a_944_1911.n8 9.0005
R42 a_944_1911.n31 a_944_1911.n30 9.0005
R43 a_944_1911.n29 a_944_1911.n28 9.0005
R44 a_944_1911.n24 a_944_1911.n23 9.0005
R45 a_944_1911.n26 a_944_1911.n15 9.0005
R46 a_944_1911.n39 a_944_1911.n38 8.59134
R47 a_944_1911.n9 a_944_1911.t0 8.4807
R48 a_944_1911.n16 a_944_1911.t0 8.4807
R49 a_944_1911.n5 a_944_1911.n4 5.18615
R50 a_944_1911.n22 a_944_1911.n21 4.64666
R51 a_944_1911.n2 a_944_1911.n1 2.87027
R52 a_944_1911.n4 a_944_1911.n3 2.71941
R53 a_944_1911.n4 a_944_1911.n2 0.568729
R54 a_944_1911.n7 a_944_1911.n6 0.146155
R55 a_944_1911.n12 a_944_1911.n7 0.146155
R56 a_944_1911.n13 a_944_1911.n12 0.146155
R57 a_944_1911.n14 a_944_1911.n13 0.146155
R58 a_944_1911.n21 a_944_1911.n14 0.146155
R59 a_944_1911.n37 a_944_1911.n36 0.146155
R60 a_944_1911.n36 a_944_1911.n8 0.146155
R61 a_944_1911.n30 a_944_1911.n8 0.146155
R62 a_944_1911.n30 a_944_1911.n29 0.146155
R63 a_944_1911.n29 a_944_1911.n15 0.146155
R64 a_944_1911.n23 a_944_1911.n15 0.146155
R65 a_944_1911.n28 a_944_1911.n27 0.0786
R66 a_944_1911.n20 a_944_1911.n18 0.0764
R67 a_944_1911.n23 a_944_1911.n22 0.0726677
R68 a_944_1911.n35 a_944_1911.n34 0.0698
R69 a_944_1911.n32 a_944_1911.n31 0.061
R70 a_944_1911.n26 a_944_1911.n25 0.0544
R71 a_944_1911.n25 a_944_1911.n24 0.0522
R72 a_944_1911.n33 a_944_1911.n32 0.0456
R73 a_944_1911.n10 a_944_1911.n9 0.0416028
R74 a_944_1911.n17 a_944_1911.n16 0.0416028
R75 a_944_1911.n9 a_944_1911.n0 0.0416028
R76 a_944_1911.n16 a_944_1911.n11 0.0416028
R77 a_944_1911.n34 a_944_1911.n33 0.0368
R78 a_944_1911.n24 a_944_1911.n18 0.0302
R79 a_944_1911.n27 a_944_1911.n26 0.028
R80 a_944_1911.n31 a_944_1911.n11 0.0214
R81 a_944_1911.n38 a_944_1911.n0 0.0126
R82 a_944_1911.n35 a_944_1911.n10 0.0126
R83 a_944_1911.n20 a_944_1911.n19 0.006
R84 a_944_1911.n28 a_944_1911.n17 0.0038
R85 a_944_1911.n39 a_944_1911.t0 0.001
R86 a_944_1911.n39 a_944_1911.t1 0.001
R87 a_1245_3300.t16 a_1245_3300.n35 17.0005
R88 a_1245_3300.t16 a_1245_3300.n26 17.0005
R89 a_1245_3300.t16 a_1245_3300.n24 17.0005
R90 a_1245_3300.t16 a_1245_3300.n21 17.0005
R91 a_1245_3300.t16 a_1245_3300.n20 17.0005
R92 a_1245_3300.n0 a_1245_3300.t2 11.189
R93 a_1245_3300.n58 a_1245_3300.t0 11.187
R94 a_1245_3300.n56 a_1245_3300.t18 11.0438
R95 a_1245_3300.n2 a_1245_3300.t12 11.0438
R96 a_1245_3300.n1 a_1245_3300.t13 11.0438
R97 a_1245_3300.n0 a_1245_3300.t3 11.0438
R98 a_1245_3300.n57 a_1245_3300.t17 11.0412
R99 a_1245_3300.t1 a_1245_3300.n58 11.04
R100 a_1245_3300.n4 a_1245_3300.t9 10.7429
R101 a_1245_3300.n15 a_1245_3300.t4 10.7429
R102 a_1245_3300.n16 a_1245_3300.t5 10.7429
R103 a_1245_3300.n17 a_1245_3300.t10 10.7429
R104 a_1245_3300.n52 a_1245_3300.t6 10.7421
R105 a_1245_3300.n51 a_1245_3300.t7 10.7421
R106 a_1245_3300.n50 a_1245_3300.t11 10.7421
R107 a_1245_3300.n49 a_1245_3300.t8 10.7421
R108 a_1245_3300.n40 a_1245_3300.n12 9.77184
R109 a_1245_3300.n41 a_1245_3300.n40 9.60229
R110 a_1245_3300.n42 a_1245_3300.n12 9.59639
R111 a_1245_3300.n42 a_1245_3300.n41 9.42416
R112 a_1245_3300.n47 a_1245_3300.n6 9.0455
R113 a_1245_3300.n37 a_1245_3300.n36 9.0455
R114 a_1245_3300.n45 a_1245_3300.n8 9.0005
R115 a_1245_3300.n22 a_1245_3300.n9 9.0005
R116 a_1245_3300.n28 a_1245_3300.n27 9.0005
R117 a_1245_3300.n30 a_1245_3300.n29 9.0005
R118 a_1245_3300.n32 a_1245_3300.n31 9.0005
R119 a_1245_3300.n34 a_1245_3300.n33 9.0005
R120 a_1245_3300.n19 a_1245_3300.n18 9.0005
R121 a_1245_3300.n46 a_1245_3300.n7 9.0005
R122 a_1245_3300.n30 a_1245_3300.n10 9.0005
R123 a_1245_3300.n32 a_1245_3300.n13 9.0005
R124 a_1245_3300.n45 a_1245_3300.n44 9.0005
R125 a_1245_3300.n48 a_1245_3300.n47 9.0005
R126 a_1245_3300.n46 a_1245_3300.n5 9.0005
R127 a_1245_3300.n38 a_1245_3300.n37 9.0005
R128 a_1245_3300.n36 a_1245_3300.t16 8.48444
R129 a_1245_3300.t16 a_1245_3300.n25 8.48444
R130 a_1245_3300.t16 a_1245_3300.n23 8.48444
R131 a_1245_3300.t16 a_1245_3300.n6 8.48444
R132 a_1245_3300.n54 a_1245_3300.n53 5.28119
R133 a_1245_3300.n43 a_1245_3300.n11 4.48601
R134 a_1245_3300.n39 a_1245_3300.n14 4.48601
R135 a_1245_3300.n49 a_1245_3300.n48 1.13971
R136 a_1245_3300.n41 a_1245_3300.t14 1.12308
R137 a_1245_3300.n12 a_1245_3300.t15 1.12304
R138 a_1245_3300.n38 a_1245_3300.n17 0.853385
R139 a_1245_3300.n1 a_1245_3300.n0 0.447414
R140 a_1245_3300.n51 a_1245_3300.n50 0.446786
R141 a_1245_3300.n16 a_1245_3300.n15 0.446786
R142 a_1245_3300.n58 a_1245_3300.n57 0.446786
R143 a_1245_3300.n3 a_1245_3300.n2 0.353129
R144 a_1245_3300.n54 a_1245_3300.n4 0.3525
R145 a_1245_3300.n55 a_1245_3300.n3 0.292072
R146 a_1245_3300.n55 a_1245_3300.n54 0.239357
R147 a_1245_3300.n53 a_1245_3300.n3 0.233071
R148 a_1245_3300.n43 a_1245_3300.n42 0.168329
R149 a_1245_3300.n40 a_1245_3300.n39 0.168329
R150 a_1245_3300.n2 a_1245_3300.n1 0.146329
R151 a_1245_3300.n52 a_1245_3300.n51 0.146329
R152 a_1245_3300.n50 a_1245_3300.n49 0.146329
R153 a_1245_3300.n15 a_1245_3300.n4 0.146329
R154 a_1245_3300.n17 a_1245_3300.n16 0.146329
R155 a_1245_3300.n57 a_1245_3300.n56 0.146329
R156 a_1245_3300.n47 a_1245_3300.n46 0.0733276
R157 a_1245_3300.n46 a_1245_3300.n45 0.0733276
R158 a_1245_3300.n45 a_1245_3300.n9 0.0733276
R159 a_1245_3300.n30 a_1245_3300.n28 0.0733276
R160 a_1245_3300.n32 a_1245_3300.n30 0.0733276
R161 a_1245_3300.n33 a_1245_3300.n32 0.0733276
R162 a_1245_3300.n37 a_1245_3300.n18 0.0733276
R163 a_1245_3300.n13 a_1245_3300.n10 0.0733276
R164 a_1245_3300.n48 a_1245_3300.n5 0.0733276
R165 a_1245_3300.n44 a_1245_3300.n5 0.0733276
R166 a_1245_3300.n43 a_1245_3300.n10 0.0702931
R167 a_1245_3300.n22 a_1245_3300.n21 0.0630862
R168 a_1245_3300.n31 a_1245_3300.n26 0.0630862
R169 a_1245_3300.n39 a_1245_3300.n13 0.0581552
R170 a_1245_3300.n53 a_1245_3300.n52 0.0570714
R171 a_1245_3300.n56 a_1245_3300.n55 0.0564429
R172 a_1245_3300.n39 a_1245_3300.n38 0.0551207
R173 a_1245_3300.n27 a_1245_3300.n23 0.0549871
R174 a_1245_3300.n29 a_1245_3300.n25 0.0549871
R175 a_1245_3300.n20 a_1245_3300.n7 0.0536034
R176 a_1245_3300.n35 a_1245_3300.n19 0.0536034
R177 a_1245_3300.n7 a_1245_3300.n6 0.0474008
R178 a_1245_3300.n36 a_1245_3300.n19 0.0474008
R179 a_1245_3300.n27 a_1245_3300.n24 0.0460172
R180 a_1245_3300.n29 a_1245_3300.n24 0.0460172
R181 a_1245_3300.n44 a_1245_3300.n43 0.0429828
R182 a_1245_3300.n20 a_1245_3300.n8 0.038431
R183 a_1245_3300.n35 a_1245_3300.n34 0.038431
R184 a_1245_3300.n23 a_1245_3300.n22 0.0379181
R185 a_1245_3300.n31 a_1245_3300.n25 0.0379181
R186 a_1245_3300.n11 a_1245_3300.n9 0.0372671
R187 a_1245_3300.n33 a_1245_3300.n14 0.0372671
R188 a_1245_3300.n28 a_1245_3300.n11 0.0372671
R189 a_1245_3300.n18 a_1245_3300.n14 0.0372671
R190 a_1245_3300.n21 a_1245_3300.n8 0.0289483
R191 a_1245_3300.n34 a_1245_3300.n26 0.0289483
R192 vdd.t6 vdd.n210 17.0005
R193 vdd.t6 vdd.n209 17.0005
R194 vdd.t6 vdd.n207 17.0005
R195 vdd.t6 vdd.n205 17.0005
R196 vdd.t6 vdd.n204 17.0005
R197 vdd.t7 vdd.n254 17.0005
R198 vdd.t7 vdd.n201 17.0005
R199 vdd.t7 vdd.n199 17.0005
R200 vdd.t7 vdd.n197 17.0005
R201 vdd.t7 vdd.n196 17.0005
R202 vdd.n227 vdd.n226 9.05964
R203 vdd.n225 vdd.n192 9.05964
R204 vdd.n239 vdd.n195 9.05964
R205 vdd.n256 vdd.n255 9.05964
R206 vdd.n243 vdd.n242 9.0005
R207 vdd.n245 vdd.n244 9.0005
R208 vdd.n247 vdd.n246 9.0005
R209 vdd.n249 vdd.n248 9.0005
R210 vdd.n251 vdd.n250 9.0005
R211 vdd.n253 vdd.n252 9.0005
R212 vdd.n194 vdd.n193 9.0005
R213 vdd.n241 vdd.n240 9.0005
R214 vdd.n212 vdd.n211 9.0005
R215 vdd.n214 vdd.n213 9.0005
R216 vdd.n216 vdd.n215 9.0005
R217 vdd.n218 vdd.n217 9.0005
R218 vdd.n220 vdd.n219 9.0005
R219 vdd.n222 vdd.n221 9.0005
R220 vdd.n224 vdd.n223 9.0005
R221 vdd.n203 vdd.n202 9.0005
R222 vdd.n138 vdd.n123 8.501
R223 vdd.n138 vdd.n125 8.501
R224 vdd.n138 vdd.n127 8.501
R225 vdd.n138 vdd.n129 8.501
R226 vdd.n138 vdd.n130 8.501
R227 vdd.n138 vdd.n132 8.501
R228 vdd.n138 vdd.n134 8.501
R229 vdd.n138 vdd.n137 8.501
R230 vdd.n140 vdd.n109 8.501
R231 vdd.n142 vdd.n87 8.501
R232 vdd.n145 vdd.n144 8.501
R233 vdd.n81 vdd.n80 8.501
R234 vdd.n150 vdd.n69 8.501
R235 vdd.n136 vdd.n6 8.5005
R236 vdd.n133 vdd.n6 8.5005
R237 vdd.n131 vdd.n6 8.5005
R238 vdd.t0 vdd.n6 8.5005
R239 vdd.n128 vdd.n6 8.5005
R240 vdd.n126 vdd.n6 8.5005
R241 vdd.n124 vdd.n6 8.5005
R242 vdd.n122 vdd.n6 8.5005
R243 vdd.t6 vdd.n225 8.47918
R244 vdd.t6 vdd.n208 8.47918
R245 vdd.t6 vdd.n206 8.47918
R246 vdd.n226 vdd.t6 8.47918
R247 vdd.n255 vdd.t7 8.47918
R248 vdd.t7 vdd.n200 8.47918
R249 vdd.t7 vdd.n198 8.47918
R250 vdd.t7 vdd.n195 8.47918
R251 vdd.n135 vdd.n121 5.66778
R252 vdd.n257 vdd.n192 5.20536
R253 vdd.n238 vdd.n227 5.20536
R254 vdd.n239 vdd.n238 4.6895
R255 vdd.n257 vdd.n256 4.6895
R256 vdd.n259 vdd.n189 4.56174
R257 vdd.n263 vdd.n190 4.56174
R258 vdd.n232 vdd.n228 4.56174
R259 vdd.n236 vdd.n229 4.56174
R260 vdd.n181 vdd.n2 4.56174
R261 vdd.n185 vdd.n3 4.56174
R262 vdd.n11 vdd.n7 4.56174
R263 vdd.n15 vdd.n8 4.56174
R264 vdd.n28 vdd.n25 4.56174
R265 vdd.n32 vdd.n26 4.56174
R266 vdd.n38 vdd.n35 4.56174
R267 vdd.n42 vdd.n36 4.56174
R268 vdd.n48 vdd.n45 4.56174
R269 vdd.n52 vdd.n46 4.56174
R270 vdd.n152 vdd.n66 4.56174
R271 vdd.n156 vdd.n67 4.56174
R272 vdd.n74 vdd.n70 4.56174
R273 vdd.n78 vdd.n71 4.56174
R274 vdd.n94 vdd.n91 4.56174
R275 vdd.n98 vdd.n92 4.56174
R276 vdd.n103 vdd.n88 4.56174
R277 vdd.n107 vdd.n89 4.56174
R278 vdd.n114 vdd.n110 4.56174
R279 vdd.n118 vdd.n111 4.56174
R280 vdd.n161 vdd.n22 4.56174
R281 vdd.n165 vdd.n23 4.56174
R282 vdd.n58 vdd.n55 4.56174
R283 vdd.n62 vdd.n56 4.56174
R284 vdd.n262 vdd.n261 4.5005
R285 vdd.n260 vdd.n191 4.5005
R286 vdd.n235 vdd.n234 4.5005
R287 vdd.n233 vdd.n230 4.5005
R288 vdd.n182 vdd.n4 4.5005
R289 vdd.n184 vdd.n183 4.5005
R290 vdd.n12 vdd.n9 4.5005
R291 vdd.n14 vdd.n13 4.5005
R292 vdd.n29 vdd.n27 4.5005
R293 vdd.n31 vdd.n30 4.5005
R294 vdd.n39 vdd.n37 4.5005
R295 vdd.n41 vdd.n40 4.5005
R296 vdd.n49 vdd.n47 4.5005
R297 vdd.n51 vdd.n50 4.5005
R298 vdd.n153 vdd.n68 4.5005
R299 vdd.n155 vdd.n154 4.5005
R300 vdd.n75 vdd.n72 4.5005
R301 vdd.n77 vdd.n76 4.5005
R302 vdd.n95 vdd.n93 4.5005
R303 vdd.n97 vdd.n96 4.5005
R304 vdd.n104 vdd.n90 4.5005
R305 vdd.n106 vdd.n105 4.5005
R306 vdd.n115 vdd.n112 4.5005
R307 vdd.n117 vdd.n116 4.5005
R308 vdd.n162 vdd.n24 4.5005
R309 vdd.n164 vdd.n163 4.5005
R310 vdd.n59 vdd.n57 4.5005
R311 vdd.n61 vdd.n60 4.5005
R312 vdd.n149 vdd.n148 4.16092
R313 vdd.n141 vdd.n83 4.16066
R314 vdd.n146 vdd.n85 4.16066
R315 vdd.n143 vdd.n84 4.16054
R316 vdd.n170 vdd.n6 4.16048
R317 vdd.n174 vdd.n6 4.16048
R318 vdd.n178 vdd.n6 4.16048
R319 vdd.n147 vdd.n83 2.83383
R320 vdd.n147 vdd.n84 2.83383
R321 vdd.n147 vdd.n146 2.83383
R322 vdd.n148 vdd.n147 2.83383
R323 vdd.n21 vdd.n6 2.7354
R324 vdd.n120 vdd.t4 2.49601
R325 vdd.n120 vdd.t2 2.49227
R326 vdd.n138 vdd.n82 2.42951
R327 vdd.n259 vdd.n258 2.28117
R328 vdd.n258 vdd.n190 2.28117
R329 vdd.n237 vdd.n228 2.28117
R330 vdd.n237 vdd.n236 2.28117
R331 vdd.n181 vdd.n180 2.28117
R332 vdd.n180 vdd.n3 2.28117
R333 vdd.n16 vdd.n7 2.28117
R334 vdd.n16 vdd.n15 2.28117
R335 vdd.n28 vdd.n17 2.28117
R336 vdd.n26 vdd.n17 2.28117
R337 vdd.n38 vdd.n18 2.28117
R338 vdd.n36 vdd.n18 2.28117
R339 vdd.n48 vdd.n19 2.28117
R340 vdd.n46 vdd.n19 2.28117
R341 vdd.n152 vdd.n151 2.28117
R342 vdd.n151 vdd.n67 2.28117
R343 vdd.n79 vdd.n70 2.28117
R344 vdd.n79 vdd.n78 2.28117
R345 vdd.n94 vdd.n86 2.28117
R346 vdd.n92 vdd.n86 2.28117
R347 vdd.n108 vdd.n88 2.28117
R348 vdd.n108 vdd.n107 2.28117
R349 vdd.n119 vdd.n110 2.28117
R350 vdd.n119 vdd.n118 2.28117
R351 vdd.n166 vdd.n22 2.28117
R352 vdd.n166 vdd.n165 2.28117
R353 vdd.n58 vdd.n20 2.28117
R354 vdd.n56 vdd.n20 2.28117
R355 vdd.n264 vdd.n189 2.25769
R356 vdd.n264 vdd.n263 2.25769
R357 vdd.n232 vdd.n231 2.25769
R358 vdd.n231 vdd.n229 2.25769
R359 vdd.n186 vdd.n2 2.25769
R360 vdd.n186 vdd.n185 2.25769
R361 vdd.n11 vdd.n10 2.25769
R362 vdd.n10 vdd.n8 2.25769
R363 vdd.n33 vdd.n25 2.25769
R364 vdd.n33 vdd.n32 2.25769
R365 vdd.n43 vdd.n35 2.25769
R366 vdd.n43 vdd.n42 2.25769
R367 vdd.n53 vdd.n45 2.25769
R368 vdd.n53 vdd.n52 2.25769
R369 vdd.n157 vdd.n66 2.25769
R370 vdd.n157 vdd.n156 2.25769
R371 vdd.n74 vdd.n73 2.25769
R372 vdd.n73 vdd.n71 2.25769
R373 vdd.n99 vdd.n91 2.25769
R374 vdd.n99 vdd.n98 2.25769
R375 vdd.n103 vdd.n102 2.25769
R376 vdd.n102 vdd.n89 2.25769
R377 vdd.n114 vdd.n113 2.25769
R378 vdd.n113 vdd.n111 2.25769
R379 vdd.n161 vdd.n160 2.25769
R380 vdd.n160 vdd.n23 2.25769
R381 vdd.n63 vdd.n55 2.25769
R382 vdd.n63 vdd.n62 2.25769
R383 vdd.n172 vdd.n6 1.99818
R384 vdd.n176 vdd.n6 1.9981
R385 vdd.n258 vdd.n257 1.89937
R386 vdd.n238 vdd.n237 1.89937
R387 vdd.n147 vdd.n6 1.88939
R388 vdd.n180 vdd.n179 1.66843
R389 vdd.n177 vdd.n16 1.66843
R390 vdd.n175 vdd.n17 1.66843
R391 vdd.n173 vdd.n18 1.66843
R392 vdd.n171 vdd.n19 1.66843
R393 vdd.n151 vdd.n150 1.66843
R394 vdd.n80 vdd.n79 1.66843
R395 vdd.n144 vdd.n86 1.66843
R396 vdd.n142 vdd.n108 1.66843
R397 vdd.n140 vdd.n119 1.66843
R398 vdd.n167 vdd.n166 1.66843
R399 vdd.n169 vdd.n20 1.66843
R400 vdd.n168 vdd.n167 1.52562
R401 vdd.n169 vdd.n168 1.2834
R402 vdd.n121 vdd.n5 1.27296
R403 vdd.n139 vdd.n121 1.21158
R404 vdd.n64 vdd.n63 1.1005
R405 vdd.n54 vdd.n53 1.1005
R406 vdd.n44 vdd.n43 1.1005
R407 vdd.n34 vdd.n33 1.1005
R408 vdd.n10 vdd.n1 1.1005
R409 vdd.n187 vdd.n186 1.1005
R410 vdd.n160 vdd.n159 1.1005
R411 vdd.n113 vdd.n0 1.1005
R412 vdd.n102 vdd.n101 1.1005
R413 vdd.n100 vdd.n99 1.1005
R414 vdd.n73 vdd.n65 1.1005
R415 vdd.n158 vdd.n157 1.1005
R416 vdd.n231 vdd.n188 1.1005
R417 vdd.n265 vdd.n264 1.1005
R418 vdd.n140 vdd.n139 1.0667
R419 vdd.n179 vdd.n5 0.897218
R420 vdd.n139 vdd.n138 0.513736
R421 vdd.n6 vdd.n5 0.434488
R422 vdd.n150 vdd.n21 0.405564
R423 vdd.n121 vdd.n120 0.350929
R424 vdd.n141 vdd.n140 0.338749
R425 vdd.n179 vdd.n178 0.338361
R426 vdd.n143 vdd.n142 0.332914
R427 vdd.n144 vdd.n85 0.328172
R428 vdd.n175 vdd.n174 0.327784
R429 vdd.n149 vdd.n80 0.322902
R430 vdd.n171 vdd.n170 0.317207
R431 vdd.n177 vdd.n176 0.30387
R432 vdd.n173 vdd.n172 0.29911
R433 vdd.n172 vdd.n171 0.273116
R434 vdd.n170 vdd.n169 0.272784
R435 vdd.n176 vdd.n175 0.268235
R436 vdd.n150 vdd.n149 0.267129
R437 vdd.n174 vdd.n173 0.262207
R438 vdd.n85 vdd.n80 0.261823
R439 vdd.n144 vdd.n143 0.257063
R440 vdd.n178 vdd.n177 0.25163
R441 vdd.n142 vdd.n141 0.251246
R442 vdd.n159 vdd.n64 0.245476
R443 vdd.t1 vdd.n6 0.236611
R444 vdd.n188 vdd.n187 0.223305
R445 vdd.n167 vdd.n21 0.179715
R446 vdd.n266 vdd.n0 0.142854
R447 vdd.n241 vdd.n239 0.0965
R448 vdd.n243 vdd.n241 0.0965
R449 vdd.n245 vdd.n243 0.0965
R450 vdd.n247 vdd.n245 0.0965
R451 vdd.n249 vdd.n247 0.0965
R452 vdd.n251 vdd.n249 0.0965
R453 vdd.n252 vdd.n251 0.0965
R454 vdd.n252 vdd.n193 0.0965
R455 vdd.n256 vdd.n193 0.0965
R456 vdd.n227 vdd.n202 0.0965
R457 vdd.n212 vdd.n202 0.0965
R458 vdd.n214 vdd.n212 0.0965
R459 vdd.n216 vdd.n214 0.0965
R460 vdd.n218 vdd.n216 0.0965
R461 vdd.n220 vdd.n218 0.0965
R462 vdd.n222 vdd.n220 0.0965
R463 vdd.n223 vdd.n222 0.0965
R464 vdd.n223 vdd.n192 0.0965
R465 vdd.n168 vdd.n6 0.0898978
R466 vdd.n213 vdd.n205 0.083
R467 vdd.n219 vdd.n209 0.083
R468 vdd.n244 vdd.n197 0.083
R469 vdd.n250 vdd.n201 0.083
R470 vdd.n266 vdd.n265 0.0809512
R471 vdd.n215 vdd.n206 0.0721377
R472 vdd.n217 vdd.n208 0.0721377
R473 vdd.n246 vdd.n198 0.0721377
R474 vdd.n248 vdd.n200 0.0721377
R475 vdd.n204 vdd.n203 0.0705
R476 vdd.n224 vdd.n210 0.0705
R477 vdd.n240 vdd.n196 0.0705
R478 vdd.n254 vdd.n194 0.0705
R479 vdd.n226 vdd.n203 0.0621377
R480 vdd.n225 vdd.n224 0.0621377
R481 vdd.n240 vdd.n195 0.0621377
R482 vdd.n255 vdd.n194 0.0621377
R483 vdd.n262 vdd.n191 0.0608429
R484 vdd.n261 vdd.n260 0.0608429
R485 vdd.n235 vdd.n230 0.0608429
R486 vdd.n234 vdd.n233 0.0608429
R487 vdd.n184 vdd.n4 0.0608429
R488 vdd.n183 vdd.n182 0.0608429
R489 vdd.n13 vdd.n12 0.0608429
R490 vdd.n14 vdd.n9 0.0608429
R491 vdd.n31 vdd.n27 0.0608429
R492 vdd.n30 vdd.n29 0.0608429
R493 vdd.n41 vdd.n37 0.0608429
R494 vdd.n40 vdd.n39 0.0608429
R495 vdd.n51 vdd.n47 0.0608429
R496 vdd.n50 vdd.n49 0.0608429
R497 vdd.n155 vdd.n68 0.0608429
R498 vdd.n154 vdd.n153 0.0608429
R499 vdd.n76 vdd.n75 0.0608429
R500 vdd.n77 vdd.n72 0.0608429
R501 vdd.n97 vdd.n93 0.0608429
R502 vdd.n96 vdd.n95 0.0608429
R503 vdd.n105 vdd.n104 0.0608429
R504 vdd.n106 vdd.n90 0.0608429
R505 vdd.n116 vdd.n115 0.0608429
R506 vdd.n117 vdd.n112 0.0608429
R507 vdd.n163 vdd.n162 0.0608429
R508 vdd.n164 vdd.n24 0.0608429
R509 vdd.n60 vdd.n59 0.0608429
R510 vdd.n61 vdd.n57 0.0608429
R511 vdd.n215 vdd.n207 0.0605
R512 vdd.n217 vdd.n207 0.0605
R513 vdd.n246 vdd.n199 0.0605
R514 vdd.n248 vdd.n199 0.0605
R515 vdd.n265 vdd.n188 0.0577927
R516 vdd.n211 vdd.n204 0.0505
R517 vdd.n221 vdd.n210 0.0505
R518 vdd.n242 vdd.n196 0.0505
R519 vdd.n254 vdd.n253 0.0505
R520 vdd.n213 vdd.n206 0.0496377
R521 vdd.n219 vdd.n208 0.0496377
R522 vdd.n244 vdd.n198 0.0496377
R523 vdd.n250 vdd.n200 0.0496377
R524 vdd.n211 vdd.n205 0.038
R525 vdd.n221 vdd.n209 0.038
R526 vdd.n242 vdd.n197 0.038
R527 vdd.n253 vdd.n201 0.038
R528 vdd.n263 vdd.n262 0.0308751
R529 vdd.n191 vdd.n189 0.0308751
R530 vdd.n234 vdd.n229 0.0308751
R531 vdd.n233 vdd.n232 0.0308751
R532 vdd.n4 vdd.n2 0.0308751
R533 vdd.n185 vdd.n184 0.0308751
R534 vdd.n12 vdd.n11 0.0308751
R535 vdd.n13 vdd.n8 0.0308751
R536 vdd.n27 vdd.n25 0.0308751
R537 vdd.n32 vdd.n31 0.0308751
R538 vdd.n37 vdd.n35 0.0308751
R539 vdd.n42 vdd.n41 0.0308751
R540 vdd.n47 vdd.n45 0.0308751
R541 vdd.n52 vdd.n51 0.0308751
R542 vdd.n68 vdd.n66 0.0308751
R543 vdd.n156 vdd.n155 0.0308751
R544 vdd.n75 vdd.n74 0.0308751
R545 vdd.n76 vdd.n71 0.0308751
R546 vdd.n93 vdd.n91 0.0308751
R547 vdd.n98 vdd.n97 0.0308751
R548 vdd.n104 vdd.n103 0.0308751
R549 vdd.n105 vdd.n89 0.0308751
R550 vdd.n115 vdd.n114 0.0308751
R551 vdd.n116 vdd.n111 0.0308751
R552 vdd.n162 vdd.n161 0.0308751
R553 vdd.n163 vdd.n23 0.0308751
R554 vdd.n57 vdd.n55 0.0308751
R555 vdd.n62 vdd.n61 0.0308751
R556 vdd.n261 vdd.n190 0.0307722
R557 vdd.n260 vdd.n259 0.0307722
R558 vdd.n236 vdd.n235 0.0307722
R559 vdd.n230 vdd.n228 0.0307722
R560 vdd.n182 vdd.n181 0.0307722
R561 vdd.n183 vdd.n3 0.0307722
R562 vdd.n9 vdd.n7 0.0307722
R563 vdd.n15 vdd.n14 0.0307722
R564 vdd.n29 vdd.n28 0.0307722
R565 vdd.n30 vdd.n26 0.0307722
R566 vdd.n39 vdd.n38 0.0307722
R567 vdd.n40 vdd.n36 0.0307722
R568 vdd.n49 vdd.n48 0.0307722
R569 vdd.n50 vdd.n46 0.0307722
R570 vdd.n153 vdd.n152 0.0307722
R571 vdd.n154 vdd.n67 0.0307722
R572 vdd.n72 vdd.n70 0.0307722
R573 vdd.n78 vdd.n77 0.0307722
R574 vdd.n95 vdd.n94 0.0307722
R575 vdd.n96 vdd.n92 0.0307722
R576 vdd.n90 vdd.n88 0.0307722
R577 vdd.n107 vdd.n106 0.0307722
R578 vdd.n112 vdd.n110 0.0307722
R579 vdd.n118 vdd.n117 0.0307722
R580 vdd.n24 vdd.n22 0.0307722
R581 vdd.n165 vdd.n164 0.0307722
R582 vdd.n59 vdd.n58 0.0307722
R583 vdd.n60 vdd.n56 0.0307722
R584 vdd.n64 vdd.n54 0.0235488
R585 vdd.n54 vdd.n44 0.0235488
R586 vdd.n44 vdd.n34 0.0235488
R587 vdd.n34 vdd.n1 0.0235488
R588 vdd.n187 vdd.n1 0.0235488
R589 vdd.n159 vdd.n158 0.0235488
R590 vdd.n158 vdd.n65 0.0235488
R591 vdd.n100 vdd.n65 0.0235488
R592 vdd.n101 vdd.n100 0.0235488
R593 vdd.n101 vdd.n0 0.0235488
R594 vdd vdd.n266 0.00527439
R595 vdd.n122 vdd.n82 0.00185713
R596 vdd.n135 vdd.n6 0.00166667
R597 vdd.n138 vdd.n135 0.00133332
R598 vdd.n147 vdd.n82 0.00114285
R599 vdd.n137 vdd.n136 0.001
R600 vdd.n134 vdd.n133 0.001
R601 vdd.n132 vdd.n131 0.001
R602 vdd.n130 vdd.t0 0.001
R603 vdd.n129 vdd.n128 0.001
R604 vdd.n127 vdd.n126 0.001
R605 vdd.n125 vdd.n124 0.001
R606 vdd.n123 vdd.n122 0.001
R607 vdd.n124 vdd.n123 0.001
R608 vdd.n126 vdd.n125 0.001
R609 vdd.n128 vdd.n127 0.001
R610 vdd.t0 vdd.n129 0.001
R611 vdd.n131 vdd.n130 0.001
R612 vdd.n133 vdd.n132 0.001
R613 vdd.n136 vdd.n134 0.001
R614 vdd.n137 vdd.t1 0.001
R615 vdd.n69 vdd.n6 0.001
R616 vdd.n148 vdd.n81 0.001
R617 vdd.n146 vdd.n145 0.001
R618 vdd.n87 vdd.n84 0.001
R619 vdd.n109 vdd.n83 0.001
R620 vdd.n138 vdd.n109 0.001
R621 vdd.n87 vdd.n83 0.001
R622 vdd.n145 vdd.n84 0.001
R623 vdd.n146 vdd.n81 0.001
R624 vdd.n148 vdd.n69 0.001
R625 out+.n28 out+.t3 17.0005
R626 out+.n16 out+.t3 17.0005
R627 out+.n14 out+.t3 17.0005
R628 out+.t2 out+.n33 17.0005
R629 out+.t2 out+.n5 17.0005
R630 out+.t2 out+.n8 17.0005
R631 out+.n21 out+.n20 9.04081
R632 out+.n40 out+.n39 9.03703
R633 out+.n15 out+.n10 9.0005
R634 out+.n30 out+.n29 9.0005
R635 out+.n27 out+.n26 9.0005
R636 out+.n23 out+.n22 9.0005
R637 out+.n38 out+.n37 9.0005
R638 out+.n13 out+.n2 9.0005
R639 out+.n43 out+.n41 9.0005
R640 out+.n44 out+.n41 9.0005
R641 out+.n42 out+.n41 9.0005
R642 out+.n48 out+.n41 9.0005
R643 out+.n49 out+.n43 9.0005
R644 out+.n49 out+.n44 9.0005
R645 out+.n49 out+.n42 9.0005
R646 out+.n49 out+.n48 9.0005
R647 out+.t2 out+.n3 8.501
R648 out+.n39 out+.t3 8.50006
R649 out+.t2 out+.n7 8.49923
R650 out+.t0 out+.n46 8.49864
R651 out+.n47 out+.t0 8.49864
R652 out+.n21 out+.t3 8.49628
R653 out+.t0 out+.n45 8.49096
R654 out+.n34 out+.t2 8.49007
R655 out+.t2 out+.n6 8.49007
R656 out+.n17 out+.t3 8.46606
R657 out+.n1 out+.t3 8.46606
R658 out+.n49 out+.t1 5.16416
R659 out+.n20 out+.n7 4.51392
R660 out+.n3 out+.n0 4.51194
R661 out+.n19 out+.n18 4.5005
R662 out+.n25 out+.n24 4.5005
R663 out+.n12 out+.n11 4.5005
R664 out+.n32 out+.n31 4.5005
R665 out+.n9 out+.n4 4.5005
R666 out+.n36 out+.n35 4.5005
R667 out+ out+.n50 1.36221
R668 out+.n39 out+.n38 0.146886
R669 out+.n22 out+.n21 0.143078
R670 out+.n28 out+.n27 0.137052
R671 out+.n14 out+.n13 0.129466
R672 out+.n50 out+.n40 0.127659
R673 out+.n22 out+.n17 0.108815
R674 out+.n38 out+.n1 0.101229
R675 out+.n29 out+.n16 0.0953276
R676 out+.n16 out+.n15 0.0877414
R677 out+.n13 out+.n1 0.0822633
R678 out+.n27 out+.n17 0.0746771
R679 out+.n15 out+.n14 0.0536034
R680 out+.n35 out+.n3 0.0468193
R681 out+.n29 out+.n28 0.0460172
R682 out+.n47 out+.n42 0.0453402
R683 out+.n46 out+.n44 0.0453402
R684 out+.n18 out+.n7 0.0450428
R685 out+.n24 out+.n8 0.043672
R686 out+.n33 out+.n4 0.0401237
R687 out+.n18 out+.n6 0.0352729
R688 out+.n35 out+.n34 0.0317246
R689 out+.n11 out+.n5 0.0306613
R690 out+.n45 out+.n42 0.0293633
R691 out+.n45 out+.n44 0.0293633
R692 out+.n32 out+.n5 0.0271129
R693 out+.n34 out+.n4 0.0269934
R694 out+.n24 out+.n6 0.023445
R695 out+.n37 out+.n0 0.0198519
R696 out+.n36 out+.n2 0.0198519
R697 out+.n10 out+.n9 0.0198519
R698 out+.n31 out+.n30 0.0198519
R699 out+.n26 out+.n12 0.0198519
R700 out+.n25 out+.n23 0.0198519
R701 out+.n20 out+.n19 0.0198519
R702 out+.n33 out+.n32 0.0176505
R703 out+.n11 out+.n8 0.0141022
R704 out+.n48 out+.n47 0.0134159
R705 out+.n46 out+.n43 0.0134159
R706 out+.n50 out+.n41 0.0127081
R707 out+.n50 out+.n49 0.0127081
R708 out+.n40 out+.n0 0.000703704
R709 out+.n37 out+.n36 0.000703704
R710 out+.n9 out+.n2 0.000703704
R711 out+.n31 out+.n10 0.000703704
R712 out+.n30 out+.n12 0.000703704
R713 out+.n26 out+.n25 0.000703704
R714 out+.n23 out+.n19 0.000703704
R715 gnd.t7 gnd.t2 12815.6
R716 gnd.n192 gnd.n38 2576.66
R717 gnd.t0 gnd.n152 911.601
R718 gnd.n174 gnd.t11 910.683
R719 gnd.t2 gnd.t0 111.862
R720 gnd.t11 gnd.t7 111.862
R721 gnd.n74 gnd.n38 62.3096
R722 gnd.n174 gnd.n173 62.3096
R723 gnd.n192 gnd.n22 62.3096
R724 gnd.n80 gnd.t23 58.6444
R725 gnd.n182 gnd.t5 58.6444
R726 gnd.t9 gnd.n76 47.6486
R727 gnd.t3 gnd.n184 47.6486
R728 gnd.n79 gnd.t20 40.3182
R729 gnd.n179 gnd.t15 40.3182
R730 gnd.n82 gnd.t13 32.9877
R731 gnd.n188 gnd.t17 32.9877
R732 gnd.t13 gnd.n75 29.3224
R733 gnd.t17 gnd.n187 29.3224
R734 gnd.n57 gnd.n43 21.9985
R735 gnd.t20 gnd.n78 21.9919
R736 gnd.t15 gnd.n178 21.9919
R737 gnd.n90 gnd.t22 17.0005
R738 gnd.n150 gnd.n59 17.0005
R739 gnd.n122 gnd.n121 17.0005
R740 gnd.n121 gnd.n120 17.0005
R741 gnd.n118 gnd.n108 17.0005
R742 gnd.n118 gnd.n117 17.0005
R743 gnd.n115 gnd.n109 17.0005
R744 gnd.n115 gnd.n114 17.0005
R745 gnd.n112 gnd.n110 17.0005
R746 gnd.n112 gnd.n111 17.0005
R747 gnd.n126 gnd.n95 17.0005
R748 gnd.n126 gnd.n125 17.0005
R749 gnd.n142 gnd.n141 17.0005
R750 gnd.n143 gnd.n142 17.0005
R751 gnd.n150 gnd.n149 17.0005
R752 gnd.n83 gnd.n78 17.0005
R753 gnd.n83 gnd.n79 17.0005
R754 gnd.n83 gnd.n77 17.0005
R755 gnd.n83 gnd.n80 17.0005
R756 gnd.n83 gnd.n76 17.0005
R757 gnd.n83 gnd.n81 17.0005
R758 gnd.n83 gnd.n75 17.0005
R759 gnd.n83 gnd.n82 17.0005
R760 gnd.n83 gnd.n74 17.0005
R761 gnd.n190 gnd.n41 17.0005
R762 gnd.n190 gnd.n40 17.0005
R763 gnd.n196 gnd.t4 17.0005
R764 gnd.n9 gnd.t4 17.0005
R765 gnd.n17 gnd.t4 17.0005
R766 gnd.n10 gnd.t4 17.0005
R767 gnd.n16 gnd.t4 17.0005
R768 gnd.n11 gnd.t4 17.0005
R769 gnd.n15 gnd.t4 17.0005
R770 gnd.n12 gnd.t4 17.0005
R771 gnd.n14 gnd.t4 17.0005
R772 gnd.n13 gnd.t4 17.0005
R773 gnd.n197 gnd.t4 17.0005
R774 gnd.t18 gnd.n196 17.0005
R775 gnd.t18 gnd.n9 17.0005
R776 gnd.t18 gnd.n17 17.0005
R777 gnd.t18 gnd.n10 17.0005
R778 gnd.t18 gnd.n16 17.0005
R779 gnd.t18 gnd.n11 17.0005
R780 gnd.t18 gnd.n15 17.0005
R781 gnd.t18 gnd.n12 17.0005
R782 gnd.t18 gnd.n14 17.0005
R783 gnd.t18 gnd.n13 17.0005
R784 gnd.n197 gnd.t18 17.0005
R785 gnd.n36 gnd.n8 17.0005
R786 gnd.n36 gnd.n35 17.0005
R787 gnd.n33 gnd.n31 17.0005
R788 gnd.n33 gnd.n32 17.0005
R789 gnd.n29 gnd.n27 17.0005
R790 gnd.n29 gnd.n28 17.0005
R791 gnd.n25 gnd.n23 17.0005
R792 gnd.n25 gnd.n24 17.0005
R793 gnd.n194 gnd.n19 17.0005
R794 gnd.n195 gnd.n194 17.0005
R795 gnd.n22 gnd.n5 17.0005
R796 gnd.n188 gnd.n5 17.0005
R797 gnd.n187 gnd.n5 17.0005
R798 gnd.n185 gnd.n5 17.0005
R799 gnd.n184 gnd.n5 17.0005
R800 gnd.n182 gnd.n5 17.0005
R801 gnd.n181 gnd.n5 17.0005
R802 gnd.n179 gnd.n5 17.0005
R803 gnd.n178 gnd.n5 17.0005
R804 gnd.n173 gnd.n5 17.0005
R805 gnd.n165 gnd.n164 17.0005
R806 gnd.n166 gnd.n165 17.0005
R807 gnd.n6 gnd.t14 15.0005
R808 gnd.n92 gnd.t12 15.0005
R809 gnd.n91 gnd.t19 15.0005
R810 gnd.n7 gnd.t16 15.0005
R811 gnd.n81 gnd.t9 14.6615
R812 gnd.n185 gnd.t3 14.6615
R813 gnd.n82 gnd.n53 10.9995
R814 gnd.n81 gnd.n54 10.9995
R815 gnd.n80 gnd.n55 10.9995
R816 gnd.n79 gnd.n56 10.9995
R817 gnd.n152 gnd.n43 10.9995
R818 gnd.n78 gnd.n57 10.9995
R819 gnd.n77 gnd.n56 10.9995
R820 gnd.n76 gnd.n55 10.9995
R821 gnd.n75 gnd.n54 10.9995
R822 gnd.n74 gnd.n53 10.9995
R823 gnd.n178 gnd.n39 10.9995
R824 gnd.n181 gnd.n180 10.9995
R825 gnd.n184 gnd.n183 10.9995
R826 gnd.n187 gnd.n186 10.9995
R827 gnd.n189 gnd.n22 10.9995
R828 gnd.n173 gnd.n39 10.9995
R829 gnd.n189 gnd.n188 10.9995
R830 gnd.n186 gnd.n185 10.9995
R831 gnd.n183 gnd.n182 10.9995
R832 gnd.n180 gnd.n179 10.9995
R833 gnd.n107 gnd.n38 8.501
R834 gnd.n119 gnd.n38 8.501
R835 gnd.n116 gnd.n38 8.501
R836 gnd.n113 gnd.n38 8.501
R837 gnd.n94 gnd.n38 8.501
R838 gnd.n127 gnd.n38 8.501
R839 gnd.n128 gnd.n38 8.501
R840 gnd.n152 gnd.n48 8.501
R841 gnd.n152 gnd.n47 8.501
R842 gnd.n152 gnd.n46 8.501
R843 gnd.n152 gnd.n45 8.501
R844 gnd.n152 gnd.n44 8.501
R845 gnd.n192 gnd.n34 8.501
R846 gnd.n192 gnd.n30 8.501
R847 gnd.n192 gnd.n26 8.501
R848 gnd.n192 gnd.n20 8.501
R849 gnd.n193 gnd.n192 8.501
R850 gnd.n174 gnd.n153 8.501
R851 gnd.n174 gnd.n154 8.501
R852 gnd.n174 gnd.n155 8.501
R853 gnd.n174 gnd.n156 8.501
R854 gnd.n174 gnd.n169 8.501
R855 gnd.n174 gnd.n171 8.501
R856 gnd.n174 gnd.n172 8.501
R857 gnd.t10 gnd.n123 8.5005
R858 gnd.t10 gnd.n97 8.5005
R859 gnd.t10 gnd.n104 8.5005
R860 gnd.t10 gnd.n98 8.5005
R861 gnd.t10 gnd.n103 8.5005
R862 gnd.t10 gnd.n99 8.5005
R863 gnd.t10 gnd.n102 8.5005
R864 gnd.t10 gnd.n100 8.5005
R865 gnd.t10 gnd.n101 8.5005
R866 gnd.t10 gnd.n96 8.5005
R867 gnd.n124 gnd.t10 8.5005
R868 gnd.t21 gnd.n87 8.49127
R869 gnd.n88 gnd.t21 8.49127
R870 gnd.t21 gnd.n84 8.49127
R871 gnd.t22 gnd.n86 8.49127
R872 gnd.t22 gnd.n89 8.49127
R873 gnd.n106 gnd.n105 8.47423
R874 gnd.n21 gnd.n18 8.47423
R875 gnd.n130 gnd.n129 8.46362
R876 gnd.n140 gnd.n139 8.46362
R877 gnd.n145 gnd.n144 8.46362
R878 gnd.n148 gnd.n50 8.46362
R879 gnd.n159 gnd.n42 8.46362
R880 gnd.n163 gnd.n162 8.46362
R881 gnd.n168 gnd.n167 8.46362
R882 gnd.n204 gnd.n4 8.46362
R883 gnd.n138 gnd.n137 8.46309
R884 gnd.n147 gnd.n146 8.46309
R885 gnd.n161 gnd.n160 8.46309
R886 gnd.n170 gnd.n3 8.46309
R887 gnd.n152 gnd.n49 5.66778
R888 gnd.n52 gnd.n38 5.66767
R889 gnd.n152 gnd.n151 5.66767
R890 gnd.n192 gnd.n191 5.66767
R891 gnd.n175 gnd.n174 5.66767
R892 gnd.n131 gnd.n83 5.60443
R893 gnd.n203 gnd.n5 5.60443
R894 gnd.n136 gnd.n73 5.48318
R895 gnd.n206 gnd.n205 5.48318
R896 gnd.n66 gnd.n65 5.47768
R897 gnd.n68 gnd.n60 5.47768
R898 gnd.n192 gnd.n37 4.251
R899 gnd.t23 gnd.n77 3.66574
R900 gnd.t5 gnd.n181 3.66574
R901 gnd.t21 gnd.n85 3.41683
R902 gnd.n199 gnd.n5 3.29867
R903 gnd.n135 gnd.n83 3.29832
R904 gnd.n58 gnd.t1 3.18822
R905 gnd.n176 gnd.t8 3.18679
R906 gnd.n150 gnd.n57 3.00175
R907 gnd.n150 gnd.n56 3.00175
R908 gnd.n150 gnd.n55 3.00175
R909 gnd.n150 gnd.n54 3.00175
R910 gnd.n150 gnd.n53 3.00175
R911 gnd.n83 gnd.n43 3.00175
R912 gnd.n190 gnd.n39 3.00175
R913 gnd.n190 gnd.n189 3.00175
R914 gnd.n190 gnd.n186 3.00175
R915 gnd.n190 gnd.n183 3.00175
R916 gnd.n190 gnd.n180 3.00175
R917 gnd.t22 gnd.n85 2.82286
R918 gnd.n133 gnd.n83 2.69969
R919 gnd.n201 gnd.n5 2.69969
R920 gnd.n190 gnd.n177 1.18788
R921 gnd.n150 gnd.n51 1.18784
R922 gnd.n69 gnd.n68 1.10932
R923 gnd.n73 gnd.n0 1.10932
R924 gnd.n67 gnd.n66 1.10932
R925 gnd.n207 gnd.n206 1.10932
R926 gnd.n2 gnd.n1 1.1005
R927 gnd.n64 gnd.n63 1.1005
R928 gnd.n72 gnd.n71 1.1005
R929 gnd.n70 gnd.n62 1.1005
R930 gnd.n177 gnd.n18 0.865827
R931 gnd.n105 gnd.n51 0.86525
R932 gnd.n157 gnd.t6 0.756715
R933 gnd.n58 gnd.n51 0.716449
R934 gnd.n177 gnd.n176 0.715829
R935 gnd.n59 gnd.n58 0.455415
R936 gnd.n176 gnd.n41 0.455415
R937 gnd.n134 gnd.n133 0.446178
R938 gnd.n202 gnd.n201 0.444434
R939 gnd.n201 gnd.n200 0.420793
R940 gnd.n133 gnd.n132 0.419049
R941 gnd.n136 gnd.n135 0.408383
R942 gnd.n157 gnd.n6 0.386336
R943 gnd.n69 gnd.n67 0.37285
R944 gnd.n200 gnd.n199 0.343268
R945 gnd.n135 gnd.n134 0.318498
R946 gnd.n204 gnd.n203 0.316879
R947 gnd.n131 gnd.n130 0.316538
R948 gnd.n148 gnd.n147 0.304388
R949 gnd.n147 gnd.n145 0.304388
R950 gnd.n140 gnd.n138 0.304388
R951 gnd.n161 gnd.n159 0.304388
R952 gnd.n163 gnd.n161 0.304388
R953 gnd.n167 gnd.n3 0.304388
R954 gnd.n199 gnd.n198 0.294788
R955 gnd.n91 gnd.n90 0.243164
R956 gnd.n145 gnd.n143 0.228074
R957 gnd.n141 gnd.n140 0.228074
R958 gnd.n164 gnd.n163 0.228074
R959 gnd.n167 gnd.n166 0.228074
R960 gnd.n202 gnd.n6 0.227375
R961 gnd.n93 gnd.n92 0.227375
R962 gnd.n132 gnd.n92 0.227375
R963 gnd.n134 gnd.n91 0.227375
R964 gnd.n198 gnd.n7 0.227375
R965 gnd.n200 gnd.n7 0.227375
R966 gnd.n205 gnd.n204 0.221727
R967 gnd.n132 gnd.n131 0.220459
R968 gnd.n149 gnd.n148 0.217533
R969 gnd.n159 gnd.n40 0.217533
R970 gnd.n203 gnd.n202 0.194734
R971 gnd.n208 gnd.n207 0.17199
R972 gnd.n141 gnd.n61 0.118962
R973 gnd.n166 gnd.n158 0.118962
R974 gnd.n130 gnd.n93 0.107497
R975 gnd.n138 gnd.n136 0.0831604
R976 gnd.n205 gnd.n3 0.0831604
R977 gnd.n60 gnd.n59 0.0825339
R978 gnd.n65 gnd.n41 0.0825339
R979 gnd.n85 gnd.n61 0.0741351
R980 gnd.n158 gnd.n157 0.057699
R981 gnd.n123 gnd.n105 0.0565619
R982 gnd.n196 gnd.n18 0.0565619
R983 gnd.n149 gnd.n60 0.0527034
R984 gnd.n65 gnd.n40 0.0527034
R985 gnd.n87 gnd.n86 0.0404028
R986 gnd.n88 gnd.n86 0.0404028
R987 gnd.n89 gnd.n88 0.0404028
R988 gnd.n89 gnd.n84 0.0404028
R989 gnd.n143 gnd.n61 0.0343462
R990 gnd.n164 gnd.n158 0.0343462
R991 gnd.n123 gnd.n122 0.0275956
R992 gnd.n196 gnd.n195 0.0275956
R993 gnd.n120 gnd.n97 0.0267868
R994 gnd.n19 gnd.n9 0.0267868
R995 gnd.n108 gnd.n104 0.0259779
R996 gnd.n24 gnd.n17 0.0259779
R997 gnd.n117 gnd.n98 0.0247647
R998 gnd.n23 gnd.n10 0.0247647
R999 gnd.n208 gnd.n0 0.02459
R1000 gnd.n109 gnd.n103 0.0239559
R1001 gnd.n28 gnd.n16 0.0239559
R1002 gnd.n114 gnd.n99 0.0231471
R1003 gnd.n27 gnd.n11 0.0231471
R1004 gnd.n72 gnd.n62 0.023
R1005 gnd.n64 gnd.n2 0.023
R1006 gnd.n110 gnd.n102 0.0223382
R1007 gnd.n32 gnd.n15 0.0223382
R1008 gnd.n111 gnd.n100 0.021125
R1009 gnd.n31 gnd.n12 0.021125
R1010 gnd.n90 gnd.n84 0.0204514
R1011 gnd.n87 gnd.n61 0.0204514
R1012 gnd.n101 gnd.n95 0.0203162
R1013 gnd.n35 gnd.n14 0.0203162
R1014 gnd.n125 gnd.n96 0.0195074
R1015 gnd.n13 gnd.n8 0.0195074
R1016 gnd.n63 gnd.n1 0.01425
R1017 gnd.n71 gnd.n70 0.01425
R1018 gnd.n124 gnd.n93 0.0126324
R1019 gnd.n198 gnd.n197 0.0126324
R1020 gnd.n125 gnd.n124 0.0114191
R1021 gnd.n197 gnd.n8 0.0114191
R1022 gnd.n67 gnd.n63 0.01128
R1023 gnd.n207 gnd.n1 0.01128
R1024 gnd.n70 gnd.n69 0.01128
R1025 gnd.n71 gnd.n0 0.01128
R1026 gnd.n96 gnd.n95 0.0106103
R1027 gnd.n35 gnd.n13 0.0106103
R1028 gnd.n111 gnd.n101 0.00980147
R1029 gnd.n31 gnd.n14 0.00980147
R1030 gnd.n68 gnd.n62 0.00932
R1031 gnd.n73 gnd.n72 0.00932
R1032 gnd.n66 gnd.n64 0.00932
R1033 gnd.n206 gnd.n2 0.00932
R1034 gnd.n110 gnd.n100 0.00858823
R1035 gnd.n32 gnd.n12 0.00858823
R1036 gnd.n114 gnd.n102 0.00777941
R1037 gnd.n27 gnd.n15 0.00777941
R1038 gnd.n109 gnd.n99 0.00697059
R1039 gnd.n28 gnd.n11 0.00697059
R1040 gnd.n117 gnd.n103 0.00616176
R1041 gnd.n23 gnd.n16 0.00616176
R1042 gnd.n108 gnd.n98 0.00494853
R1043 gnd.n24 gnd.n10 0.00494853
R1044 gnd.n120 gnd.n104 0.00413971
R1045 gnd.n19 gnd.n17 0.00413971
R1046 gnd.n122 gnd.n97 0.00333088
R1047 gnd.n195 gnd.n9 0.00333088
R1048 gnd.n137 gnd.n49 0.00166667
R1049 gnd.n208 gnd 0.0014625
R1050 gnd.n83 gnd.n49 0.00133332
R1051 gnd.n191 gnd.n21 0.001
R1052 gnd.n193 gnd.n21 0.001
R1053 gnd.n194 gnd.n20 0.001
R1054 gnd.n26 gnd.n25 0.001
R1055 gnd.n30 gnd.n29 0.001
R1056 gnd.n34 gnd.n33 0.001
R1057 gnd.n37 gnd.n36 0.001
R1058 gnd.n106 gnd.n52 0.001
R1059 gnd.n107 gnd.n106 0.001
R1060 gnd.n121 gnd.n119 0.001
R1061 gnd.n118 gnd.n116 0.001
R1062 gnd.n115 gnd.n113 0.001
R1063 gnd.n112 gnd.n94 0.001
R1064 gnd.n127 gnd.n126 0.001
R1065 gnd.n129 gnd.n128 0.001
R1066 gnd.n151 gnd.n50 0.001
R1067 gnd.n50 gnd.n44 0.001
R1068 gnd.n146 gnd.n45 0.001
R1069 gnd.n144 gnd.n46 0.001
R1070 gnd.n142 gnd.n47 0.001
R1071 gnd.n139 gnd.n48 0.001
R1072 gnd.n151 gnd.n150 0.001
R1073 gnd.n150 gnd.n52 0.001
R1074 gnd.n121 gnd.n107 0.001
R1075 gnd.n119 gnd.n118 0.001
R1076 gnd.n116 gnd.n115 0.001
R1077 gnd.n113 gnd.n112 0.001
R1078 gnd.n126 gnd.n94 0.001
R1079 gnd.n129 gnd.n127 0.001
R1080 gnd.n137 gnd.n48 0.001
R1081 gnd.n139 gnd.n47 0.001
R1082 gnd.n142 gnd.n46 0.001
R1083 gnd.n144 gnd.n45 0.001
R1084 gnd.n146 gnd.n44 0.001
R1085 gnd.n128 gnd.n83 0.001
R1086 gnd.n37 gnd.n5 0.001
R1087 gnd.n175 gnd.n42 0.001
R1088 gnd.n153 gnd.n42 0.001
R1089 gnd.n160 gnd.n154 0.001
R1090 gnd.n162 gnd.n155 0.001
R1091 gnd.n165 gnd.n156 0.001
R1092 gnd.n169 gnd.n168 0.001
R1093 gnd.n171 gnd.n170 0.001
R1094 gnd.n172 gnd.n4 0.001
R1095 gnd.n190 gnd.n175 0.001
R1096 gnd.n191 gnd.n190 0.001
R1097 gnd.n36 gnd.n34 0.001
R1098 gnd.n33 gnd.n30 0.001
R1099 gnd.n29 gnd.n26 0.001
R1100 gnd.n25 gnd.n20 0.001
R1101 gnd.n194 gnd.n193 0.001
R1102 gnd.n172 gnd.n5 0.001
R1103 gnd.n160 gnd.n153 0.001
R1104 gnd.n162 gnd.n154 0.001
R1105 gnd.n165 gnd.n155 0.001
R1106 gnd.n168 gnd.n156 0.001
R1107 gnd.n170 gnd.n169 0.001
R1108 gnd.n171 gnd.n4 0.001
R1109 clk.n1 clk.t2 32.251
R1110 clk.n0 clk.t1 29.4509
R1111 clk.n0 clk.t0 12.2999
R1112 clk.n1 clk.n0 2.20443
R1113 clk clk.n1 0.574117
R1114 a_1752_817.t4 a_1752_817.n36 17.0005
R1115 a_1752_817.t4 a_1752_817.n35 17.0005
R1116 a_1752_817.t4 a_1752_817.n21 17.0005
R1117 a_1752_817.t4 a_1752_817.n25 17.0005
R1118 a_1752_817.t4 a_1752_817.n24 17.0005
R1119 a_1752_817.t2 a_1752_817.n65 17.0005
R1120 a_1752_817.t2 a_1752_817.n64 17.0005
R1121 a_1752_817.t2 a_1752_817.n50 17.0005
R1122 a_1752_817.t2 a_1752_817.n54 17.0005
R1123 a_1752_817.t2 a_1752_817.n53 17.0005
R1124 a_1752_817.t3 a_1752_817.n89 17.0005
R1125 a_1752_817.t3 a_1752_817.n88 17.0005
R1126 a_1752_817.t3 a_1752_817.n85 17.0005
R1127 a_1752_817.t3 a_1752_817.n83 17.0005
R1128 a_1752_817.t3 a_1752_817.n82 17.0005
R1129 a_1752_817.n105 a_1752_817.n1 9.80256
R1130 a_1752_817.n18 a_1752_817.n1 9.56663
R1131 a_1752_817.n18 a_1752_817.n0 9.29467
R1132 a_1752_817.n42 a_1752_817.n41 9.10814
R1133 a_1752_817.n71 a_1752_817.n70 9.10814
R1134 a_1752_817.n91 a_1752_817.n90 9.10814
R1135 a_1752_817.n23 a_1752_817.n2 9.10801
R1136 a_1752_817.n52 a_1752_817.n4 9.10801
R1137 a_1752_817.n80 a_1752_817.n6 9.10801
R1138 a_1752_817.n29 a_1752_817.n28 9.0005
R1139 a_1752_817.n32 a_1752_817.n31 9.0005
R1140 a_1752_817.n33 a_1752_817.n20 9.0005
R1141 a_1752_817.n45 a_1752_817.n44 9.0005
R1142 a_1752_817.n22 a_1752_817.n19 9.0005
R1143 a_1752_817.n39 a_1752_817.n38 9.0005
R1144 a_1752_817.n40 a_1752_817.n37 9.0005
R1145 a_1752_817.n29 a_1752_817.n3 9.0005
R1146 a_1752_817.n31 a_1752_817.n30 9.0005
R1147 a_1752_817.n20 a_1752_817.n17 9.0005
R1148 a_1752_817.n39 a_1752_817.n16 9.0005
R1149 a_1752_817.n27 a_1752_817.n26 9.0005
R1150 a_1752_817.n58 a_1752_817.n57 9.0005
R1151 a_1752_817.n61 a_1752_817.n60 9.0005
R1152 a_1752_817.n62 a_1752_817.n49 9.0005
R1153 a_1752_817.n74 a_1752_817.n73 9.0005
R1154 a_1752_817.n51 a_1752_817.n48 9.0005
R1155 a_1752_817.n68 a_1752_817.n67 9.0005
R1156 a_1752_817.n69 a_1752_817.n66 9.0005
R1157 a_1752_817.n58 a_1752_817.n5 9.0005
R1158 a_1752_817.n60 a_1752_817.n59 9.0005
R1159 a_1752_817.n49 a_1752_817.n15 9.0005
R1160 a_1752_817.n68 a_1752_817.n14 9.0005
R1161 a_1752_817.n56 a_1752_817.n55 9.0005
R1162 a_1752_817.n100 a_1752_817.n9 9.0005
R1163 a_1752_817.n99 a_1752_817.n10 9.0005
R1164 a_1752_817.n98 a_1752_817.n11 9.0005
R1165 a_1752_817.n86 a_1752_817.n12 9.0005
R1166 a_1752_817.n94 a_1752_817.n77 9.0005
R1167 a_1752_817.n93 a_1752_817.n78 9.0005
R1168 a_1752_817.n92 a_1752_817.n79 9.0005
R1169 a_1752_817.n93 a_1752_817.n13 9.0005
R1170 a_1752_817.n81 a_1752_817.n8 9.0005
R1171 a_1752_817.n101 a_1752_817.n100 9.0005
R1172 a_1752_817.n99 a_1752_817.n7 9.0005
R1173 a_1752_817.n98 a_1752_817.n97 9.0005
R1174 a_1752_817.n106 a_1752_817.n105 9.0005
R1175 a_1752_817.t1 a_1752_817.n106 8.61202
R1176 a_1752_817.t4 a_1752_817.n42 8.47918
R1177 a_1752_817.n43 a_1752_817.t4 8.47918
R1178 a_1752_817.t4 a_1752_817.n34 8.47918
R1179 a_1752_817.t4 a_1752_817.n23 8.47918
R1180 a_1752_817.t2 a_1752_817.n71 8.47918
R1181 a_1752_817.n72 a_1752_817.t2 8.47918
R1182 a_1752_817.t2 a_1752_817.n63 8.47918
R1183 a_1752_817.t2 a_1752_817.n52 8.47918
R1184 a_1752_817.n90 a_1752_817.t3 8.47918
R1185 a_1752_817.t3 a_1752_817.n87 8.47918
R1186 a_1752_817.t3 a_1752_817.n84 8.47918
R1187 a_1752_817.t3 a_1752_817.n80 8.47918
R1188 a_1752_817.n91 a_1752_817.n13 4.597
R1189 a_1752_817.n41 a_1752_817.n16 4.597
R1190 a_1752_817.n70 a_1752_817.n14 4.597
R1191 a_1752_817.n104 a_1752_817.n2 4.4886
R1192 a_1752_817.n103 a_1752_817.n4 4.4886
R1193 a_1752_817.n102 a_1752_817.n6 4.4886
R1194 a_1752_817.n76 a_1752_817.n75 4.47713
R1195 a_1752_817.n47 a_1752_817.n46 4.47713
R1196 a_1752_817.n96 a_1752_817.n95 4.47713
R1197 a_1752_817.t1 a_1752_817.n0 1.42903
R1198 a_1752_817.n1 a_1752_817.t0 1.13612
R1199 a_1752_817.n106 a_1752_817.n0 0.794962
R1200 a_1752_817.n47 a_1752_817.n18 0.207929
R1201 a_1752_817.n105 a_1752_817.n104 0.207929
R1202 a_1752_817.n76 a_1752_817.n47 0.171471
R1203 a_1752_817.n96 a_1752_817.n76 0.171471
R1204 a_1752_817.n104 a_1752_817.n103 0.171471
R1205 a_1752_817.n103 a_1752_817.n102 0.171471
R1206 a_1752_817.n30 a_1752_817.n3 0.0965
R1207 a_1752_817.n30 a_1752_817.n17 0.0965
R1208 a_1752_817.n29 a_1752_817.n27 0.0965
R1209 a_1752_817.n31 a_1752_817.n29 0.0965
R1210 a_1752_817.n31 a_1752_817.n20 0.0965
R1211 a_1752_817.n45 a_1752_817.n20 0.0965
R1212 a_1752_817.n39 a_1752_817.n19 0.0965
R1213 a_1752_817.n40 a_1752_817.n39 0.0965
R1214 a_1752_817.n59 a_1752_817.n5 0.0965
R1215 a_1752_817.n59 a_1752_817.n15 0.0965
R1216 a_1752_817.n58 a_1752_817.n56 0.0965
R1217 a_1752_817.n60 a_1752_817.n58 0.0965
R1218 a_1752_817.n60 a_1752_817.n49 0.0965
R1219 a_1752_817.n74 a_1752_817.n49 0.0965
R1220 a_1752_817.n68 a_1752_817.n48 0.0965
R1221 a_1752_817.n69 a_1752_817.n68 0.0965
R1222 a_1752_817.n100 a_1752_817.n8 0.0965
R1223 a_1752_817.n100 a_1752_817.n99 0.0965
R1224 a_1752_817.n99 a_1752_817.n98 0.0965
R1225 a_1752_817.n98 a_1752_817.n12 0.0965
R1226 a_1752_817.n94 a_1752_817.n93 0.0965
R1227 a_1752_817.n93 a_1752_817.n92 0.0965
R1228 a_1752_817.n101 a_1752_817.n7 0.0965
R1229 a_1752_817.n97 a_1752_817.n7 0.0965
R1230 a_1752_817.n32 a_1752_817.n25 0.083
R1231 a_1752_817.n35 a_1752_817.n22 0.083
R1232 a_1752_817.n61 a_1752_817.n54 0.083
R1233 a_1752_817.n64 a_1752_817.n51 0.083
R1234 a_1752_817.n83 a_1752_817.n10 0.083
R1235 a_1752_817.n88 a_1752_817.n77 0.083
R1236 a_1752_817.n96 a_1752_817.n13 0.0825
R1237 a_1752_817.n47 a_1752_817.n16 0.0825
R1238 a_1752_817.n76 a_1752_817.n14 0.0825
R1239 a_1752_817.n34 a_1752_817.n33 0.0721377
R1240 a_1752_817.n44 a_1752_817.n43 0.0721377
R1241 a_1752_817.n63 a_1752_817.n62 0.0721377
R1242 a_1752_817.n73 a_1752_817.n72 0.0721377
R1243 a_1752_817.n84 a_1752_817.n11 0.0721377
R1244 a_1752_817.n87 a_1752_817.n86 0.0721377
R1245 a_1752_817.n26 a_1752_817.n24 0.0705
R1246 a_1752_817.n37 a_1752_817.n36 0.0705
R1247 a_1752_817.n55 a_1752_817.n53 0.0705
R1248 a_1752_817.n66 a_1752_817.n65 0.0705
R1249 a_1752_817.n82 a_1752_817.n81 0.0705
R1250 a_1752_817.n89 a_1752_817.n79 0.0705
R1251 a_1752_817.n47 a_1752_817.n17 0.0665
R1252 a_1752_817.n76 a_1752_817.n15 0.0665
R1253 a_1752_817.n97 a_1752_817.n96 0.0665
R1254 a_1752_817.n26 a_1752_817.n23 0.0621377
R1255 a_1752_817.n42 a_1752_817.n37 0.0621377
R1256 a_1752_817.n55 a_1752_817.n52 0.0621377
R1257 a_1752_817.n71 a_1752_817.n66 0.0621377
R1258 a_1752_817.n81 a_1752_817.n80 0.0621377
R1259 a_1752_817.n90 a_1752_817.n79 0.0621377
R1260 a_1752_817.n33 a_1752_817.n21 0.0605
R1261 a_1752_817.n44 a_1752_817.n21 0.0605
R1262 a_1752_817.n62 a_1752_817.n50 0.0605
R1263 a_1752_817.n73 a_1752_817.n50 0.0605
R1264 a_1752_817.n85 a_1752_817.n11 0.0605
R1265 a_1752_817.n86 a_1752_817.n85 0.0605
R1266 a_1752_817.n28 a_1752_817.n24 0.0505
R1267 a_1752_817.n38 a_1752_817.n36 0.0505
R1268 a_1752_817.n57 a_1752_817.n53 0.0505
R1269 a_1752_817.n67 a_1752_817.n65 0.0505
R1270 a_1752_817.n82 a_1752_817.n9 0.0505
R1271 a_1752_817.n89 a_1752_817.n78 0.0505
R1272 a_1752_817.n34 a_1752_817.n32 0.0496377
R1273 a_1752_817.n43 a_1752_817.n22 0.0496377
R1274 a_1752_817.n63 a_1752_817.n61 0.0496377
R1275 a_1752_817.n72 a_1752_817.n51 0.0496377
R1276 a_1752_817.n84 a_1752_817.n10 0.0496377
R1277 a_1752_817.n87 a_1752_817.n77 0.0496377
R1278 a_1752_817.n46 a_1752_817.n45 0.0487454
R1279 a_1752_817.n75 a_1752_817.n74 0.0487454
R1280 a_1752_817.n75 a_1752_817.n48 0.0487454
R1281 a_1752_817.n46 a_1752_817.n19 0.0487454
R1282 a_1752_817.n95 a_1752_817.n94 0.0487454
R1283 a_1752_817.n95 a_1752_817.n12 0.0487454
R1284 a_1752_817.n8 a_1752_817.n6 0.0486243
R1285 a_1752_817.n56 a_1752_817.n4 0.0486243
R1286 a_1752_817.n27 a_1752_817.n2 0.0486243
R1287 a_1752_817.n41 a_1752_817.n40 0.0484934
R1288 a_1752_817.n70 a_1752_817.n69 0.0484934
R1289 a_1752_817.n92 a_1752_817.n91 0.0484934
R1290 a_1752_817.n28 a_1752_817.n25 0.038
R1291 a_1752_817.n38 a_1752_817.n35 0.038
R1292 a_1752_817.n57 a_1752_817.n54 0.038
R1293 a_1752_817.n67 a_1752_817.n64 0.038
R1294 a_1752_817.n83 a_1752_817.n9 0.038
R1295 a_1752_817.n88 a_1752_817.n78 0.038
R1296 a_1752_817.n104 a_1752_817.n3 0.0065
R1297 a_1752_817.n103 a_1752_817.n5 0.0065
R1298 a_1752_817.n102 a_1752_817.n101 0.0065
R1299 V-.n2 V-.t2 17.1792
R1300 V-.n0 V-.t2 17.1129
R1301 V-.n1 V-.t1 17.1083
R1302 V-.n2 V-.t0 16.5321
R1303 V-.t3 V-.t1 15.8156
R1304 V-.t0 V-.n1 7.51146
R1305 V-.n0 V-.t3 7.51146
R1306 V- V-.n2 1.57783
R1307 V-.n1 V-.n0 0.792909
R1308 a_687_2445.n2 a_687_2445.t6 42.3316
R1309 a_687_2445.n0 a_687_2445.t0 17.0005
R1310 a_687_2445.n10 a_687_2445.t0 17.0005
R1311 a_687_2445.n34 a_687_2445.t1 17.0005
R1312 a_687_2445.n34 a_687_2445.t0 17.0005
R1313 a_687_2445.n32 a_687_2445.t1 17.0005
R1314 a_687_2445.n32 a_687_2445.t0 17.0005
R1315 a_687_2445.n11 a_687_2445.t0 17.0005
R1316 a_687_2445.n17 a_687_2445.t0 17.0005
R1317 a_687_2445.n27 a_687_2445.t1 17.0005
R1318 a_687_2445.n27 a_687_2445.t0 17.0005
R1319 a_687_2445.n25 a_687_2445.t1 17.0005
R1320 a_687_2445.n25 a_687_2445.t0 17.0005
R1321 a_687_2445.n18 a_687_2445.t1 17.0005
R1322 a_687_2445.n18 a_687_2445.t0 17.0005
R1323 a_687_2445.n19 a_687_2445.t1 17.0005
R1324 a_687_2445.n19 a_687_2445.t0 17.0005
R1325 a_687_2445.n5 a_687_2445.t7 16.5258
R1326 a_687_2445.n1 a_687_2445.t4 11.3748
R1327 a_687_2445.n3 a_687_2445.t2 11.3699
R1328 a_687_2445.n1 a_687_2445.t5 10.7827
R1329 a_687_2445.n3 a_687_2445.t3 10.7768
R1330 a_687_2445.n6 a_687_2445.n5 10.127
R1331 a_687_2445.n22 a_687_2445.n20 9.07383
R1332 a_687_2445.n29 a_687_2445.n14 9.0005
R1333 a_687_2445.n30 a_687_2445.n13 9.0005
R1334 a_687_2445.n12 a_687_2445.n8 9.0005
R1335 a_687_2445.n36 a_687_2445.n7 9.0005
R1336 a_687_2445.n37 a_687_2445.n6 9.0005
R1337 a_687_2445.n21 a_687_2445.n15 9.0005
R1338 a_687_2445.n38 a_687_2445.n37 9.0005
R1339 a_687_2445.n36 a_687_2445.n35 9.0005
R1340 a_687_2445.n33 a_687_2445.n8 9.0005
R1341 a_687_2445.n31 a_687_2445.n30 9.0005
R1342 a_687_2445.n29 a_687_2445.n28 9.0005
R1343 a_687_2445.n24 a_687_2445.n23 9.0005
R1344 a_687_2445.n26 a_687_2445.n15 9.0005
R1345 a_687_2445.n39 a_687_2445.n38 8.59134
R1346 a_687_2445.n9 a_687_2445.t1 8.4807
R1347 a_687_2445.n16 a_687_2445.t1 8.4807
R1348 a_687_2445.n5 a_687_2445.n4 5.41809
R1349 a_687_2445.n22 a_687_2445.n21 4.64666
R1350 a_687_2445.n4 a_687_2445.n3 2.72004
R1351 a_687_2445.n2 a_687_2445.n1 2.62953
R1352 a_687_2445.n4 a_687_2445.n2 0.337414
R1353 a_687_2445.n7 a_687_2445.n6 0.146155
R1354 a_687_2445.n12 a_687_2445.n7 0.146155
R1355 a_687_2445.n13 a_687_2445.n12 0.146155
R1356 a_687_2445.n14 a_687_2445.n13 0.146155
R1357 a_687_2445.n21 a_687_2445.n14 0.146155
R1358 a_687_2445.n37 a_687_2445.n36 0.146155
R1359 a_687_2445.n36 a_687_2445.n8 0.146155
R1360 a_687_2445.n30 a_687_2445.n8 0.146155
R1361 a_687_2445.n30 a_687_2445.n29 0.146155
R1362 a_687_2445.n29 a_687_2445.n15 0.146155
R1363 a_687_2445.n23 a_687_2445.n15 0.146155
R1364 a_687_2445.n28 a_687_2445.n27 0.0786
R1365 a_687_2445.n20 a_687_2445.n18 0.0764
R1366 a_687_2445.n23 a_687_2445.n22 0.0726677
R1367 a_687_2445.n35 a_687_2445.n34 0.0698
R1368 a_687_2445.n32 a_687_2445.n31 0.061
R1369 a_687_2445.n26 a_687_2445.n25 0.0544
R1370 a_687_2445.n25 a_687_2445.n24 0.0522
R1371 a_687_2445.n33 a_687_2445.n32 0.0456
R1372 a_687_2445.n10 a_687_2445.n9 0.0416028
R1373 a_687_2445.n17 a_687_2445.n16 0.0416028
R1374 a_687_2445.n9 a_687_2445.n0 0.0416028
R1375 a_687_2445.n16 a_687_2445.n11 0.0416028
R1376 a_687_2445.n34 a_687_2445.n33 0.0368
R1377 a_687_2445.n24 a_687_2445.n18 0.0302
R1378 a_687_2445.n27 a_687_2445.n26 0.028
R1379 a_687_2445.n31 a_687_2445.n11 0.0214
R1380 a_687_2445.n38 a_687_2445.n0 0.0126
R1381 a_687_2445.n35 a_687_2445.n10 0.0126
R1382 a_687_2445.n20 a_687_2445.n19 0.006
R1383 a_687_2445.n28 a_687_2445.n17 0.0038
R1384 a_687_2445.n39 a_687_2445.t1 0.001
R1385 a_687_2445.n39 a_687_2445.t0 0.001
R1386 vbias vbias.t0 6.1153
R1387 out-.t0 out-.n6 17.0005
R1388 out-.t0 out-.n5 17.0005
R1389 out-.t0 out-.n4 17.0005
R1390 out-.t1 out-.n32 17.0005
R1391 out-.t1 out-.n13 17.0005
R1392 out-.t1 out-.n12 17.0005
R1393 out-.n40 out-.n39 9.04081
R1394 out-.n14 out-.n2 9.03703
R1395 out-.n26 out-.n25 9.0005
R1396 out-.n28 out-.n27 9.0005
R1397 out-.n37 out-.n36 9.0005
R1398 out-.n8 out-.n1 9.0005
R1399 out-.n18 out-.n17 9.0005
R1400 out-.n22 out-.n21 9.0005
R1401 out-.n43 out-.n41 9.0005
R1402 out-.n44 out-.n41 9.0005
R1403 out-.n42 out-.n41 9.0005
R1404 out-.n48 out-.n41 9.0005
R1405 out-.n49 out-.n43 9.0005
R1406 out-.n49 out-.n44 9.0005
R1407 out-.n49 out-.n42 9.0005
R1408 out-.n49 out-.n48 9.0005
R1409 out-.n33 out-.t1 8.501
R1410 out-.t0 out-.n2 8.50006
R1411 out-.t1 out-.n10 8.49923
R1412 out-.t3 out-.n46 8.49864
R1413 out-.n47 out-.t3 8.49864
R1414 out-.n39 out-.t0 8.49628
R1415 out-.t3 out-.n45 8.49096
R1416 out-.t1 out-.n9 8.49007
R1417 out-.t1 out-.n11 8.49007
R1418 out-.t0 out-.n38 8.46606
R1419 out-.t0 out-.n3 8.46606
R1420 out-.n49 out-.t2 5.16416
R1421 out-.n14 out-.n10 4.51473
R1422 out-.n33 out-.n0 4.51194
R1423 out-.n35 out-.n34 4.5005
R1424 out-.n31 out-.n7 4.5005
R1425 out-.n30 out-.n29 4.5005
R1426 out-.n24 out-.n23 4.5005
R1427 out-.n20 out-.n19 4.5005
R1428 out-.n16 out-.n15 4.5005
R1429 out- out-.n50 1.4685
R1430 out-.n17 out-.n2 0.146886
R1431 out-.n39 out-.n1 0.143078
R1432 out-.n37 out-.n6 0.137052
R1433 out-.n21 out-.n4 0.129466
R1434 out-.n50 out-.n40 0.126844
R1435 out-.n38 out-.n1 0.108815
R1436 out-.n17 out-.n3 0.101229
R1437 out-.n27 out-.n5 0.0953276
R1438 out-.n25 out-.n5 0.0877414
R1439 out-.n21 out-.n3 0.0822633
R1440 out-.n38 out-.n37 0.0746771
R1441 out-.n25 out-.n4 0.0536034
R1442 out-.n34 out-.n33 0.0468193
R1443 out-.n27 out-.n6 0.0460172
R1444 out-.n47 out-.n42 0.0453402
R1445 out-.n46 out-.n44 0.0453402
R1446 out-.n15 out-.n10 0.0450428
R1447 out-.n19 out-.n12 0.043672
R1448 out-.n32 out-.n31 0.0401237
R1449 out-.n15 out-.n11 0.0352729
R1450 out-.n34 out-.n9 0.0317246
R1451 out-.n23 out-.n13 0.0306613
R1452 out-.n45 out-.n42 0.0293633
R1453 out-.n45 out-.n44 0.0293633
R1454 out-.n30 out-.n13 0.0271129
R1455 out-.n31 out-.n9 0.0269934
R1456 out-.n19 out-.n11 0.023445
R1457 out-.n16 out-.n14 0.019037
R1458 out-.n20 out-.n18 0.019037
R1459 out-.n24 out-.n22 0.019037
R1460 out-.n29 out-.n26 0.019037
R1461 out-.n28 out-.n7 0.019037
R1462 out-.n36 out-.n35 0.019037
R1463 out-.n8 out-.n0 0.019037
R1464 out-.n32 out-.n30 0.0176505
R1465 out-.n23 out-.n12 0.0141022
R1466 out-.n48 out-.n47 0.0134159
R1467 out-.n46 out-.n43 0.0134159
R1468 out-.n50 out-.n41 0.0127081
R1469 out-.n50 out-.n49 0.0127081
R1470 out-.n18 out-.n16 0.00151852
R1471 out-.n22 out-.n20 0.00151852
R1472 out-.n26 out-.n24 0.00151852
R1473 out-.n29 out-.n28 0.00151852
R1474 out-.n36 out-.n7 0.00151852
R1475 out-.n35 out-.n8 0.00151852
R1476 out-.n40 out-.n0 0.00151852
C14 vbias gnd 6.08214f
C15 clk gnd 8.00286f
C16 out+ gnd 2.36194f
C17 out- gnd 2.35874f
C18 V+ gnd 4.56701f
C19 V- gnd 4.63535f
C20 vdd gnd 18.01569f
C21 vbias.t0 gnd 1.85217f $ **FLOATING
C22 a_687_2445.t0 gnd 0.38087f $ **FLOATING
C23 a_687_2445.t1 gnd 0.38087f $ **FLOATING
C24 a_687_2445.n0 gnd 0.0281f $ **FLOATING
C25 a_687_2445.t4 gnd 0.63936f $ **FLOATING
C26 a_687_2445.t5 gnd 0.58943f $ **FLOATING
C27 a_687_2445.n1 gnd 1.7558f $ **FLOATING
C28 a_687_2445.t6 gnd 0.50704f $ **FLOATING
C29 a_687_2445.n2 gnd 2.33861f $ **FLOATING
C30 a_687_2445.t2 gnd 0.61663f $ **FLOATING
C31 a_687_2445.t3 gnd 0.58944f $ **FLOATING
C32 a_687_2445.n3 gnd 1.67586f $ **FLOATING
C33 a_687_2445.n4 gnd 0.88758f $ **FLOATING
C34 a_687_2445.t7 gnd 0.8087f $ **FLOATING
C35 a_687_2445.n5 gnd 1.00727f $ **FLOATING
C36 a_687_2445.n6 gnd 0.3852f $ **FLOATING
C37 a_687_2445.n7 gnd 0.03681f $ **FLOATING
C38 a_687_2445.n8 gnd 0.03681f $ **FLOATING
C39 a_687_2445.n10 gnd 0.0281f $ **FLOATING
C40 a_687_2445.n11 gnd 0.03074f $ **FLOATING
C41 a_687_2445.n12 gnd 0.03681f $ **FLOATING
C42 a_687_2445.n13 gnd 0.03681f $ **FLOATING
C43 a_687_2445.n14 gnd 0.03681f $ **FLOATING
C44 a_687_2445.n15 gnd 0.03681f $ **FLOATING
C45 a_687_2445.n17 gnd 0.02545f $ **FLOATING
C46 a_687_2445.n18 gnd 0.03173f $ **FLOATING
C47 a_687_2445.n19 gnd 0.01498f $ **FLOATING
C48 a_687_2445.n20 gnd 0.0247f $ **FLOATING
C49 a_687_2445.n21 gnd 0.10061f $ **FLOATING
C50 a_687_2445.n22 gnd 0.03182f $ **FLOATING
C51 a_687_2445.n23 gnd 0.03681f $ **FLOATING
C52 a_687_2445.n24 gnd 0.02446f $ **FLOATING
C53 a_687_2445.n25 gnd 0.03173f $ **FLOATING
C54 a_687_2445.n26 gnd 0.02446f $ **FLOATING
C55 a_687_2445.n27 gnd 0.03173f $ **FLOATING
C56 a_687_2445.n28 gnd 0.02446f $ **FLOATING
C57 a_687_2445.n29 gnd 0.03681f $ **FLOATING
C58 a_687_2445.n30 gnd 0.03681f $ **FLOATING
C59 a_687_2445.n31 gnd 0.02446f $ **FLOATING
C60 a_687_2445.n32 gnd 0.03173f $ **FLOATING
C61 a_687_2445.n33 gnd 0.02446f $ **FLOATING
C62 a_687_2445.n34 gnd 0.03173f $ **FLOATING
C63 a_687_2445.n35 gnd 0.02446f $ **FLOATING
C64 a_687_2445.n36 gnd 0.03681f $ **FLOATING
C65 a_687_2445.n37 gnd 0.02953f $ **FLOATING
C66 a_687_2445.n38 gnd 0.04962f $ **FLOATING
C67 V-.t2 gnd 0.41765f $ **FLOATING
C68 V-.t1 gnd 0.57633f $ **FLOATING
C69 V-.t3 gnd 0.50117f $ **FLOATING
C70 V-.n0 gnd 0.21374f $ **FLOATING
C71 V-.n1 gnd 0.21543f $ **FLOATING
C72 V-.t0 gnd 0.34063f $ **FLOATING
C73 V-.n2 gnd 1.13091f $ **FLOATING
C74 a_1752_817.n0 gnd 0.22921f $ **FLOATING
C75 a_1752_817.t0 gnd 0.64244f $ **FLOATING
C76 a_1752_817.n1 gnd 0.38704f $ **FLOATING
C77 a_1752_817.n2 gnd 0.06283f $ **FLOATING
C78 a_1752_817.n3 gnd 0.04146f $ **FLOATING
C79 a_1752_817.n4 gnd 0.06283f $ **FLOATING
C80 a_1752_817.n5 gnd 0.04146f $ **FLOATING
C81 a_1752_817.n6 gnd 0.06283f $ **FLOATING
C82 a_1752_817.n7 gnd 0.07805f $ **FLOATING
C83 a_1752_817.n8 gnd 0.07805f $ **FLOATING
C84 a_1752_817.n9 gnd 0.02846f $ **FLOATING
C85 a_1752_817.n10 gnd 0.05548f $ **FLOATING
C86 a_1752_817.n11 gnd 0.0515f $ **FLOATING
C87 a_1752_817.n12 gnd 0.07805f $ **FLOATING
C88 a_1752_817.n13 gnd 0.20943f $ **FLOATING
C89 a_1752_817.n14 gnd 0.20943f $ **FLOATING
C90 a_1752_817.n15 gnd 0.06585f $ **FLOATING
C91 a_1752_817.n16 gnd 0.20943f $ **FLOATING
C92 a_1752_817.n17 gnd 0.06585f $ **FLOATING
C93 a_1752_817.n18 gnd 0.68384f $ **FLOATING
C94 a_1752_817.n19 gnd 0.07805f $ **FLOATING
C95 a_1752_817.n20 gnd 0.07805f $ **FLOATING
C96 a_1752_817.n21 gnd 0.03903f $ **FLOATING
C97 a_1752_817.n22 gnd 0.05548f $ **FLOATING
C98 a_1752_817.n23 gnd 0.07147f $ **FLOATING
C99 a_1752_817.n24 gnd 0.03903f $ **FLOATING
C100 a_1752_817.n25 gnd 0.03903f $ **FLOATING
C101 a_1752_817.n26 gnd 0.05291f $ **FLOATING
C102 a_1752_817.n27 gnd 0.07805f $ **FLOATING
C103 a_1752_817.n28 gnd 0.02846f $ **FLOATING
C104 a_1752_817.n29 gnd 0.07805f $ **FLOATING
C105 a_1752_817.n30 gnd 0.07805f $ **FLOATING
C106 a_1752_817.n31 gnd 0.07805f $ **FLOATING
C107 a_1752_817.n32 gnd 0.05548f $ **FLOATING
C108 a_1752_817.n33 gnd 0.0515f $ **FLOATING
C109 a_1752_817.n34 gnd 0.01742f $ **FLOATING
C110 a_1752_817.n35 gnd 0.03903f $ **FLOATING
C111 a_1752_817.n36 gnd 0.03903f $ **FLOATING
C112 a_1752_817.n37 gnd 0.05291f $ **FLOATING
C113 a_1752_817.n38 gnd 0.02846f $ **FLOATING
C114 a_1752_817.n39 gnd 0.07805f $ **FLOATING
C115 a_1752_817.n40 gnd 0.07805f $ **FLOATING
C116 a_1752_817.n41 gnd 0.0662f $ **FLOATING
C117 a_1752_817.n42 gnd 0.07148f $ **FLOATING
C118 a_1752_817.t4 gnd 0.56542f $ **FLOATING
C119 a_1752_817.n43 gnd 0.01742f $ **FLOATING
C120 a_1752_817.n44 gnd 0.0515f $ **FLOATING
C121 a_1752_817.n45 gnd 0.07805f $ **FLOATING
C122 a_1752_817.n47 gnd 0.44949f $ **FLOATING
C123 a_1752_817.n48 gnd 0.07805f $ **FLOATING
C124 a_1752_817.n49 gnd 0.07805f $ **FLOATING
C125 a_1752_817.n50 gnd 0.03903f $ **FLOATING
C126 a_1752_817.n51 gnd 0.05548f $ **FLOATING
C127 a_1752_817.n52 gnd 0.07147f $ **FLOATING
C128 a_1752_817.n53 gnd 0.03903f $ **FLOATING
C129 a_1752_817.n54 gnd 0.03903f $ **FLOATING
C130 a_1752_817.n55 gnd 0.05291f $ **FLOATING
C131 a_1752_817.n56 gnd 0.07805f $ **FLOATING
C132 a_1752_817.n57 gnd 0.02846f $ **FLOATING
C133 a_1752_817.n58 gnd 0.07805f $ **FLOATING
C134 a_1752_817.n59 gnd 0.07805f $ **FLOATING
C135 a_1752_817.n60 gnd 0.07805f $ **FLOATING
C136 a_1752_817.n61 gnd 0.05548f $ **FLOATING
C137 a_1752_817.n62 gnd 0.0515f $ **FLOATING
C138 a_1752_817.n63 gnd 0.01742f $ **FLOATING
C139 a_1752_817.n64 gnd 0.03903f $ **FLOATING
C140 a_1752_817.n65 gnd 0.03903f $ **FLOATING
C141 a_1752_817.n66 gnd 0.05291f $ **FLOATING
C142 a_1752_817.n67 gnd 0.02846f $ **FLOATING
C143 a_1752_817.n68 gnd 0.07805f $ **FLOATING
C144 a_1752_817.n69 gnd 0.07805f $ **FLOATING
C145 a_1752_817.n70 gnd 0.0662f $ **FLOATING
C146 a_1752_817.n71 gnd 0.07148f $ **FLOATING
C147 a_1752_817.t2 gnd 0.63194f $ **FLOATING
C148 a_1752_817.n72 gnd 0.01742f $ **FLOATING
C149 a_1752_817.n73 gnd 0.0515f $ **FLOATING
C150 a_1752_817.n74 gnd 0.07805f $ **FLOATING
C151 a_1752_817.n76 gnd 0.41198f $ **FLOATING
C152 a_1752_817.n77 gnd 0.05548f $ **FLOATING
C153 a_1752_817.n78 gnd 0.02846f $ **FLOATING
C154 a_1752_817.n79 gnd 0.05291f $ **FLOATING
C155 a_1752_817.n80 gnd 0.07147f $ **FLOATING
C156 a_1752_817.n81 gnd 0.05291f $ **FLOATING
C157 a_1752_817.n82 gnd 0.03903f $ **FLOATING
C158 a_1752_817.n83 gnd 0.03903f $ **FLOATING
C159 a_1752_817.n84 gnd 0.01742f $ **FLOATING
C160 a_1752_817.n85 gnd 0.03903f $ **FLOATING
C161 a_1752_817.n86 gnd 0.0515f $ **FLOATING
C162 a_1752_817.n87 gnd 0.01742f $ **FLOATING
C163 a_1752_817.n88 gnd 0.03903f $ **FLOATING
C164 a_1752_817.n89 gnd 0.03903f $ **FLOATING
C165 a_1752_817.t3 gnd 0.56542f $ **FLOATING
C166 a_1752_817.n90 gnd 0.07148f $ **FLOATING
C167 a_1752_817.n91 gnd 0.0662f $ **FLOATING
C168 a_1752_817.n92 gnd 0.07805f $ **FLOATING
C169 a_1752_817.n93 gnd 0.07805f $ **FLOATING
C170 a_1752_817.n94 gnd 0.07805f $ **FLOATING
C171 a_1752_817.n96 gnd 0.29298f $ **FLOATING
C172 a_1752_817.n97 gnd 0.06585f $ **FLOATING
C173 a_1752_817.n98 gnd 0.07805f $ **FLOATING
C174 a_1752_817.n99 gnd 0.07805f $ **FLOATING
C175 a_1752_817.n100 gnd 0.07805f $ **FLOATING
C176 a_1752_817.n101 gnd 0.04146f $ **FLOATING
C177 a_1752_817.n102 gnd 0.29602f $ **FLOATING
C178 a_1752_817.n103 gnd 0.41502f $ **FLOATING
C179 a_1752_817.n104 gnd 0.45253f $ **FLOATING
C180 a_1752_817.n105 gnd 0.67879f $ **FLOATING
C181 a_1752_817.n106 gnd 0.16205f $ **FLOATING
C182 a_1752_817.t1 gnd 0.64241f $ **FLOATING
C183 clk.t2 gnd 0.16151f $ **FLOATING
C184 clk.t0 gnd 0.66367f $ **FLOATING
C185 clk.t1 gnd 0.09394f $ **FLOATING
C186 clk.n0 gnd 0.70029f $ **FLOATING
C187 clk.n1 gnd 1.27379f $ **FLOATING
C188 vdd.n0 gnd 0.52134f $ **FLOATING
C189 vdd.n1 gnd 0.1453f $ **FLOATING
C190 vdd.n2 gnd 0.01045f $ **FLOATING
C191 vdd.n3 gnd 0.01045f $ **FLOATING
C192 vdd.n4 gnd 0.01418f $ **FLOATING
C193 vdd.n5 gnd 0.02871f $ **FLOATING
C194 vdd.n6 gnd 0.43652f $ **FLOATING
C195 vdd.n7 gnd 0.01045f $ **FLOATING
C196 vdd.n8 gnd 0.01045f $ **FLOATING
C197 vdd.n9 gnd 0.01418f $ **FLOATING
C198 vdd.n10 gnd 0.1002f $ **FLOATING
C199 vdd.n11 gnd 0.01045f $ **FLOATING
C200 vdd.n12 gnd 0.01418f $ **FLOATING
C201 vdd.n13 gnd 0.01418f $ **FLOATING
C202 vdd.n14 gnd 0.01418f $ **FLOATING
C203 vdd.n15 gnd 0.01045f $ **FLOATING
C204 vdd.n16 gnd 0.07211f $ **FLOATING
C205 vdd.n17 gnd 0.07211f $ **FLOATING
C206 vdd.n18 gnd 0.07211f $ **FLOATING
C207 vdd.n19 gnd 0.07211f $ **FLOATING
C208 vdd.n20 gnd 0.07211f $ **FLOATING
C209 vdd.n22 gnd 0.01045f $ **FLOATING
C210 vdd.n23 gnd 0.01045f $ **FLOATING
C211 vdd.n24 gnd 0.01418f $ **FLOATING
C212 vdd.n25 gnd 0.01045f $ **FLOATING
C213 vdd.n26 gnd 0.01045f $ **FLOATING
C214 vdd.n27 gnd 0.01418f $ **FLOATING
C215 vdd.n28 gnd 0.01045f $ **FLOATING
C216 vdd.n29 gnd 0.01418f $ **FLOATING
C217 vdd.n30 gnd 0.01418f $ **FLOATING
C218 vdd.n31 gnd 0.01418f $ **FLOATING
C219 vdd.n32 gnd 0.01045f $ **FLOATING
C220 vdd.n33 gnd 0.1002f $ **FLOATING
C221 vdd.n34 gnd 0.1453f $ **FLOATING
C222 vdd.n35 gnd 0.01045f $ **FLOATING
C223 vdd.n36 gnd 0.01045f $ **FLOATING
C224 vdd.n37 gnd 0.01418f $ **FLOATING
C225 vdd.n38 gnd 0.01045f $ **FLOATING
C226 vdd.n39 gnd 0.01418f $ **FLOATING
C227 vdd.n40 gnd 0.01418f $ **FLOATING
C228 vdd.n41 gnd 0.01418f $ **FLOATING
C229 vdd.n42 gnd 0.01045f $ **FLOATING
C230 vdd.n43 gnd 0.1002f $ **FLOATING
C231 vdd.n44 gnd 0.1453f $ **FLOATING
C232 vdd.n45 gnd 0.01045f $ **FLOATING
C233 vdd.n46 gnd 0.01045f $ **FLOATING
C234 vdd.n47 gnd 0.01418f $ **FLOATING
C235 vdd.n48 gnd 0.01045f $ **FLOATING
C236 vdd.n49 gnd 0.01418f $ **FLOATING
C237 vdd.n50 gnd 0.01418f $ **FLOATING
C238 vdd.n51 gnd 0.01418f $ **FLOATING
C239 vdd.n52 gnd 0.01045f $ **FLOATING
C240 vdd.n53 gnd 0.1002f $ **FLOATING
C241 vdd.n54 gnd 0.1453f $ **FLOATING
C242 vdd.n55 gnd 0.01045f $ **FLOATING
C243 vdd.n56 gnd 0.01045f $ **FLOATING
C244 vdd.n57 gnd 0.01418f $ **FLOATING
C245 vdd.n58 gnd 0.01045f $ **FLOATING
C246 vdd.n59 gnd 0.01418f $ **FLOATING
C247 vdd.n60 gnd 0.01418f $ **FLOATING
C248 vdd.n61 gnd 0.01418f $ **FLOATING
C249 vdd.n62 gnd 0.01045f $ **FLOATING
C250 vdd.n63 gnd 0.1002f $ **FLOATING
C251 vdd.n64 gnd 0.90153f $ **FLOATING
C252 vdd.n65 gnd 0.1453f $ **FLOATING
C253 vdd.n66 gnd 0.01045f $ **FLOATING
C254 vdd.n67 gnd 0.01045f $ **FLOATING
C255 vdd.n68 gnd 0.01418f $ **FLOATING
C256 vdd.n70 gnd 0.01045f $ **FLOATING
C257 vdd.n71 gnd 0.01045f $ **FLOATING
C258 vdd.n72 gnd 0.01418f $ **FLOATING
C259 vdd.n73 gnd 0.1002f $ **FLOATING
C260 vdd.n74 gnd 0.01045f $ **FLOATING
C261 vdd.n75 gnd 0.01418f $ **FLOATING
C262 vdd.n76 gnd 0.01418f $ **FLOATING
C263 vdd.n77 gnd 0.01418f $ **FLOATING
C264 vdd.n78 gnd 0.01045f $ **FLOATING
C265 vdd.n79 gnd 0.07211f $ **FLOATING
C266 vdd.n80 gnd 0.11559f $ **FLOATING
C267 vdd.n83 gnd 0.0273f $ **FLOATING
C268 vdd.n84 gnd 0.0273f $ **FLOATING
C269 vdd.n86 gnd 0.07211f $ **FLOATING
C270 vdd.n88 gnd 0.01045f $ **FLOATING
C271 vdd.n89 gnd 0.01045f $ **FLOATING
C272 vdd.n90 gnd 0.01418f $ **FLOATING
C273 vdd.n91 gnd 0.01045f $ **FLOATING
C274 vdd.n92 gnd 0.01045f $ **FLOATING
C275 vdd.n93 gnd 0.01418f $ **FLOATING
C276 vdd.n94 gnd 0.01045f $ **FLOATING
C277 vdd.n95 gnd 0.01418f $ **FLOATING
C278 vdd.n96 gnd 0.01418f $ **FLOATING
C279 vdd.n97 gnd 0.01418f $ **FLOATING
C280 vdd.n98 gnd 0.01045f $ **FLOATING
C281 vdd.n99 gnd 0.1002f $ **FLOATING
C282 vdd.n100 gnd 0.1453f $ **FLOATING
C283 vdd.n101 gnd 0.1453f $ **FLOATING
C284 vdd.n102 gnd 0.1002f $ **FLOATING
C285 vdd.n103 gnd 0.01045f $ **FLOATING
C286 vdd.n104 gnd 0.01418f $ **FLOATING
C287 vdd.n105 gnd 0.01418f $ **FLOATING
C288 vdd.n106 gnd 0.01418f $ **FLOATING
C289 vdd.n107 gnd 0.01045f $ **FLOATING
C290 vdd.n108 gnd 0.07211f $ **FLOATING
C291 vdd.n110 gnd 0.01045f $ **FLOATING
C292 vdd.n111 gnd 0.01045f $ **FLOATING
C293 vdd.n112 gnd 0.01418f $ **FLOATING
C294 vdd.n113 gnd 0.1002f $ **FLOATING
C295 vdd.n114 gnd 0.01045f $ **FLOATING
C296 vdd.n115 gnd 0.01418f $ **FLOATING
C297 vdd.n116 gnd 0.01418f $ **FLOATING
C298 vdd.n117 gnd 0.01418f $ **FLOATING
C299 vdd.n118 gnd 0.01045f $ **FLOATING
C300 vdd.n119 gnd 0.07211f $ **FLOATING
C301 vdd.t2 gnd 0.07442f $ **FLOATING
C302 vdd.t4 gnd 0.07443f $ **FLOATING
C303 vdd.n120 gnd 0.0712f $ **FLOATING
C304 vdd.n121 gnd 0.08367f $ **FLOATING
C305 vdd.n122 gnd 0.36204f $ **FLOATING
C306 vdd.n124 gnd 0.36471f $ **FLOATING
C307 vdd.n126 gnd 0.36204f $ **FLOATING
C308 vdd.n128 gnd 0.35006f $ **FLOATING
C309 vdd.t0 gnd 0.37669f $ **FLOATING
C310 vdd.n131 gnd 0.36471f $ **FLOATING
C311 vdd.n133 gnd 0.36204f $ **FLOATING
C312 vdd.n136 gnd 0.36471f $ **FLOATING
C313 vdd.t1 gnd 6.6137f $ **FLOATING
C314 vdd.n138 gnd 0.10296f $ **FLOATING
C315 vdd.n139 gnd 0.02993f $ **FLOATING
C316 vdd.n140 gnd 0.1339f $ **FLOATING
C317 vdd.n142 gnd 0.11562f $ **FLOATING
C318 vdd.n144 gnd 0.11562f $ **FLOATING
C319 vdd.n146 gnd 0.0273f $ **FLOATING
C320 vdd.n147 gnd 0.66552f $ **FLOATING
C321 vdd.n148 gnd 0.0273f $ **FLOATING
C322 vdd.n150 gnd 0.11674f $ **FLOATING
C323 vdd.n151 gnd 0.07211f $ **FLOATING
C324 vdd.n152 gnd 0.01045f $ **FLOATING
C325 vdd.n153 gnd 0.01418f $ **FLOATING
C326 vdd.n154 gnd 0.01418f $ **FLOATING
C327 vdd.n155 gnd 0.01418f $ **FLOATING
C328 vdd.n156 gnd 0.01045f $ **FLOATING
C329 vdd.n157 gnd 0.1002f $ **FLOATING
C330 vdd.n158 gnd 0.1453f $ **FLOATING
C331 vdd.n159 gnd 0.90153f $ **FLOATING
C332 vdd.n160 gnd 0.1002f $ **FLOATING
C333 vdd.n161 gnd 0.01045f $ **FLOATING
C334 vdd.n162 gnd 0.01418f $ **FLOATING
C335 vdd.n163 gnd 0.01418f $ **FLOATING
C336 vdd.n164 gnd 0.01418f $ **FLOATING
C337 vdd.n165 gnd 0.01045f $ **FLOATING
C338 vdd.n166 gnd 0.07211f $ **FLOATING
C339 vdd.n167 gnd 0.14433f $ **FLOATING
C340 vdd.n168 gnd 0.07221f $ **FLOATING
C341 vdd.n169 gnd 0.14372f $ **FLOATING
C342 vdd.n171 gnd 0.11705f $ **FLOATING
C343 vdd.n173 gnd 0.11671f $ **FLOATING
C344 vdd.n175 gnd 0.11715f $ **FLOATING
C345 vdd.n177 gnd 0.11666f $ **FLOATING
C346 vdd.n179 gnd 0.13386f $ **FLOATING
C347 vdd.n180 gnd 0.07211f $ **FLOATING
C348 vdd.n181 gnd 0.01045f $ **FLOATING
C349 vdd.n182 gnd 0.01418f $ **FLOATING
C350 vdd.n183 gnd 0.01418f $ **FLOATING
C351 vdd.n184 gnd 0.01418f $ **FLOATING
C352 vdd.n185 gnd 0.01045f $ **FLOATING
C353 vdd.n186 gnd 0.1002f $ **FLOATING
C354 vdd.n187 gnd 0.7954f $ **FLOATING
C355 vdd.n188 gnd 0.9191f $ **FLOATING
C356 vdd.n189 gnd 0.01045f $ **FLOATING
C357 vdd.n190 gnd 0.01045f $ **FLOATING
C358 vdd.n191 gnd 0.01418f $ **FLOATING
C359 vdd.n192 gnd 0.02248f $ **FLOATING
C360 vdd.t6 gnd 0.07214f $ **FLOATING
C361 vdd.n227 gnd 0.02248f $ **FLOATING
C362 vdd.n228 gnd 0.01045f $ **FLOATING
C363 vdd.n229 gnd 0.01045f $ **FLOATING
C364 vdd.n230 gnd 0.01418f $ **FLOATING
C365 vdd.n231 gnd 0.1002f $ **FLOATING
C366 vdd.n232 gnd 0.01045f $ **FLOATING
C367 vdd.n233 gnd 0.01418f $ **FLOATING
C368 vdd.n234 gnd 0.01418f $ **FLOATING
C369 vdd.n235 gnd 0.01418f $ **FLOATING
C370 vdd.n236 gnd 0.01045f $ **FLOATING
C371 vdd.n237 gnd 0.07868f $ **FLOATING
C372 vdd.n238 gnd 0.07977f $ **FLOATING
C373 vdd.n239 gnd 0.0212f $ **FLOATING
C374 vdd.t7 gnd 0.07214f $ **FLOATING
C375 vdd.n256 gnd 0.0212f $ **FLOATING
C376 vdd.n257 gnd 0.07977f $ **FLOATING
C377 vdd.n258 gnd 0.07868f $ **FLOATING
C378 vdd.n259 gnd 0.01045f $ **FLOATING
C379 vdd.n260 gnd 0.01418f $ **FLOATING
C380 vdd.n261 gnd 0.01418f $ **FLOATING
C381 vdd.n262 gnd 0.01418f $ **FLOATING
C382 vdd.n263 gnd 0.01045f $ **FLOATING
C383 vdd.n264 gnd 0.1002f $ **FLOATING
C384 vdd.n265 gnd 0.43416f $ **FLOATING
C385 vdd.n266 gnd 0.71732f $ **FLOATING
C386 a_1245_3300.t2 gnd 0.50976f $ **FLOATING
C387 a_1245_3300.t3 gnd 0.50741f $ **FLOATING
C388 a_1245_3300.n0 gnd 0.64287f $ **FLOATING
C389 a_1245_3300.t13 gnd 0.50741f $ **FLOATING
C390 a_1245_3300.n1 gnd 0.46507f $ **FLOATING
C391 a_1245_3300.t12 gnd 0.50741f $ **FLOATING
C392 a_1245_3300.n2 gnd 0.39982f $ **FLOATING
C393 a_1245_3300.n3 gnd 1.21978f $ **FLOATING
C394 a_1245_3300.t9 gnd 0.51437f $ **FLOATING
C395 a_1245_3300.n4 gnd 0.40038f $ **FLOATING
C396 a_1245_3300.n5 gnd 0.0692f $ **FLOATING
C397 a_1245_3300.n6 gnd 0.06312f $ **FLOATING
C398 a_1245_3300.n7 gnd 0.04694f $ **FLOATING
C399 a_1245_3300.n8 gnd 0.02523f $ **FLOATING
C400 a_1245_3300.n9 gnd 0.0692f $ **FLOATING
C401 a_1245_3300.n10 gnd 0.06776f $ **FLOATING
C402 a_1245_3300.t15 gnd 0.38631f $ **FLOATING
C403 a_1245_3300.n12 gnd 0.26135f $ **FLOATING
C404 a_1245_3300.n13 gnd 0.06199f $ **FLOATING
C405 a_1245_3300.t4 gnd 0.51437f $ **FLOATING
C406 a_1245_3300.n15 gnd 0.46563f $ **FLOATING
C407 a_1245_3300.t5 gnd 0.51437f $ **FLOATING
C408 a_1245_3300.n16 gnd 0.46563f $ **FLOATING
C409 a_1245_3300.t10 gnd 0.51437f $ **FLOATING
C410 a_1245_3300.n17 gnd 0.75034f $ **FLOATING
C411 a_1245_3300.n18 gnd 0.0692f $ **FLOATING
C412 a_1245_3300.n19 gnd 0.04694f $ **FLOATING
C413 a_1245_3300.n20 gnd 0.0346f $ **FLOATING
C414 a_1245_3300.n21 gnd 0.0346f $ **FLOATING
C415 a_1245_3300.n22 gnd 0.0492f $ **FLOATING
C416 a_1245_3300.n23 gnd 0.0154f $ **FLOATING
C417 a_1245_3300.n24 gnd 0.0346f $ **FLOATING
C418 a_1245_3300.n25 gnd 0.0154f $ **FLOATING
C419 a_1245_3300.n26 gnd 0.0346f $ **FLOATING
C420 a_1245_3300.n27 gnd 0.04569f $ **FLOATING
C421 a_1245_3300.n28 gnd 0.0692f $ **FLOATING
C422 a_1245_3300.n29 gnd 0.04569f $ **FLOATING
C423 a_1245_3300.n30 gnd 0.0692f $ **FLOATING
C424 a_1245_3300.n31 gnd 0.0492f $ **FLOATING
C425 a_1245_3300.n32 gnd 0.0692f $ **FLOATING
C426 a_1245_3300.n33 gnd 0.0692f $ **FLOATING
C427 a_1245_3300.n34 gnd 0.02523f $ **FLOATING
C428 a_1245_3300.n35 gnd 0.0346f $ **FLOATING
C429 a_1245_3300.t16 gnd 0.38032f $ **FLOATING
C430 a_1245_3300.n36 gnd 0.06312f $ **FLOATING
C431 a_1245_3300.n37 gnd 0.05574f $ **FLOATING
C432 a_1245_3300.n38 gnd 0.62218f $ **FLOATING
C433 a_1245_3300.n39 gnd 0.21992f $ **FLOATING
C434 a_1245_3300.n40 gnd 0.43965f $ **FLOATING
C435 a_1245_3300.t14 gnd 0.43106f $ **FLOATING
C436 a_1245_3300.n41 gnd 0.25515f $ **FLOATING
C437 a_1245_3300.n42 gnd 0.43816f $ **FLOATING
C438 a_1245_3300.n43 gnd 0.21992f $ **FLOATING
C439 a_1245_3300.n44 gnd 0.05479f $ **FLOATING
C440 a_1245_3300.n45 gnd 0.0692f $ **FLOATING
C441 a_1245_3300.n46 gnd 0.0692f $ **FLOATING
C442 a_1245_3300.n47 gnd 0.05574f $ **FLOATING
C443 a_1245_3300.n48 gnd 0.83386f $ **FLOATING
C444 a_1245_3300.t8 gnd 0.51435f $ **FLOATING
C445 a_1245_3300.n49 gnd 0.94759f $ **FLOATING
C446 a_1245_3300.t11 gnd 0.51435f $ **FLOATING
C447 a_1245_3300.n50 gnd 0.46565f $ **FLOATING
C448 a_1245_3300.t7 gnd 0.51435f $ **FLOATING
C449 a_1245_3300.n51 gnd 0.46565f $ **FLOATING
C450 a_1245_3300.t6 gnd 0.51435f $ **FLOATING
C451 a_1245_3300.n52 gnd 0.19595f $ **FLOATING
C452 a_1245_3300.n53 gnd 0.86218f $ **FLOATING
C453 a_1245_3300.n54 gnd 1.07098f $ **FLOATING
C454 a_1245_3300.n55 gnd 1.01962f $ **FLOATING
C455 a_1245_3300.t18 gnd 0.50741f $ **FLOATING
C456 a_1245_3300.n56 gnd 0.1945f $ **FLOATING
C457 a_1245_3300.t17 gnd 0.50743f $ **FLOATING
C458 a_1245_3300.n57 gnd 0.46461f $ **FLOATING
C459 a_1245_3300.t0 gnd 0.51514f $ **FLOATING
C460 a_1245_3300.n58 gnd 1.04853f $ **FLOATING
C461 a_1245_3300.t1 gnd 0.50743f $ **FLOATING
C462 a_944_1911.t1 gnd 0.28673f $ **FLOATING
C463 a_944_1911.t0 gnd 0.28673f $ **FLOATING
C464 a_944_1911.n0 gnd 0.02115f $ **FLOATING
C465 a_944_1911.t2 gnd 0.48062f $ **FLOATING
C466 a_944_1911.t4 gnd 0.44355f $ **FLOATING
C467 a_944_1911.n1 gnd 1.33605f $ **FLOATING
C468 a_944_1911.t7 gnd 0.38171f $ **FLOATING
C469 a_944_1911.n2 gnd 1.87819f $ **FLOATING
C470 a_944_1911.t3 gnd 0.46376f $ **FLOATING
C471 a_944_1911.t5 gnd 0.44357f $ **FLOATING
C472 a_944_1911.n3 gnd 1.26166f $ **FLOATING
C473 a_944_1911.n4 gnd 0.5488f $ **FLOATING
C474 a_944_1911.t6 gnd 0.60881f $ **FLOATING
C475 a_944_1911.n5 gnd 0.70893f $ **FLOATING
C476 a_944_1911.n6 gnd 0.28998f $ **FLOATING
C477 a_944_1911.n7 gnd 0.02771f $ **FLOATING
C478 a_944_1911.n8 gnd 0.02771f $ **FLOATING
C479 a_944_1911.n10 gnd 0.02115f $ **FLOATING
C480 a_944_1911.n11 gnd 0.02314f $ **FLOATING
C481 a_944_1911.n12 gnd 0.02771f $ **FLOATING
C482 a_944_1911.n13 gnd 0.02771f $ **FLOATING
C483 a_944_1911.n14 gnd 0.02771f $ **FLOATING
C484 a_944_1911.n15 gnd 0.02771f $ **FLOATING
C485 a_944_1911.n17 gnd 0.01916f $ **FLOATING
C486 a_944_1911.n18 gnd 0.02389f $ **FLOATING
C487 a_944_1911.n19 gnd 0.01128f $ **FLOATING
C488 a_944_1911.n20 gnd 0.0186f $ **FLOATING
C489 a_944_1911.n21 gnd 0.07574f $ **FLOATING
C490 a_944_1911.n22 gnd 0.02395f $ **FLOATING
C491 a_944_1911.n23 gnd 0.02771f $ **FLOATING
C492 a_944_1911.n24 gnd 0.01841f $ **FLOATING
C493 a_944_1911.n25 gnd 0.02389f $ **FLOATING
C494 a_944_1911.n26 gnd 0.01841f $ **FLOATING
C495 a_944_1911.n27 gnd 0.02389f $ **FLOATING
C496 a_944_1911.n28 gnd 0.01841f $ **FLOATING
C497 a_944_1911.n29 gnd 0.02771f $ **FLOATING
C498 a_944_1911.n30 gnd 0.02771f $ **FLOATING
C499 a_944_1911.n31 gnd 0.01841f $ **FLOATING
C500 a_944_1911.n32 gnd 0.02389f $ **FLOATING
C501 a_944_1911.n33 gnd 0.01841f $ **FLOATING
C502 a_944_1911.n34 gnd 0.02389f $ **FLOATING
C503 a_944_1911.n35 gnd 0.01841f $ **FLOATING
C504 a_944_1911.n36 gnd 0.02771f $ **FLOATING
C505 a_944_1911.n37 gnd 0.02223f $ **FLOATING
C506 a_944_1911.n38 gnd 0.03735f $ **FLOATING
C507 V+.t1 gnd 0.3677f $ **FLOATING
C508 V+.t3 gnd 0.53029f $ **FLOATING
C509 V+.t0 gnd 0.51375f $ **FLOATING
C510 V+.n0 gnd 0.24725f $ **FLOATING
C511 V+.n1 gnd 0.24712f $ **FLOATING
C512 V+.t2 gnd 0.34769f $ **FLOATING
C513 V+.n2 gnd 1.19179f $ **FLOATING
.ends
"
}
