v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 160 280 180 {
lab=#net1}
N 130 160 130 190 {
lab=#net1}
N 410 160 410 180 {
lab=#net1}
N 540 160 540 180 {
lab=#net1}
N 670 160 670 180 {
lab=#net1}
N 800 160 800 180 {
lab=#net1}
N 930 160 930 180 {
lab=#net1}
N 1110 160 1110 180 {
lab=out}
N 1240 160 1240 180 {
lab=out}
N 1370 160 1370 180 {
lab=out}
N 1500 160 1500 180 {
lab=out}
N 1630 160 1630 180 {
lab=out}
N 1760 160 1760 180 {
lab=out}
N 930 110 930 160 {
lab=#net1}
N 930 110 990 110 {
lab=#net1}
N 1050 110 1110 110 {
lab=out}
N 1110 110 1110 160 {
lab=out}
N 110 160 130 160 {
lab=#net1}
N 110 160 930 160 {
lab=#net1}
N 1240 160 1760 160 {
lab=out}
N 1110 160 1250 160 {
lab=out}
N 20 170 110 160 {lab=#net1}
N 1760 160 1780 160 {lab=out}
N 1420 110 1420 160 {lab=out}
N 1740 80 2110 80 {lab=out}
N 1740 80 1740 160 {lab=out}
C {devices/vsource.sym} 2110 170 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 2110 200 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1780 220 0 0 {name=p4 sig_type=std_logic lab=d11}
C {devices/lab_pin.sym} 1650 220 0 0 {name=p5 sig_type=std_logic lab=d10}
C {devices/lab_pin.sym} 1520 220 0 0 {name=p6 sig_type=std_logic lab=d9}
C {devices/lab_pin.sym} 1390 220 0 0 {name=p7 sig_type=std_logic lab=d8}
C {devices/lab_pin.sym} 1260 220 0 0 {name=p8 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 1110 230 0 0 {name=p9 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 800 240 0 0 {name=p10 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 670 240 0 0 {name=p11 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 540 240 0 0 {name=p12 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} 410 240 0 0 {name=p13 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 280 240 0 0 {name=p14 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 130 250 0 0 {name=p15 sig_type=std_logic lab=d0}
C {devices/code_shown.sym} -1265 165 0 0 {name=NGSPICE
only_toplevel=false
value="
.param period=0n
.param cu = 560
.param stoptime=\{4097*period\}
.param nbits=12
.param vref=3.3
.param lsb=\{vref/(2**nbits)\}
* Fuente de rampa (0V a 1.8V en 1ms)
Vramp in 0 PWL(0 0 \{stoptime\} \{vref\})
* ADC Ideal: salida DIGITAL (número entero)
*B_adc digital_code 0 v = \{round(V(in)/lsb)\}
B_adc digital_code 0 v = \{floor(V(in)/lsb + 0.5)\}
B_stepped quant 0 v = \{ floor(V(in)/lsb + 0.5) * lsb \}
* Señales de control d0 (LSB) a d11 (MSB) - ya en voltaje (0V o vref)
B_d0 d0 0 v = \{vref*(V(digital_code) - 2*floor(V(digital_code)/2))\}
B_d1 d1 0 v = \{vref*(floor(V(digital_code)/2) - 2*floor(V(digital_code)/4))\}
B_d2 d2 0 v = \{vref*(floor(V(digital_code)/4) - 2*floor(V(digital_code)/8))\}
B_d3 d3 0 v = \{vref*(floor(V(digital_code)/8) - 2*floor(V(digital_code)/16))\}
B_d4 d4 0 v = \{vref*(floor(V(digital_code)/16) - 2*floor(V(digital_code)/32))\}
B_d5 d5 0 v = \{vref*(floor(V(digital_code)/32) - 2*floor(V(digital_code)/64))\}
B_d6 d6 0 v = \{vref*(floor(V(digital_code)/64) - 2*floor(V(digital_code)/128))\}
B_d7 d7 0 v = \{vref*(floor(V(digital_code)/128) - 2*floor(V(digital_code)/256))\}
B_d8 d8 0 v = \{vref*(floor(V(digital_code)/256) - 2*floor(V(digital_code)/512))\}
B_d9 d9 0 v = \{vref*(floor(V(digital_code)/512) - 2*floor(V(digital_code)/1024))\}
B_d10 d10 0 v = \{vref*(floor(V(digital_code)/1024) - 2*floor(V(digital_code)/2048))\}
B_d11 d11 0 v = \{vref*(floor(V(digital_code)/2048))\}
vsmp sample 0 PULSE(0 3.3 0 10p 10p \{period/2\} \{period\} 1)
.tran \{0.01*period\} \{stoptime\} uic
.measure tran valor FIND v(out) AT=138n
.control
run
meas tran valor2 FIND v(out) AT=138n
let n = 1
let periodo = 200n
let s_time = 80n
*let valor_viejo = 0
while n le 4096
    let s_time = periodo + s_time
    meas tran valor\{$&n\} FIND v(out) AT=s_time
print s_time
    let n = n + 1
end
plot v(out) v(quant)
plot \{out - quant\}
*plot in 
*plot digital_code
plot \{d0\} \{d1+10\} \{d2+20\} \{d3+30\} \{d4+40\} \{d5+50\} \{d6+60\} \{d7+70\} \{d8+80\} \{d9+90\} \{d10+100\} \{d11+110\}
.endc
"}
C {devices/code_shown.sym} -1055 -100 0 0 {name=Libraries/Includes
format="tcleval(  @value  )"
only_toplevel=false
value="
.include $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical


"
spice_ignore=false}
C {devices/gnd.sym} 2070 130 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 2070 110 0 0 {name=p18 sig_type=std_logic lab=sample}
C {devices/switch_ngspice.sym} 2110 110 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW( VT=0.9 VH=0.01 RON=0.01 ROFF=10G )"}
C {symbols/cap_mim_2f0fF.sym} 1020 110 1 0 {name=CA
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
m=\{64/63\}}
C {symbols/cap_mim_2f0fF.sym} 130 220 0 0 {name=C1
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 280 210 0 0 {name=C2
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=2
}
C {symbols/cap_mim_2f0fF.sym} 410 210 0 0 {name=C3
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=4}
C {symbols/cap_mim_2f0fF.sym} 540 210 0 0 {name=C4
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=8}
C {symbols/cap_mim_2f0fF.sym} 670 210 0 0 {name=C5
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=16}
C {symbols/cap_mim_2f0fF.sym} 800 210 0 0 {name=C6
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=32}
C {symbols/cap_mim_2f0fF.sym} 20 200 0 0 {name=C13
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {devices/gnd.sym} 20 230 0 0 {name=l3 lab=GND}
C {symbols/cap_mim_2f0fF.sym} 1110 200 0 0 {name=C7
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 1260 190 0 0 {name=C8
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=2}
C {symbols/cap_mim_2f0fF.sym} 1390 190 0 0 {name=C9
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=4}
C {symbols/cap_mim_2f0fF.sym} 1520 190 0 0 {name=C10
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=8}
C {symbols/cap_mim_2f0fF.sym} 1650 190 0 0 {name=C11
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=16}
C {symbols/cap_mim_2f0fF.sym} 1780 190 0 0 {name=C12
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=32}
C {devices/lab_pin.sym} 1420 110 0 0 {name=p17 sig_type=std_logic lab=out}
