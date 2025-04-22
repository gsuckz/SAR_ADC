v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1730 -850 1730 -840 {
lab=V}
N 1650 -850 1650 -840 {
lab=clk}
N 1580 -840 1580 -830 {
lab=Vin2}
N 1500 -840 1500 -830 {
lab=Vin1}
N 1740 -420 1740 -320 {lab=#net1}
N 1740 -260 1750 -260 {lab=#net2}
N 2660 -50 2700 -50 {lab=GND}
N 2360 -80 2380 -80 {lab=GND}
N 2360 -80 2360 -50 {lab=GND}
N 2660 -80 2700 -80 {lab=GND}
N 2660 -80 2660 -50 {lab=GND}
N 2030 -80 2060 -80 {lab=GND}
N 2060 -80 2060 -50 {lab=GND}
N 1750 -80 1790 -70 {lab=GND}
N 1790 -70 1790 -50 {lab=GND}
N 2690 -170 2690 -110 {lab=#net3}
N 2690 -110 2700 -110 {lab=#net3}
N 2690 -440 2690 -310 {lab=#net4}
N 2620 -440 2690 -440 {lab=#net4}
N 2620 -450 2620 -440 {lab=#net4}
N 1740 -570 1740 -480 {lab=V}
N 2230 -570 2620 -570 {lab=V}
N 2620 -570 2620 -510 {lab=V}
N 2200 -540 2230 -540 {lab=V}
N 2230 -570 2230 -540 {lab=V}
N 2030 -270 2070 -270 {lab=Vout1}
N 2380 -260 2450 -260 {lab=Vout2}
N 2350 -470 2450 -470 {lab=#net5}
N 1920 -470 1920 -410 {lab=#net5}
N 2070 -470 2070 -330 {lab=#net5}
N 2350 -470 2350 -320 {lab=#net5}
N 2450 -470 2450 -420 {lab=#net5}
N 2380 -260 2380 -110 {lab=Vout2}
N 2200 -510 2200 -470 {lab=#net5}
N 1740 -290 1780 -290 {lab=GND}
N 1770 -50 1780 -290 {lab=GND}
N 2590 -280 2690 -280 {lab=GND}
N 2590 -280 2590 -50 {lab=GND}
N 3540 -360 3640 -360 {lab=#net6}
N 3640 -360 3645 -290 {lab=#net6}
N 3535 -155 3645 -230 {lab=#net7}
N 1750 -260 1880 -260 {lab=#net2}
N 2490 -170 2690 -170 {lab=#net3}
N 1750 -260 1750 -110 {lab=#net2}
N 2030 -270 2030 -110 {lab=Vout1}
N 2490 -390 2490 -170 {lab=#net3}
N 1880 -380 1880 -260 {lab=#net2}
N 2060 -50 2360 -50 {lab=GND}
N 2590 -50 2660 -50 {lab=GND}
N 1790 -50 2060 -50 {lab=GND}
N 1770 -50 1790 -50 {lab=GND}
N 1740 -570 2230 -570 {lab=V}
N 1920 -470 2070 -470 {lab=#net5}
N 2200 -470 2350 -470 {lab=#net5}
N 2350 -260 2380 -260 {lab=Vout2}
N 2070 -470 2200 -470 {lab=#net5}
N 1740 -50 1770 -50 {lab=GND}
N 2360 -50 2590 -50 {lab=GND}
N 2690 -250 2690 -170 {lab=#net3}
N 1920 -270 2030 -270 {lab=Vout1}
N 1920 -350 1920 -270 {lab=Vout1}
N 2450 -360 2450 -260 {lab=Vout2}
N 3160 -270 3380 -270 {lab=saout}
N 3380 -360 3380 -270 {lab=saout}
N 3160 -220 3370 -220 {lab=#net8}
N 3160 -220 3160 -210 {lab=#net8}
N 3375 -220 3375 -155 {lab=#net8}
N 3370 -220 3375 -220 {lab=#net8}
C {devices/vsource.sym} 1650 -810 0 0 {name=V3 value="PULSE(0 3.3 0 \{0.05*period\} \{0.05*period\} \{0.5*period\} \{1*period\})"}
C {devices/gnd.sym} 1650 -780 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1650 -850 0 0 {name=p3 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} 1730 -810 0 0 {name=V4 value=3.3}
C {devices/gnd.sym} 1730 -780 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1730 -850 0 0 {name=p7 sig_type=std_logic lab=V
}
C {devices/code_shown.sym} 2810 -735 0 0 {name=SPICE1 only_toplevel=false value="

.param period=100n
.param stoptime=\{100*period\}
.tran \{0.00001*stoptime\} \{stoptime\} uic 
.control
save all @m.XM1.m0[p] 
run
plot \{vin1 - vin2\} \{vout1 - vout2\} \{clk/3300\} \{vin2/1000\}
plot \{1000*(vin1 - vin2)\} \{vout1 - vout2\} \{clk/330\} \{vin2\}
plot vout1 vout2
plot outc \{1000*(vin1-vin2)\}


plot saout
.endc"}
C {devices/code.sym} 1400 -1070 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/design.ngspice
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
"
spice_ignore=false}
C {devices/vsource.sym} 1500 -800 0 0 {name=V1 value="PULSE(-.5m .5m 0 \{0.4*period\} \{0.4*period\} \{8*period\} \{16*period\})"}
C {devices/vsource.sym} 1580 -800 0 0 {name=V2 value="PULSE(0 3.3 0 \{0.4*period\} \{0.4*period\} \{32*period\} \{64*period\})"}
C {devices/gnd.sym} 1580 -770 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1500 -840 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 1580 -840 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 1500 -770 0 0 {name=p13 sig_type=std_logic lab=Vin2}
C {symbols/pfet_03v3.sym} 2600 -480 0 0 {name=M13
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 1720 -290 0 0 {name=M14
L=0.28u
W=8u
nf=5
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
C {symbols/pfet_03v3.sym} 2180 -540 0 0 {name=M15
L=.28u
W=2u
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
C {symbols/pfet_03v3.sym} 1760 -450 0 1 {name=M16
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 2470 -390 0 1 {name=M17
L=0.28u
W=8u
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
C {symbols/pfet_03v3.sym} 2050 -300 0 0 {name=M18
L=0.28u
W=8u
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
C {symbols/pfet_03v3.sym} 2370 -290 0 1 {name=M19
L=0.28u
W=8u
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
C {symbols/pfet_03v3.sym} 1900 -380 0 0 {name=M20
L=0.28u
W=8u
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
C {symbols/nfet_03v3.sym} 2710 -280 0 1 {name=M21
L=0.28u
W=8u
nf=5
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
C {symbols/nfet_03v3.sym} 1730 -80 0 0 {name=M22
L=0.28u
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
C {symbols/nfet_03v3.sym} 2720 -80 0 1 {name=M23
L=0.28u
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
C {symbols/nfet_03v3.sym} 2010 -80 0 0 {name=M24
L=0.28u
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
C {symbols/nfet_03v3.sym} 2400 -80 0 1 {name=M25
L=0.28u
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
C {devices/lab_wire.sym} 2130 -570 0 0 {name=p25 lab=V
W=3u}
C {devices/lab_wire.sym} 2620 -480 0 0 {name=p29 lab=V
W=3u}
C {devices/lab_wire.sym} 1740 -450 0 0 {name=p30 lab=V
W=3u}
C {devices/lab_wire.sym} 1920 -380 0 0 {name=p31 lab=V
W=3u}
C {devices/lab_wire.sym} 2450 -390 0 0 {name=p32 lab=V
W=3u}
C {devices/lab_wire.sym} 2070 -300 0 0 {name=p33 lab=V
W=3u}
C {devices/lab_wire.sym} 2350 -290 0 0 {name=p34 lab=V
W=3u}
C {devices/lab_wire.sym} 2580 -480 0 0 {name=p36 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 2160 -540 0 0 {name=p37 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 1780 -450 0 1 {name=p38 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 1710 -80 0 0 {name=p39 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 1990 -80 0 0 {name=p40 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 2420 -80 0 1 {name=p41 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 2740 -80 0 1 {name=p42 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 1700 -290 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 2030 -300 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 2730 -280 0 1 {name=p6 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 2390 -290 0 1 {name=p8 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 2030 -200 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {devices/lab_wire.sym} 2380 -200 0 1 {name=p10 sig_type=std_logic lab=Vout2}
C {devices/gnd.sym} 2205 -50 0 0 {name=l1 lab=GND}
C {SR_nor.sym} 3685 -210 0 0 {name=X1}
C {devices/lab_wire.sym} 3725 -330 0 0 {name=p11 lab=V
W=3u}
C {devices/gnd.sym} 3725 -190 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 3805 -290 0 1 {name=p15 sig_type=std_logic lab=outc}
C {designs/inv.sym} 3440 -360 0 0 {name=x2 wx=1u}
C {designs/inv.sym} 3435 -155 0 0 {name=x3 wx =1u}
C {devices/lab_wire.sym} 3440 -400 0 0 {name=p16 lab=V
W=3u}
C {devices/lab_wire.sym} 3435 -195 0 0 {name=p17 lab=V
W=3u}
C {devices/gnd.sym} 3440 -320 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 3435 -115 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 3805 -230 0 1 {name=p18 sig_type=std_logic lab=out}
C {designs/strongarm.sym} 3060 -180 0 0 {name=X6}
C {devices/lab_wire.sym} 3100 -310 0 0 {name=p21 lab=V
W=3u}
C {devices/gnd.sym} 3100 -170 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 3050 -220 0 0 {name=p22 sig_type=std_logic lab=Vout2}
C {devices/lab_wire.sym} 3050 -280 0 0 {name=p23 sig_type=std_logic lab=Vout1}
C {devices/lab_wire.sym} 3050 -200 0 0 {name=p24 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 3160 -270 0 1 {name=p26 sig_type=std_logic lab=saout}
