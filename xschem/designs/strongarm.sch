v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1570 -150 1570 -100 {
lab=GND}
N 1630 -50 2130 -50 {
lab=CLK}
N 1860 -150 1860 -100 {
lab=GND}
N 1550 -180 1570 -180 {
lab=GND}
N 1550 -180 1550 -100 {
lab=GND}
N 1860 -180 1880 -180 {
lab=GND}
N 1880 -180 1880 -100 {
lab=GND}
N 1860 -220 1860 -210 {
lab=vo10}
N 1860 -390 1860 -330 {
lab=Vout1}
N 1800 -450 1870 -450 {
lab=V}
N 1570 -220 1570 -210 {
lab=#net1}
N 1570 -390 1570 -340 {
lab=Vout2}
N 1560 -420 1570 -420 {
lab=V}
N 1560 -450 1560 -420 {
lab=V}
N 1860 -420 1870 -420 {
lab=V}
N 1870 -450 1870 -420 {
lab=V}
N 1610 -420 1640 -420 {
lab=Vout1}
N 1610 -180 1640 -180 {
lab=Vout1}
N 1640 -260 1640 -180 {
lab=Vout1}
N 1570 -310 1620 -310 {
lab=GND}
N 1780 -220 1780 -180 {
lab=Vout2}
N 1780 -180 1820 -180 {
lab=Vout2}
N 1800 -300 1860 -300 {
lab=GND}
N 1780 -420 1820 -420 {
lab=Vout2}
N 1550 -100 1570 -100 {
lab=GND}
N 1700 -100 1860 -100 {
lab=GND}
N 1860 -100 1880 -100 {
lab=GND}
N 1560 -450 1620 -450 {
lab=V}
N 1720 -450 1800 -450 {
lab=V}
N 1640 -420 1640 -260 {
lab=Vout1}
N 1860 -270 1860 -260 {
lab=vo10}
N 1570 -280 1570 -220 {
lab=#net1}
N 1780 -420 1780 -220 {
lab=Vout2}
N 1860 -260 1860 -220 {
lab=vo10}
N 1620 -450 1720 -450 {
lab=V}
N 1570 -100 1700 -100 {
lab=GND}
N 1340 40 1390 40 {
lab=#net2}
N 1870 -450 2110 -450 {lab=V}
N 1390 -450 1560 -450 {lab=V}
N 1390 -420 1420 -420 {lab=V}
N 1420 -450 1420 -420 {lab=V}
N 2070 -420 2110 -420 {lab=V}
N 2070 -450 2070 -420 {lab=V}
N 1390 -390 1390 -360 {lab=Vout2}
N 1390 -360 1570 -360 {lab=Vout2}
N 1860 -370 2110 -370 {lab=Vout1}
N 2110 -390 2110 -370 {lab=Vout1}
N 2130 -50 2160 -50 {lab=CLK}
N 2160 -420 2160 -50 {lab=CLK}
N 2150 -420 2160 -420 {lab=CLK}
N 1350 -420 1350 -100 {lab=CLK}
N 1350 -100 1350 -50 {lab=CLK}
N 1350 -50 1630 -50 {lab=CLK}
N 1570 -370 1780 -370 {lab=Vout2}
N 1640 -340 1860 -340 {lab=Vout1}
N 1550 40 1580 40 {lab=CLK}
N 1580 -50 1580 40 {lab=CLK}
N 1530 -310 1530 -300 {lab=Vin1}
N 1480 -300 1530 -300 {lab=Vin1}
N 1900 -290 1980 -290 {lab=Vin2}
N 1900 -300 1900 -290 {lab=Vin2}
N 1640 -180 1690 -180 {lab=Vout1}
N 1750 -180 1780 -180 {lab=Vout2}
N 1720 -310 1720 -100 {lab=GND}
N 1620 -310 1800 -310 {lab=GND}
N 1800 -310 1800 -300 {lab=GND}
N 1450 80 1730 80 {lab=GND}
N 1730 -100 1730 80 {lab=GND}
N 1400 -360 1400 -330 {lab=Vout2}
N 2060 -370 2060 -340 {lab=Vout1}
C {devices/iopin.sym} 1730 -450 0 0 {name=p1 lab=V
W=2u}
C {devices/iopin.sym} 2060 -340 0 1 {name=p2 lab=Vout1}
C {devices/iopin.sym} 1490 -300 0 1 {name=p3 lab=Vin1}
C {devices/iopin.sym} 1980 -290 0 0 {name=p4 lab=Vin2}
C {devices/iopin.sym} 1400 -330 0 0 {name=p5 lab=Vout2}
C {devices/iopin.sym} 1340 40 0 1 {name=p6 lab=CLK
}
C {devices/iopin.sym} 1880 -100 0 0 {name=p7 lab=GND
}
C {symbols/pfet_03v3.sym} 1590 -420 0 1 {name=M9
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
C {symbols/pfet_03v3.sym} 1370 -420 0 0 {name=M10
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
C {symbols/nfet_03v3.sym} 1840 -180 0 0 {name=M11
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
C {symbols/pfet_03v3.sym} 2130 -420 0 1 {name=M12
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
C {symbols/nfet_03v3.sym} 1590 -180 0 1 {name=M13
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
C {symbols/pfet_03v3.sym} 1840 -420 0 0 {name=M14
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
C {symbols/nfet_03v3.sym} 1550 -310 0 0 {name=M15
L=0.28u
W=4u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1880 -300 0 1 {name=M16
L=0.28u
W=4u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {inv.sym} 1450 40 0 0 {name=x4 cl=0.28u wp=0.44u wn=0.22u wx=5u}
C {devices/lab_wire.sym} 1450 0 0 0 {name=p16 lab=V
W=3u}
C {devices/lab_wire.sym} 1860 -240 0 1 {name=p20 sig_type=std_logic lab=vo10}
