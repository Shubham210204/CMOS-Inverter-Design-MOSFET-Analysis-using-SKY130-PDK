v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 90 390 120 {lab=GND}
N 250 90 250 120 {lab=GND}
N 250 60 310 60 {lab=GND}
N 310 60 310 70 {lab=GND}
N 310 70 310 100 {lab=GND}
N 250 100 310 100 {lab=GND}
N 80 60 210 60 {lab=vgs}
N 250 30 390 30 {lab=vds}
C {/usr/local/share/xschem/sources/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 230 60 0 0 {name=M1
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
C {vsource.sym} 80 90 0 0 {name=vgs value=0 savecurrent=false}
C {vsource.sym} 390 60 0 0 {name=vds value=1.8 savecurrent=false}
C {gnd.sym} 80 120 0 0 {name=l1 lab=GND}
C {gnd.sym} 250 120 0 0 {name=l2 lab=GND}
C {gnd.sym} 390 120 0 0 {name=l3 lab=GND}
C {code_shown.sym} 70 -60 0 0 {name=dc sweep only_toplevel=false value=".lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice tt
.dc vgs 0 2 1m
.save all"}
C {lab_pin.sym} 80 60 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {lab_pin.sym} 390 30 2 0 {name=p2 sig_type=std_logic lab=vds}
