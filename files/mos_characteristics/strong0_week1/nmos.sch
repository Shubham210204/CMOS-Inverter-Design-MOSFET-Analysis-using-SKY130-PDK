v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 20 130 50 {lab=vout}
N 130 80 160 80 {lab=GND}
N 160 80 160 120 {lab=GND}
N 130 120 160 120 {lab=GND}
N 130 110 130 120 {lab=GND}
N 130 110 130 130 {lab=GND}
N 130 40 240 40 {lab=vout}
N 80 80 90 80 {lab=vin}
N 20 -40 20 50 {lab=#net1}
N 20 -40 130 -40 {lab=#net1}
C {/usr/local/share/xschem/sources/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 110 80 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {res.sym} 130 -10 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 130 130 0 0 {name=l1 lab=GND}
C {capa.sym} 240 70 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 20 80 0 0 {name=vdd value=1.8 savecurrent=false}
C {vsource.sym} 220 -50 0 0 {name=vin value="pulse(0 1.8 0 .5ns .5ns 4ns 10ns)" savecurrent=false}
C {gnd.sym} 20 110 0 0 {name=l2 lab=GND}
C {gnd.sym} 220 -20 0 0 {name=l3 lab=GND}
C {gnd.sym} 240 100 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 220 -80 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 80 80 1 0 {name=p2 sig_type=std_logic lab=vin}
C {code_shown.sym} 0 190 0 0 {name=nmos only_toplevel=false value=".lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.1n 100n
.save all"}
C {lab_pin.sym} 240 40 2 0 {name=p3 sig_type=std_logic lab=vout}
