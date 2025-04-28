v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -440 630 -440 {lab=#net1}
N 500 -460 500 -440 {lab=#net1}
N 370 -290 630 -290 {lab=GND}
N 330 -320 330 -250 {lab=clk}
N 330 -250 670 -250 {lab=clk}
N 670 -320 670 -250 {lab=clk}
N 340 -380 370 -380 {lab=Vout1}
N 630 -380 710 -380 {lab=Vout2}
N 630 -380 630 -350 {lab=Vout2}
N 370 -380 370 -350 {lab=Vout1}
N 500 -560 500 -520 {lab=V}
N 500 -540 610 -540 {lab=V}
N 610 -620 610 -540 {lab=V}
N 500 -490 560 -490 {lab=V}
N 560 -540 560 -490 {lab=V}
N 370 -320 630 -320 {lab=GND}
N 510 -320 510 -290 {lab=GND}
N 520 -290 520 -270 {lab=GND}
N 670 -410 680 -410 {lab=Vin1}
N 270 -350 370 -350 {lab=Vout1}
N 310 -410 330 -410 {lab=Vin2}
N 130 -380 340 -380 {lab=Vout1}
N 130 -380 130 -370 {lab=Vout1}
N 130 -290 370 -290 {lab=GND}
N 130 -310 130 -290 {lab=GND}
N 630 -290 690 -290 {lab=GND}
N 690 -320 690 -290 {lab=GND}
C {devices/iopin.sym} 610 -580 0 0 {name=p1 lab=V
W=3u}
C {devices/iopin.sym} 520 -270 0 0 {name=p2 lab=GND
W=20u}
C {devices/iopin.sym} 710 -380 0 0 {name=p8 lab=Vout2}
C {devices/iopin.sym} 270 -350 0 1 {name=p6 lab=Vout1}
C {devices/iopin.sym} 330 -250 0 1 {name=p3 lab=clk}
C {devices/iopin.sym} 315 -410 0 1 {name=p7 lab=Vin2}
C {devices/iopin.sym} 675 -410 0 0 {name=p9 lab=Vin1}
C {symbols/nfet_03v3.sym} 350 -320 0 0 {name=M5
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 480 -490 2 1 {name=M9
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
C {symbols/pfet_03v3.sym} 650 -410 0 1 {name=M11
L=.28u
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
C {symbols/pfet_03v3.sym} 350 -410 0 0 {name=M12
L=.28u
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
C {symbols/nfet_03v3.sym} 650 -320 0 1 {name=M10
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
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} 460 -490 0 0 {name=p12 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 630 -410 0 0 {name=p24 lab=V
W=3u}
C {devices/lab_wire.sym} 370 -410 0 0 {name=p26 lab=V
W=3u}
C {symbols/cap_mim_2f0fF.sym} 690 -350 0 0 {name=C1
W=2e-6
L=2e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 130 -340 0 0 {name=C2
W=2e-6
L=2e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
