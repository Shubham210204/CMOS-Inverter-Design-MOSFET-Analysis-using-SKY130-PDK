v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -30 -50 20 {lab=vgs}
N 175 40 205 40 {lab=VDD}
N 205 35 205 40 {lab=VDD}
N 205 -5 205 35 {lab=VDD}
N 180 -5 205 -5 {lab=VDD}
N 180 0 180 20 {lab=VDD}
N 180 -40 180 -0 {lab=VDD}
N 180 -40 270 -40 {lab=VDD}
N 160 -40 180 -40 {lab=VDD}
C {/usr/local/share/xschem/sources/xschem_sky130/sky130_fd_pr/pfet3_01v8.sym} 160 50 0 0 {name=M1
W=2.5
L=0.15
body=VDD
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
C {vsource.sym} -50 50 0 0 {name=vgs value=0 savecurrent=false}
C {vsource.sym} 270 -10 0 0 {name=vds value=1.8 savecurrent=false}
C {gnd.sym} -50 80 0 0 {name=l1 lab=GND}
C {gnd.sym} 270 20 0 0 {name=l2 lab=GND}
C {gnd.sym} 180 80 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -50 -30 2 0 {name=p3 sig_type=std_logic lab=vgs}
C {lab_pin.sym} 140 50 0 0 {name=p4 sig_type=std_logic lab=vgs}
C {code_shown.sym} -95 160 0 0 {name=pmos only_toplevel=false value=".lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice tt
.dc vgs 0 2 1m
.save all"}
C {lab_pin.sym} 160 -40 0 0 {name=p1 sig_type=std_logic lab=vds}
