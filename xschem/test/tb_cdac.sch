v {xschem version=3.4.6RC file_version=1.2
}
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
C {devices/vsource.sym} -170 240 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/vsource.sym} -110 240 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/gnd.sym} -140 270 0 0 {name=l2 lab=GND}
C {bootstrap_sw.sym} 110 -180 0 0 {name=x2}
C {devices/lab_pin.sym} -170 210 0 0 {name=p2 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 50 -140 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {devices/gnd.sym} 110 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -250 110 2 1 {name=p4 sig_type=std_logic lab=d11}
C {devices/lab_pin.sym} -250 90 2 1 {name=p5 sig_type=std_logic lab=d10}
C {devices/lab_pin.sym} -250 70 2 1 {name=p6 sig_type=std_logic lab=d9}
C {devices/lab_pin.sym} -250 50 2 1 {name=p7 sig_type=std_logic lab=d8}
C {devices/lab_pin.sym} -250 30 2 1 {name=p8 sig_type=std_logic lab=d7}
C {devices/lab_pin.sym} -250 10 2 1 {name=p9 sig_type=std_logic lab=d6}
C {devices/lab_pin.sym} -250 -10 2 1 {name=p10 sig_type=std_logic lab=d5}
C {devices/lab_pin.sym} -250 -30 2 1 {name=p11 sig_type=std_logic lab=d4}
C {devices/lab_pin.sym} -250 -50 2 1 {name=p12 sig_type=std_logic lab=d3}
C {devices/lab_pin.sym} -250 -70 2 1 {name=p13 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} -250 -90 2 1 {name=p14 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} -250 -110 2 1 {name=p15 sig_type=std_logic lab=d0}
C {devices/code_shown.sym} -1225 -95 0 0 {name=NGSPICE
only_toplevel=false
value="
.param period=100n
.param stoptime=\{2050*period\}
vsmp sample 0 PULSE(0 3.3 0 10p 10p \{period/2\} \{period\} 1)
vd0 d0 0 PULSE( 3.3 0 \{1.2*period\}   10p 10p \{period/2\}      \{period\} )
vd1 d1 0 PULSE( 3.3 0 \{2.2*period\}   10p 10p \{2*period/2\}    \{2*period\} )
vd2 d2 0 PULSE( 3.3 0 \{3.2*period\}   10p 10p \{4*period/2\}    \{4*period\} )
vd3 d3 0 PULSE( 3.3 0 \{4.2*period\}   10p 10p \{8*period/2\}    \{8*period\} )
vd4 d4 0 PULSE( 3.3 0 \{5.2*period\}   10p 10p \{16*period/2\}   \{16*period\})
vd5 d5 0 PULSE( 3.3 0 \{6.2*period\}   10p 10p \{32*period/2\}   \{32*period\} )
vd6 d6 0 PULSE( 3.3 0 \{7.2*period\}   10p 10p \{64*period/2\}   \{64*period\})
vd7 d7 0 PULSE( 3.3 0 \{8.2*period\}   10p 10p \{128*period/2\}  \{128*period\})
vd8 d8 0 PULSE( 3.3 0 \{9.2*period\}   10p 10p \{256*period/2\}  \{256*period\})
vd9 d9 0 PULSE( 3.3 0 \{10.2*period\}  10p 10p \{512*period/2\}  \{512*period\})
vd10 d10 0 PULSE(3.3 0 \{11.2*period\} 10p 10p \{1024*period/2\} \{1024*period\} )
vd11 d11 0 PULSE(3.3 0 \{12.2*period\} 10p 10p \{2048*period/2\} \{2048*period\} )
.tran \{0.1*period\} \{stoptime\} uic
.control

save all
run
*plot sample sampled 
plot \{vcm-ip\} 
plot \{(ip-out)\} 
plot sample d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 out 1.65 \{sample/10\} 
plot sample out
.endc
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
