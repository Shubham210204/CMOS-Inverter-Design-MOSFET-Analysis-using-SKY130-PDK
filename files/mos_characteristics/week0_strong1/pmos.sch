v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 40 240 60 {lab=vout}
N 240 60 320 60 {lab=vout}
N 240 -40 240 -20 {lab=vdd}
N 240 10 260 10 {lab=vdd}
N 260 -30 260 10 {lab=vdd}
N 240 -30 260 -30 {lab=vdd}
N 10 60 200 60 {lab=input}
N 200 10 200 60 {lab=input}
C {/usr/local/share/xschem/sources/xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 220 10 0 0 {name=M1
W=2.5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {res.sym} 240 90 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 320 90 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 10 90 0 0 {name=vin value="pulse(0 1.8 0 .5n .5n 4n 10n)" savecurrent=false}
C {vsource.sym} 70 10 0 0 {name=vdd value=1.8 savecurrent=false}
C {gnd.sym} 10 120 0 0 {name=l1 lab=GND}
C {gnd.sym} 70 40 0 0 {name=l2 lab=GND}
C {gnd.sym} 240 120 0 0 {name=l3 lab=GND}
C {gnd.sym} 320 120 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 70 -20 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 240 -40 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 320 60 2 0 {name=p5 sig_type=std_logic lab=vout}
C {code_shown.sym} 40 190 0 0 {name=pmos only_toplevel=false value=".lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.1n 100n
.save all"}
C {lab_pin.sym} 10 60 0 0 {name=p1 sig_type=std_logic lab=input}
