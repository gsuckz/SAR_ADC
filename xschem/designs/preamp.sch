v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 385 -440 415 -440 {
lab=Vin2}
N 665 -440 755 -440 {
lab=Vin1}
N 460 -660 650 -660 {lab=V}
N 460 -690 650 -690 {lab=V}
N 560 -770 560 -690 {lab=V}
N 460 -630 460 -570 {lab=Vout1}
N 630 -630 630 -570 {lab=Vout2}
N 630 -630 650 -630 {lab=Vout2}
N 390 -660 420 -660 {lab=clk}
N 560 -690 560 -660 {lab=V}
N 455 -440 630 -440 {lab=V}
N 455 -475 455 -470 {lab=Vout1}
N 630 -570 630 -565 {lab=Vout2}
N 630 -565 630 -560 {lab=Vout2}
N 690 -800 690 -660 {lab=clk}
N 380 -800 690 -800 {lab=clk}
N 310 -470 450 -470 {lab=Vout1}
N 310 -410 450 -410 {lab=#net1}
N 820 -440 840 -440 {lab=GND}
N 340 -300 440 -300 {lab=GND}
N 340 -440 340 -300 {lab=GND}
N 310 -440 340 -440 {lab=GND}
N 230 -440 270 -440 {lab=Vin1}
N 230 -510 230 -440 {lab=Vin1}
N 230 -510 710 -510 {lab=Vin1}
N 710 -510 710 -440 {lab=Vin1}
N 400 -440 400 -390 {lab=Vin2}
N 930 -440 930 -250 {lab=Vin2}
N 880 -440 930 -440 {lab=Vin2}
N 450 -470 460 -470 {lab=Vout1}
N 450 -410 460 -410 {lab=#net1}
N 820 -440 820 -310 {lab=GND}
N 390 -800 390 -660 {lab=clk}
N 560 -660 560 -440 {lab=V}
N 460 -570 460 -470 {lab=Vout1}
N 630 -470 840 -470 {lab=Vout2}
N 630 -560 630 -470 {lab=Vout2}
N 630 -440 640 -440 {lab=V}
N 460 -410 840 -410 {lab=#net1}
N 440 -300 820 -300 {lab=GND}
N 820 -310 820 -300 {lab=GND}
N 570 -320 570 -300 {lab=GND}
N 570 -350 600 -350 {lab=GND}
N 600 -350 600 -300 {lab=GND}
N 570 -410 570 -380 {lab=#net1}
N 190 -350 530 -350 {lab=clk}
N 190 -680 190 -350 {lab=clk}
N 190 -680 390 -680 {lab=clk}
N 400 -390 400 -260 {lab=Vin2}
N 400 -260 930 -260 {lab=Vin2}
N 340 -600 460 -600 {lab=Vout1}
N 630 -610 760 -610 {lab=Vout2}
N 760 -550 800 -550 {lab=GND}
N 800 -550 800 -440 {lab=GND}
N 800 -440 820 -440 {lab=GND}
N 320 -540 320 -440 {lab=GND}
N 320 -540 340 -540 {lab=GND}
C {symbols/nfet_03v3.sym} 550 -350 0 0 {name=M27
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
C {symbols/pfet_03v3.sym} 435 -440 0 0 {name=M24
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
C {symbols/pfet_03v3.sym} 655 -440 0 1 {name=M25
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
C {devices/iopin.sym} 560 -770 0 0 {name=p1 lab=V
W=3u}
C {devices/iopin.sym} 820 -300 0 0 {name=p2 lab=GND
W=20u}
C {devices/iopin.sym} 630 -600 0 0 {name=p8 lab=Vout2}
C {devices/iopin.sym} 460 -590 0 1 {name=p6 lab=Vout1}
C {devices/iopin.sym} 380 -800 0 1 {name=p3 lab=clk}
C {devices/iopin.sym} 385 -440 0 1 {name=p7 lab=Vin2}
C {devices/iopin.sym} 745 -440 0 0 {name=p9 lab=Vin1}
C {symbols/pfet_03v3.sym} 440 -660 2 1 {name=M1
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
C {symbols/pfet_03v3.sym} 670 -660 2 0 {name=M2
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
C {symbols/nfet_03v3.sym} 860 -440 0 1 {name=M3
L=.28u
W=5u
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
C {symbols/nfet_03v3.sym} 290 -440 0 0 {name=M4
L=.28u
W=5u
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
C {devices/capa.sym} 340 -570 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 760 -580 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
