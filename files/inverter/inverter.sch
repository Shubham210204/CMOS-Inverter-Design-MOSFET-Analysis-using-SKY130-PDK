v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 30 210 110 {lab=output}
N 140 0 140 140 {lab=input}
N 110 70 140 70 {lab=input}
N 210 70 250 70 {lab=output}
N 210 170 210 200 {lab=gnd}
N 140 140 170 140 {lab=input}
N 140 0 170 0 {lab=input}
N 210 140 240 140 {lab=gnd}
N 240 140 240 190 {lab=gnd}
N 210 190 240 190 {lab=gnd}
N 210 -50 210 -30 {lab=vdd}
N 230 -40 230 -10 {lab=vdd}
N 210 -40 230 -40 {lab=vdd}
N 210 -0 230 -0 {lab=vdd}
N 230 -10 230 -0 {lab=vdd}
C {/usr/local/share/xschem/sources/xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 190 140 0 0 {name=M1
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
C {lab_pin.sym} 110 70 0 0 {name=p5 sig_type=std_logic lab=input}
C {lab_pin.sym} 210 -50 1 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 250 70 2 0 {name=p2 sig_type=std_logic lab=output}
C {lab_pin.sym} 210 200 3 0 {name=p3 sig_type=std_logic lab=gnd}
C {/usr/local/share/xschem/sources/xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 190 0 0 0 {name=M2
W=2
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
