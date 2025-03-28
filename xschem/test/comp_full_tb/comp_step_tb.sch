v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -300 -940 -300 -930 {
lab=V}
N -380 -940 -380 -930 {
lab=clk}
N -870 -670 -820 -670 {
lab=clk}
N -450 -930 -450 -920 {
lab=Vin2}
N -530 -930 -530 -920 {
lab=Vin1}
N 140 -500 140 -470 {lab=GND}
N 170 -560 170 -530 {lab=vpreamp2}
N 140 -500 170 -500 {lab=GND}
N -40 -530 -40 -520 {lab=#net1}
N -70 -560 -40 -560 {lab=GND}
N -240 -500 -240 -470 {lab=GND}
N -270 -560 -270 -530 {lab=vpreamp1}
N -270 -500 -240 -500 {lab=GND}
N -270 -590 -240 -590 {lab=v2}
N -240 -620 -240 -590 {lab=v2}
N -270 -620 -240 -620 {lab=v2}
N -270 -470 -240 -470 {lab=GND}
N 140 -470 170 -470 {lab=GND}
N 140 -590 170 -590 {lab=v2}
N 140 -620 140 -590 {lab=v2}
N 140 -620 170 -620 {lab=v2}
N -240 -470 -240 -420 {lab=GND}
N -240 -420 140 -420 {lab=GND}
N 140 -470 140 -420 {lab=GND}
N -50 -720 -30 -720 {lab=V}
N -30 -720 -30 -690 {lab=V}
N -50 -690 -30 -690 {lab=V}
N -40 -690 -40 -650 {lab=V}
N -270 -760 -270 -620 {lab=v2}
N -270 -760 160 -760 {lab=v2}
N 160 -760 160 -620 {lab=v2}
N -50 -760 -50 -750 {lab=v2}
N -490 -760 -490 -750 {
lab=clkd}
N -40 -520 10 -520 {lab=#net1}
N 10 -520 20 -520 {lab=#net1}
N 80 -540 80 -520 {lab=vpreamp2}
N 80 -540 170 -540 {lab=vpreamp2}
N -120 -590 -40 -590 {lab=#net2}
N -210 -590 -180 -590 {lab=vpreamp1}
N -210 -590 -210 -560 {lab=vpreamp1}
N -270 -560 -210 -560 {lab=vpreamp1}
N -410 -500 -410 -470 {lab=GND}
N -440 -500 -410 -500 {lab=GND}
N -440 -470 -410 -470 {lab=GND}
N 340 -500 340 -470 {lab=GND}
N 340 -500 370 -500 {lab=GND}
N 340 -470 370 -470 {lab=GND}
N -40 -420 340 -420 {lab=GND}
N 340 -470 340 -420 {lab=GND}
N 170 -530 370 -530 {lab=vpreamp2}
N -440 -530 -270 -530 {lab=vpreamp1}
N -410 -470 -410 -420 {lab=GND}
N -410 -420 -240 -420 {lab=GND}
N 690 -500 690 -470 {lab=GND}
N 690 -500 720 -500 {lab=GND}
N 690 -470 720 -470 {lab=GND}
N 310 -420 690 -420 {lab=GND}
N 690 -470 690 -420 {lab=GND}
N 520 -530 720 -530 {lab=v2}
N 160 -760 550 -760 {lab=v2}
N 550 -760 560 -530 {lab=v2}
C {devices/vsource.sym} -380 -900 0 0 {name=V3 value="PULSE(0 3.3 \{0.1*period\} \{0.05*period\} \{0.05*period\} \{0.3*period\} \{1*period\})"}
C {devices/gnd.sym} -380 -870 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -380 -940 0 0 {name=p3 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} -300 -900 0 0 {name=V4 value=3.3}
C {devices/gnd.sym} -300 -870 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -300 -940 0 0 {name=p7 sig_type=std_logic lab=V
}
C {devices/code_shown.sym} 180 -1240 0 0 {name=SPICE1 only_toplevel=false value="

.param period=50n
.param stoptime=\{100*period\}
.tran \{0.01*stoptime\} \{stoptime\} uic 
.control
save all
run

plot \{(vin1-vin2)\} \{(vpreamp1-vpreamp2)\} \{clk\} \{vin2\}
plot \{(vin1-vin2)\} vpreamp1 vpreamp2 \{clk\} \{vin2\}
plot clk  clkd 
plot v2 gnd2 \{v2-gnd2\}


.endc"}
C {devices/code.sym} -630 -1160 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/design.ngspice
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice typical
"
spice_ignore=false}
C {inv.sym} -760 -670 0 0 {name=x3 cl=0.28u wp=0.44u wn=0.22u wx=.22u}
C {symbols/pfet_03v3.sym} -70 -720 2 1 {name=M9
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
C {symbols/pfet_03v3.sym} 190 -590 0 1 {name=M11
L=.28u
W=.22u
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
C {devices/capa.sym} -40 -620 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -40 -490 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -760 -630 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 210 -500 0 1 {name=p5 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 210 -590 0 1 {name=p6 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} -870 -670 0 0 {name=p9 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} -440 -530 0 0 {name=p10 sig_type=std_logic lab=vpreamp1}
C {devices/lab_wire.sym} -760 -710 0 0 {name=p16 lab=V
W=3u}
C {devices/vsource.sym} -530 -890 0 0 {name=V1 value="PULSE(-1m 1m 0 \{0.4*period\} \{0.4*period\} \{4*period\} \{8*period\})"}
C {devices/vsource.sym} -450 -890 0 0 {name=V2 value=1.6}
C {devices/gnd.sym} -450 -860 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -530 -930 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} -450 -930 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} -530 -860 0 0 {name=p13 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 370 -530 0 1 {name=p23 sig_type=std_logic lab=vpreamp2
}
C {symbols/nfet_03v3.sym} 190 -500 0 1 {name=M10
L=.28u
W=.22u
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
C {devices/gnd.sym} -40 -460 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -40 -650 0 0 {name=p4 lab=V
W=3u}
C {symbols/nfet_03v3.sym} -20 -560 0 1 {name=M1
L=.28u
W=10u
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
C {devices/gnd.sym} -70 -560 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 0 -560 0 1 {name=p12 sig_type=std_logic lab=clk
}
C {symbols/pfet_03v3.sym} -290 -590 0 0 {name=M2
L=.28u
W=.22u
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
C {devices/lab_wire.sym} -310 -500 0 0 {name=p14 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} -310 -590 0 0 {name=p15 sig_type=std_logic lab=Vin1}
C {symbols/nfet_03v3.sym} -290 -500 0 0 {name=M3
L=.28u
W=.22u
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
C {devices/lab_wire.sym} -660 -670 0 1 {name=p18 sig_type=std_logic lab=nclk
}
C {devices/gnd.sym} -30 -420 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -90 -720 0 0 {name=p8 sig_type=std_logic lab=clkd
}
C {devices/lab_wire.sym} -870 -550 0 1 {name=p20 sig_type=std_logic lab=clkd
}
C {inv.sym} -810 -550 0 0 {name=x2 cl=0.28u wp=0.44u wn=0.22u wx=10u}
C {devices/gnd.sym} -810 -510 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -810 -590 0 0 {name=p21 lab=V
W=3u}
C {devices/lab_wire.sym} -710 -550 0 1 {name=p22 sig_type=std_logic lab=nclkd
}
C {devices/vsource.sym} -490 -720 0 0 {name=V5 value="PULSE(0 3.3 0 \{0.05*period\} \{0.05*period\} \{0.5*period\} \{1*period\})"}
C {devices/gnd.sym} -490 -690 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -490 -760 0 0 {name=p19 sig_type=std_logic lab=clkd
}
C {devices/lab_wire.sym} -270 -760 0 0 {name=p24 sig_type=std_logic lab=v2
}
C {symbols/nfet_03v3.sym} 50 -540 3 1 {name=M6
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
C {devices/lab_wire.sym} 50 -560 3 1 {name=p26 sig_type=std_logic lab=nclkd
}
C {symbols/nfet_03v3.sym} -150 -610 3 1 {name=M5
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
C {devices/lab_wire.sym} -150 -630 3 1 {name=p27 sig_type=std_logic lab=nclkd}
C {devices/gnd.sym} 50 -520 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -150 -590 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -480 -500 0 0 {name=p11 sig_type=std_logic lab=clk}
C {symbols/nfet_03v3.sym} -460 -500 0 0 {name=M7
L=.28u
W=1u
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
C {devices/lab_wire.sym} 410 -500 0 1 {name=p28 sig_type=std_logic lab=clk}
C {symbols/nfet_03v3.sym} 390 -500 0 1 {name=M8
L=.28u
W=1u
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
C {devices/lab_wire.sym} 760 -500 0 1 {name=p29 sig_type=std_logic lab=clk}
C {symbols/nfet_03v3.sym} 740 -500 0 1 {name=M12
L=.28u
W=1u
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
