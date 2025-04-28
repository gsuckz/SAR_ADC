v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 160 280 180 {
lab=out2}
N 130 160 130 190 {
lab=out2}
N 410 160 410 180 {
lab=out2}
N 540 160 540 180 {
lab=out2}
N 670 160 670 180 {
lab=out2}
N 800 160 800 180 {
lab=out2}
N 930 160 930 180 {
lab=out2}
N 1110 160 1110 180 {
lab=GND}
N 930 110 930 160 {
lab=out2}
N 930 110 990 110 {
lab=out2}
N 110 160 130 160 {
lab=out2}
N 110 160 930 160 {
lab=out2}
N 1240 160 1760 160 {
lab=GND}
N 1110 160 1250 160 {
lab=GND}
N 20 170 110 160 {lab=out2}
N 1760 160 1780 160 {lab=GND}
N 650 50 670 170 {lab=out2}
N 1010 160 1110 160 {lab=GND}
N 1390 220 1390 230 {lab=v4}
N 1260 220 1260 230 {lab=v3}
N 1260 280 1780 280 {lab=GND}
N 1010 280 1010 300 {lab=GND}
N 1010 300 1110 300 {lab=GND}
N 1110 290 1110 300 {lab=GND}
N 1110 290 1300 290 {lab=GND}
N 1300 280 1300 290 {lab=GND}
N 940 160 1020 160 {lab=GND}
N 940 280 1010 280 {lab=GND}
C {devices/lab_pin.sym} 1710 -50 0 0 {name=p4 sig_type=std_logic lab=d11}
C {devices/lab_pin.sym} 1560 -40 0 0 {name=p5 sig_type=std_logic lab=d10}
C {devices/lab_pin.sym} 1630 -110 0 0 {name=p6 sig_type=std_logic lab=d9}
C {devices/lab_pin.sym} 1500 -110 0 0 {name=p7 sig_type=std_logic lab=d8}
C {devices/lab_pin.sym} 1370 -110 0 0 {name=p8 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} 1220 -100 0 0 {name=p9 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} 800 240 0 0 {name=p10 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} 670 240 0 0 {name=p11 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} 540 240 0 0 {name=p12 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} 410 240 0 0 {name=p13 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 280 240 0 0 {name=p14 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 130 250 0 0 {name=p15 sig_type=std_logic lab=d0}
C {devices/code_shown.sym} -1075 45 0 0 {name=NGSPICE
only_toplevel=false
value="
.param period=200n
.param cu = 10
*.param stoptime=\{4097*period\}
.param stoptime = 1u
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
plot v0 v1 v2 v3 v4 v5 v6 v7 
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
C {symbols/cap_mim_2f0fF.sym} 390 -100 1 0 {name=CA
W=\{sqrt((32*cu)/(2*31))*1u\}
L=\{sqrt((32*cu)/(2*31))*1u\}
model=cap_mim_2f0fF
m=1}
C {symbols/cap_mim_2f0fF.sym} 130 220 0 0 {name=C1
W=\{sqrt(cu/2)*1u\}
L=\{sqrt(cu/2)*1u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 280 210 0 0 {name=C2
W=\{sqrt(2*cu/2)*1u\}
L=\{sqrt(2*cu/2)*1u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 410 210 0 0 {name=C3
W=\{sqrt(4*cu/2)*1u\}
L=\{sqrt(4*cu/2)*1u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 540 210 0 0 {name=C4
W=\{sqrt(8*cu/2)*1u\}
L=\{sqrt(8*cu/2)*1u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 670 210 0 0 {name=C5
W=\{sqrt(16*cu/2)*1u\}
L=\{sqrt(16*cu/2)*1u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 800 210 0 0 {name=C6
W=\{sqrt(32*cu/2)*1u\}
L=\{sqrt(32*cu/2)*1u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 20 200 0 0 {name=C13
W=\{sqrt(cu/2)*1u\}
L=\{sqrt(cu/2)*1u\}
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
C {devices/lab_pin.sym} 930 120 0 0 {name=p1 sig_type=std_logic lab=out2}
C {devices/gnd.sym} 360 -100 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 420 -100 0 0 {name=l4 lab=GND}
C {symbols/cap_mim_2f0fF.sym} 1010 190 0 0 {name=C14
W=\{4u\}
L=\{4u\}
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {devices/gnd.sym} 1330 160 0 0 {name=l6 lab=GND}
C {devices/isource.sym} 1010 250 2 0 {name=I0 value=10n}
C {devices/lab_pin.sym} 1010 220 0 0 {name=p2 sig_type=std_logic lab=v1}
C {devices/isource.sym} 1110 260 2 0 {name=I1 value=10n}
C {devices/isource.sym} 1260 250 2 0 {name=I2 value=10n}
C {devices/isource.sym} 1390 250 2 0 {name=I3 value=10n}
C {devices/isource.sym} 1520 250 2 0 {name=I4 value=10n}
C {devices/isource.sym} 1650 250 2 0 {name=I5 value=10n}
C {devices/isource.sym} 1780 250 2 0 {name=I6 value=10n}
C {devices/lab_pin.sym} 1110 230 0 0 {name=p3 sig_type=std_logic lab=v2}
C {devices/lab_pin.sym} 1010 220 0 0 {name=p16 sig_type=std_logic lab=v1}
C {devices/lab_pin.sym} 1260 220 0 0 {name=p17 sig_type=std_logic lab=v3}
C {devices/lab_pin.sym} 1390 220 0 0 {name=p18 sig_type=std_logic lab=v4}
C {devices/lab_pin.sym} 1520 220 0 0 {name=p19 sig_type=std_logic lab=v5}
C {devices/lab_pin.sym} 1650 220 0 0 {name=p20 sig_type=std_logic lab=v6}
C {devices/lab_pin.sym} 1780 220 0 0 {name=p21 sig_type=std_logic lab=v7}
C {devices/gnd.sym} 1170 290 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 940 250 2 0 {name=I7 value=10n}
C {devices/lab_pin.sym} 940 220 0 0 {name=p22 sig_type=std_logic lab=v0}
C {devices/capa.sym} 940 190 0 0 {name=C15
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
