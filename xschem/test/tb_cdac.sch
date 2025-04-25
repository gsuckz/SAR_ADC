v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 140 -110 210 {
lab=vdd}
N -170 270 -110 270 {
lab=GND}
N 130 -80 230 -80 {
lab=#net1}
N -110 140 60 140 {
lab=vdd}
N 60 -80 60 140 {
lab=vdd}
N 60 -80 90 -80 {
lab=vdd}
N 230 -80 310 -80 {
lab=#net1}
N 350 -180 350 180 {
lab=vdd}
N -110 180 350 180 {
lab=vdd}
N 170 -240 170 -160 {
lab=sample}
N 20 -90 170 -140 {
lab=out}
N 10 0 20 -90 {
lab=out}
N 170 -240 310 -240 {lab=sample}
C {cdac.sym} -130 0 0 0 {name=x1 cu=56}
C {devices/gnd.sym} -150 140 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -170 240 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -110 240 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/gnd.sym} -140 270 0 0 {name=l2 lab=GND}
C {bootstrap_sw.sym} 110 -180 0 0 {name=x2}
C {devices/lab_pin.sym} -170 210 0 0 {name=p2 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 50 -140 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {devices/gnd.sym} 110 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -310 -110 0 0 {name=p4 sig_type=std_logic lab=d11}
C {devices/lab_pin.sym} -310 -90 0 0 {name=p5 sig_type=std_logic lab=d10}
C {devices/lab_pin.sym} -310 -70 0 0 {name=p6 sig_type=std_logic lab=d9}
C {devices/lab_pin.sym} -310 -50 0 0 {name=p7 sig_type=std_logic lab=d8}
C {devices/lab_pin.sym} -310 -30 0 0 {name=p8 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} -310 -10 0 0 {name=p9 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} -310 10 0 0 {name=p10 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} -310 30 0 0 {name=p11 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} -310 50 0 0 {name=p12 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} -310 70 0 0 {name=p13 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} -310 90 0 0 {name=p14 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} -310 110 0 0 {name=p15 sig_type=std_logic lab=d0}
C {devices/code_shown.sym} -1225 -95 0 0 {name=NGSPICE
only_toplevel=false
value="
Contador Binario de 12 Bits con Flip-Flops D
.subckt counter_12bits clk q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11
* Conexiones del flip-flop D (por cada bit)
XFF0 clk q0 0 0 dff
XFF1 q0 q1 0 0 dff
XFF2 q1 q2 0 0 dff
XFF3 q2 q3 0 0 dff
XFF4 q3 q4 0 0 dff
XFF5 q4 q5 0 0 dff
XFF6 q5 q6 0 0 dff
XFF7 q6 q7 0 0 dff
XFF8 q7 q8 0 0 dff
XFF9 q8 q9 0 0 dff
XFF10 q9 q10 0 0 dff
XFF11 q10 q11 0 0 dff
.ends

.subckt dff clk q d clr
M1 n1 clk d vdd pmos
M2 q n1 clr vdd pmos
M3 q n1 vss nmos
M4 n1 clr vss nmos
.ends
.param period=1000n
.param stoptime=\{2048*period\}
vsmp sample 0 PULSE(0 3.3 0 10p 10p \{period/2\} \{period\} 1)
 vpulse clk 0 PULSE(0 3.3 0 1n 1n \{period/2\} \{period\})
*vd0 d0 0 PULSE( 3.3 0 0   10n 10n \{period/2\}      \{period\} )
*vd1 d1 0 PULSE( 3.3 0 0   10n 10n \{2*period/2\}    \{2*period\} )
*vd2 d2 0 PULSE( 3.3 0 0   10n 10n \{4*period/2\}    \{4*period\} )
*vd3 d3 0 PULSE( 3.3 0 0   10n 10n \{8*period/2\}    \{8*period\} )
*vd4 d4 0 PULSE( 3.3 0 0   10n 10n \{16*period/2\}   \{16*period\})
*vd5 d5 0 PULSE( 3.3 0 0   10n 10n \{32*period/2\}   \{32*period\} )
*vd6 d6 0 PULSE( 3.3 0 0   10n 10n \{64*period/2\}   \{64*period\})
*vd7 d7 0 PULSE( 3.3 0 0   10n 10n \{128*period/2\}  \{128*period\})
*vd8 d8 0 PULSE( 3.3 0 0   10n 10n \{256*period/2\}  \{256*period\})
*vd9 d9 0 PULSE( 3.3 0 0   10n 10n \{512*period/2\}  \{512*period\})
*vd10 d10 0 PULSE(3.3 0 0  10n 10n \{1024*period/2\} \{1024*period\} )
*vd11 d11 0 PULSE(3.3 0 0  10n 10n \{2048*period/2\} \{2048*period\} )
Xcounter clk d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11

.tran \{0.01*period\} \{stoptime\} uic
.control

save all
run
*plot sample sampled 
*plot \{vcm-ip\} 
*plot \{(ip-out)\} 
*plot sample d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 out 1.65 \{sample/10\} 
  plot \{(d0+2*d1+4*d2+8*d3+16*d4+32*d5+64*d6+128*d7+256*d8+512*d9+1024*d10+2048*d11)/4096\}

plot sample out
set filetype=ascii
 write ./../../../sim/dac_out_ramp.raw
.endc

Contador Binario de 12 Bits con Flip-Flops D
.subckt counter_12bits clk q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11
* Conexiones del flip-flop D (por cada bit)
XFF0 clk q0 0 0 dff
XFF1 q0 q1 0 0 dff
XFF2 q1 q2 0 0 dff
XFF3 q2 q3 0 0 dff
XFF4 q3 q4 0 0 dff
XFF5 q4 q5 0 0 dff
XFF6 q5 q6 0 0 dff
XFF7 q6 q7 0 0 dff
XFF8 q7 q8 0 0 dff
XFF9 q8 q9 0 0 dff
XFF10 q9 q10 0 0 dff
XFF11 q10 q11 0 0 dff
.ends

.subckt dff clk q d clr
M1 n1 clk d vdd pmos
M2 q n1 clr vdd pmos
M3 q n1 vss nmos
M4 n1 clr vss nmos
.ends
"}
C {devices/code_shown.sym} -1155 -270 0 0 {name=Libraries/Includes
format="tcleval(  @value  )"
only_toplevel=false
value="
.include $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
"
spice_ignore=false}
C {devices/lab_pin.sym} 10 0 0 1 {name=p16 sig_type=std_logic lab=out}
C {inv.sym} 310 -180 1 0 {name=x3 cl=0.28u wp=0.44u wn=.22u Wx=1u mx=2}
C {devices/gnd.sym} 270 -180 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 170 -240 0 0 {name=p18 sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 350 -20 0 0 {name=p17 sig_type=std_logic lab=vdd}
C {devices/res.sym} -280 -110 1 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 -90 1 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 -70 1 0 {name=R3
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 -50 1 0 {name=R4
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 -30 1 0 {name=R5
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 -10 1 0 {name=R6
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 10 1 0 {name=R7
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 30 1 0 {name=R8
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 50 1 0 {name=R9
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 70 1 0 {name=R10
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 90 1 0 {name=R11
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -280 110 1 0 {name=R12
value=10
footprint=1206
device=resistor
m=1}
C {devices/code.sym} -310 -350 0 0 {name=s1 only_toplevel=false value=" * Contador Binario de 12 Bits con Flip-Flops D
.subckt counter_12bits clk q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11
* Conexiones del flip-flop D (por cada bit)
XFF0 clk q0 0 0 dff
XFF1 q0 q1 0 0 dff
XFF2 q1 q2 0 0 dff
XFF3 q2 q3 0 0 dff
XFF4 q3 q4 0 0 dff
XFF5 q4 q5 0 0 dff
XFF6 q5 q6 0 0 dff
XFF7 q6 q7 0 0 dff
XFF8 q7 q8 0 0 dff
XFF9 q8 q9 0 0 dff
XFF10 q9 q10 0 0 dff
XFF11 q10 q11 0 0 dff
.ends

.subckt dff clk q d clr
M1 n1 clk d vdd pmos
M2 q n1 clr vdd pmos
M3 q n1 vss nmos
M4 n1 clr vss nmos
.ends
"}
