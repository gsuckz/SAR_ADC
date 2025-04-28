v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -1030 -90 -930 {lab=#net1}
N -90 -870 -80 -870 {lab=#net2}
N 830 -660 870 -660 {lab=GND}
N 530 -690 550 -690 {lab=GND}
N 530 -690 530 -660 {lab=GND}
N 830 -690 870 -690 {lab=GND}
N 830 -690 830 -660 {lab=GND}
N 200 -690 230 -690 {lab=GND}
N 230 -690 230 -660 {lab=GND}
N -80 -690 -40 -680 {lab=GND}
N -40 -680 -40 -660 {lab=GND}
N 860 -780 860 -720 {lab=#net3}
N 860 -720 870 -720 {lab=#net3}
N 860 -1050 860 -920 {lab=#net4}
N 790 -1050 860 -1050 {lab=#net4}
N 790 -1060 790 -1050 {lab=#net4}
N -90 -1180 -90 -1090 {lab=V}
N 400 -1180 790 -1180 {lab=V}
N 790 -1180 790 -1120 {lab=V}
N 370 -1150 400 -1150 {lab=V}
N 400 -1180 400 -1150 {lab=V}
N 200 -880 240 -880 {lab=Vout2}
N 550 -870 620 -870 {lab=Vout1}
N 520 -1080 620 -1080 {lab=#net5}
N 90 -1080 90 -1020 {lab=#net5}
N 240 -1080 240 -940 {lab=#net5}
N 520 -1080 520 -930 {lab=#net5}
N 620 -1080 620 -1030 {lab=#net5}
N 550 -870 550 -720 {lab=Vout1}
N 370 -1120 370 -1080 {lab=#net5}
N -90 -900 -50 -900 {lab=GND}
N -60 -660 -50 -900 {lab=GND}
N 760 -890 860 -890 {lab=GND}
N 760 -890 760 -660 {lab=GND}
N -80 -870 50 -870 {lab=#net2}
N 660 -780 860 -780 {lab=#net3}
N -80 -870 -80 -720 {lab=#net2}
N 200 -880 200 -720 {lab=Vout2}
N 660 -1000 660 -780 {lab=#net3}
N 50 -990 50 -870 {lab=#net2}
N 230 -660 530 -660 {lab=GND}
N 760 -660 830 -660 {lab=GND}
N -40 -660 230 -660 {lab=GND}
N -60 -660 -40 -660 {lab=GND}
N -90 -1180 400 -1180 {lab=V}
N 90 -1080 240 -1080 {lab=#net5}
N 370 -1080 520 -1080 {lab=#net5}
N 520 -870 550 -870 {lab=Vout1}
N 240 -1080 370 -1080 {lab=#net5}
N -90 -660 -60 -660 {lab=GND}
N 530 -660 760 -660 {lab=GND}
N 860 -860 860 -780 {lab=#net3}
N 90 -880 200 -880 {lab=Vout2}
N 90 -960 90 -880 {lab=Vout2}
N 620 -970 620 -870 {lab=Vout1}
C {devices/iopin.sym} 680 -660 0 0 {name=p2 lab=GND
W=20u}
C {devices/iopin.sym} 660 -740 0 0 {name=p8 lab=Vout2}
C {devices/iopin.sym} 110 -570 0 1 {name=p6 lab=Vout1}
C {devices/iopin.sym} -30 -330 0 1 {name=p3 lab=clk}
C {devices/iopin.sym} 15 -470 0 1 {name=p7 lab=Vin2}
C {devices/iopin.sym} 915 -440 0 0 {name=p9 lab=Vin1}
C {symbols/pfet_03v3.sym} 770 -1090 0 0 {name=M13
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
C {symbols/nfet_03v3.sym} -110 -900 0 0 {name=M14
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
C {symbols/pfet_03v3.sym} 350 -1150 0 0 {name=M15
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
C {symbols/pfet_03v3.sym} -70 -1060 0 1 {name=M16
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
C {symbols/pfet_03v3.sym} 640 -1000 0 1 {name=M17
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
C {symbols/pfet_03v3.sym} 220 -910 0 0 {name=M18
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
C {symbols/pfet_03v3.sym} 540 -900 0 1 {name=M19
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
C {symbols/pfet_03v3.sym} 70 -990 0 0 {name=M20
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
C {symbols/nfet_03v3.sym} 880 -890 0 1 {name=M21
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
C {symbols/nfet_03v3.sym} -100 -690 0 0 {name=M22
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
C {symbols/nfet_03v3.sym} 890 -690 0 1 {name=M23
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
C {symbols/nfet_03v3.sym} 180 -690 0 0 {name=M24
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
C {symbols/nfet_03v3.sym} 570 -690 0 1 {name=M25
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
C {devices/lab_wire.sym} 300 -1180 0 0 {name=p25 lab=V
W=3u}
C {devices/lab_wire.sym} 790 -1090 0 0 {name=p29 lab=V
W=3u}
C {devices/lab_wire.sym} -90 -1060 0 0 {name=p30 lab=V
W=3u}
C {devices/lab_wire.sym} 90 -990 0 0 {name=p31 lab=V
W=3u}
C {devices/lab_wire.sym} 620 -1000 0 0 {name=p32 lab=V
W=3u}
C {devices/lab_wire.sym} 240 -910 0 0 {name=p33 lab=V
W=3u}
C {devices/lab_wire.sym} 520 -900 0 0 {name=p34 lab=V
W=3u}
C {devices/lab_wire.sym} 750 -1090 0 0 {name=p36 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 330 -1150 0 0 {name=p37 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} -50 -1060 0 1 {name=p38 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} -120 -690 0 0 {name=p39 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 160 -690 0 0 {name=p40 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 590 -690 0 1 {name=p41 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 910 -690 0 1 {name=p42 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} -130 -900 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 200 -910 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 900 -890 0 1 {name=p10 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 560 -900 0 1 {name=p11 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 550 -770 0 0 {name=p13 sig_type=std_logic lab=Vout1}
C {devices/lab_wire.sym} 200 -780 0 1 {name=p14 sig_type=std_logic lab=Vout2}
C {devices/iopin.sym} 600 -1180 0 0 {name=p1 lab=V
W=3u}
