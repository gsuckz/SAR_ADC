v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -940 -300 -930 {
lab=V}
N -380 -940 -380 -930 {
lab=clk}
N 1220 -520 1220 -470 {
lab=GND}
N 1280 -420 1780 -420 {
lab=sareset}
N 1510 -520 1510 -470 {
lab=GND}
N 1200 -550 1220 -550 {
lab=GND}
N 1200 -550 1200 -470 {
lab=GND}
N 1510 -550 1530 -550 {
lab=GND}
N 1530 -550 1530 -470 {
lab=GND}
N 1510 -590 1510 -580 {
lab=vo10}
N 1510 -760 1510 -700 {
lab=vo1}
N 1450 -820 1520 -820 {
lab=V}
N 1220 -590 1220 -580 {
lab=vo20}
N 1220 -760 1220 -710 {
lab=vo2}
N 1210 -790 1220 -790 {
lab=V}
N 1210 -820 1210 -790 {
lab=V}
N 1510 -790 1520 -790 {
lab=V}
N 1520 -820 1520 -790 {
lab=V}
N 1260 -790 1290 -790 {
lab=vo1}
N 1260 -550 1290 -550 {
lab=vo1}
N 1290 -630 1290 -550 {
lab=vo1}
N 1220 -680 1270 -680 {
lab=GND}
N 1430 -590 1430 -550 {
lab=vo2}
N 1430 -550 1470 -550 {
lab=vo2}
N 1450 -670 1510 -670 {
lab=GND}
N 1430 -790 1470 -790 {
lab=vo2}
N 1200 -470 1220 -470 {
lab=GND}
N 1350 -470 1510 -470 {
lab=GND}
N 1510 -470 1530 -470 {
lab=GND}
N 1210 -820 1270 -820 {
lab=V}
N 1370 -820 1450 -820 {
lab=V}
N 1290 -790 1290 -630 {
lab=vo1}
N 1510 -640 1510 -630 {
lab=vo10}
N 1220 -650 1220 -590 {
lab=vo20}
N 1430 -790 1430 -590 {
lab=vo2}
N 1510 -630 1510 -590 {
lab=vo10}
N 1270 -820 1370 -820 {
lab=V}
N 1220 -470 1350 -470 {
lab=GND}
N 990 -330 1040 -330 {
lab=clk}
N 1520 -420 1520 -330 {lab=sareset}
N -450 -930 -450 -920 {
lab=Vin2}
N -530 -930 -530 -920 {
lab=Vin1}
N 140 -410 140 -400 {lab=#net1}
N 1520 -820 1760 -820 {lab=V}
N 1040 -820 1210 -820 {lab=V}
N 1040 -790 1070 -790 {lab=V}
N 1070 -820 1070 -790 {lab=V}
N 1720 -790 1760 -790 {lab=V}
N 1720 -820 1720 -790 {lab=V}
N 1200 -330 1520 -330 {lab=sareset}
N 1040 -760 1040 -730 {lab=vo2}
N 1040 -730 1220 -730 {lab=vo2}
N 1510 -740 1760 -740 {lab=vo1}
N 1760 -760 1760 -740 {lab=vo1}
N 1780 -420 1810 -420 {lab=sareset}
N 1810 -790 1810 -420 {lab=sareset}
N 1800 -790 1810 -790 {lab=sareset}
N 1000 -790 1000 -470 {lab=sareset}
N 1000 -470 1000 -420 {lab=sareset}
N 1000 -420 1280 -420 {lab=sareset}
N -290 -470 -30 -470 {lab=#net2}
N -160 -490 -160 -470 {lab=#net2}
N -160 -520 -130 -520 {lab=V}
N -130 -550 -130 -520 {lab=V}
N -160 -550 -130 -550 {lab=V}
N -270 -350 -270 -320 {lab=GND}
N -290 -320 -30 -320 {lab=GND}
N -60 -350 -60 -320 {lab=GND}
N -330 -350 -330 -280 {lab=clk}
N -330 -280 10 -280 {lab=clk}
N 10 -350 10 -280 {lab=clk}
N 140 -410 140 -400 {lab=#net1}
N -440 -410 -440 -400 {lab=#net3}
N -440 -410 -380 -410 {lab=#net3}
N -320 -410 -290 -410 {lab=#net4}
N -30 -410 50 -410 {lab=#net5}
N 110 -410 140 -410 {lab=#net1}
N -290 -440 -270 -440 {lab=V}
N -270 -440 -30 -440 {lab=V}
N 1220 -740 1430 -740 {lab=vo2}
N 1290 -710 1510 -710 {lab=vo1}
N -130 -520 -130 -440 {lab=V}
N -30 -410 -30 -380 {lab=#net5}
N -290 -410 -290 -380 {lab=#net4}
N -60 -350 -30 -350 {lab=GND}
N -290 -350 -270 -350 {lab=GND}
N 940 -670 1000 -670 {lab=sareset}
N 950 -530 1000 -530 {lab=sareset}
C {devices/vsource.sym} -380 -900 0 0 {name=V3 value="PULSE(0 3.3 0 \{0.05*period\} \{0.05*period\} \{0.5*period\} \{1*period\})"}
C {devices/gnd.sym} -380 -870 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -380 -940 0 0 {name=p3 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} -300 -900 0 0 {name=V4 value=3.3}
C {devices/gnd.sym} -300 -870 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -300 -940 0 0 {name=p7 sig_type=std_logic lab=V
}
C {devices/code_shown.sym} 1130 -1190 0 0 {name=SPICE1 only_toplevel=false value="

.param period=50n
.param stoptime=\{100*period\}
.tran \{0.01*stoptime\} \{stoptime\} uic 
.control
save all
run
plot \{(vin1-vin2)/abs(vin1-vin2)\} \{(vo1-vo2)\} clk
plot \{(vin1-vin2)/abs(vin1-vin2)\} \{(vpreamp1-vpreamp2)\} clk
*plot \{vo11-vo1\} \{vo22-vo2\} clk
plot vo10 vo20
*plot vpreamp1 vo1 sareset
*plot vo11 vo1 clk
plot vo1 vo2 clk
*plot \{(vin1-vin2)*10\} \{(vpreamp1-vpreamp2)\} \{clk /330\} \{vin2/(100)\}
plot \{(vin1-vin2)*1000\} vpreamp1 vpreamp2 \{clk /330\} \{vin2\}
plot \{vpreamp1-vpreamp2\}
*plot clk sareset
plot i(vip1) i(vip2) i(visa1) i(vsa2) clk/3300
.endc"}
C {devices/code.sym} -630 -1160 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/design.ngspice
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice typical
"
spice_ignore=false}
C {symbols/pfet_03v3.sym} 1240 -790 0 1 {name=M1
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1020 -790 0 0 {name=M2
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1490 -550 0 0 {name=M3
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1780 -790 0 1 {name=M4
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1240 -550 0 1 {name=M5
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1490 -790 0 0 {name=M6
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1200 -680 0 0 {name=M7
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1530 -670 0 1 {name=M8
L=0.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {inv.sym} 1100 -330 0 0 {name=x3 cl=0.28u wp=0.44u wn=0.22u wx=.22u}
C {symbols/nfet_03v3.sym} -310 -350 0 0 {name=M27
L=.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} -160 -550 0 0 {name=p21 lab=V
W=3u}
C {symbols/pfet_03v3.sym} -180 -520 2 1 {name=M9
L=.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -10 -440 0 1 {name=M11
L=.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -310 -440 0 0 {name=M12
L=.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/capa.sym} -440 -370 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 140 -370 0 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1370 -820 0 0 {name=p4 lab=V
W=3u}
C {devices/gnd.sym} 1100 -290 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -290 -320 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -330 -440 0 0 {name=p5 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 10 -440 0 1 {name=p6 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} -330 -280 0 0 {name=p8 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 990 -330 0 0 {name=p9 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} -440 -470 0 0 {name=p10 sig_type=std_logic lab=vpreamp1}
C {devices/lab_wire.sym} 1180 -680 0 0 {name=p12 sig_type=std_logic lab=vpreamp1}
C {devices/lab_wire.sym} 1550 -670 0 1 {name=p14 sig_type=std_logic lab=vpreamp2
}
C {devices/lab_wire.sym} 1100 -370 0 0 {name=p16 lab=V
W=3u}
C {devices/lab_wire.sym} 1700 -740 0 0 {name=p15 sig_type=std_logic lab=vo1
}
C {devices/lab_wire.sym} 1040 -730 0 1 {name=p17 sig_type=std_logic lab=vo2}
C {devices/lab_wire.sym} 1810 -440 0 0 {name=p18 sig_type=std_logic lab=sareset}
C {devices/vsource.sym} -530 -890 0 0 {name=V1 value="PULSE(-1m 1m 0 \{0.4*period\} \{0.4*period\} \{4*period\} \{8*period\})"}
C {devices/vsource.sym} -450 -890 0 0 {name=V2 value=3}
C {devices/gnd.sym} -450 -860 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -530 -930 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} -450 -930 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} -530 -860 0 0 {name=p13 sig_type=std_logic lab=Vin2}
C {devices/vsource.sym} -350 -410 1 0 {name=vip1 value=0}
C {devices/vsource.sym} -440 -440 0 0 {name=visa1 value=0}
C {devices/vsource.sym} 80 -410 3 0 {name=vip2 value=0}
C {devices/vsource.sym} 140 -440 0 0 {name=vsa2 value=0}
C {devices/lab_wire.sym} 140 -470 0 1 {name=p23 sig_type=std_logic lab=vpreamp2
}
C {devices/gnd.sym} 1360 -470 0 0 {name=l6 lab=GND}
C {symbols/nfet_03v3.sym} -10 -350 0 1 {name=M10
L=.28u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/gnd.sym} -440 -340 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 140 -340 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -200 -520 0 0 {name=p11 sig_type=std_logic lab=clk
}
C {devices/gnd.sym} 1450 -670 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1270 -680 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 1220 -610 0 1 {name=p19 sig_type=std_logic lab=vo20}
C {devices/lab_wire.sym} 1510 -610 0 1 {name=p20 sig_type=std_logic lab=vo10}
