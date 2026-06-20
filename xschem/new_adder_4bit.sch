v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -180 100 -180 {lab=#net1}
N 160 -300 160 -180 {lab=#net1}
N 60 -300 100 -300 {lab=#net1}
N 60 -120 100 -120 {lab=#net2}
N 160 -120 160 0 {lab=#net2}
N -80 0 100 0 {lab=#net2}
N -80 -40 -60 -40 {lab=#net1}
N -80 140 -60 140 {lab=#net2}
N -80 320 -60 320 {lab=#net3}
N -80 180 100 180 {lab=#net3}
N 70 60 100 60 {lab=#net3}
N 60 60 70 60 {lab=#net3}
N 160 60 160 180 {lab=#net3}
N 100 -300 160 -300 {lab=#net1}
N 100 -180 160 -180 {lab=#net1}
N 100 -120 160 -120 {lab=#net2}
N 100 -0 160 0 {lab=#net2}
N 100 60 160 60 {lab=#net3}
N 100 180 160 180 {lab=#net3}
N -120 -40 -80 -40 {lab=#net1}
N -120 -180 -120 -40 {lab=#net1}
N -120 -180 -80 -180 {lab=#net1}
N -120 0 -80 0 {lab=#net2}
N -120 -0 -120 140 {lab=#net2}
N -120 140 -80 140 {lab=#net2}
N -120 180 -80 180 {lab=#net3}
N -120 180 -120 320 {lab=#net3}
N -120 320 -80 320 {lab=#net3}
C {sky130_stdcells/fa_1.sym} 0 -260 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/fa_1.sym} 0 -80 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/fa_1.sym} 0 100 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/fa_1.sym} 0 280 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {ipin.sym} -60 -300 0 0 {name=p1 lab=A0}
C {ipin.sym} -60 -120 0 0 {name=p2 lab=A1}
C {ipin.sym} -60 60 0 0 {name=p3 lab=A2}
C {ipin.sym} -60 240 0 0 {name=p4 lab=A3}
C {opin.sym} 60 -220 0 0 {name=p5 lab=S0}
C {opin.sym} 60 -40 0 0 {name=p6 lab=S1}
C {opin.sym} 60 140 0 0 {name=p7 lab=S2}
C {opin.sym} 60 320 0 0 {name=p8 lab=S3}
C {ipin.sym} -60 -260 0 0 {name=p9 lab=B0}
C {ipin.sym} -60 -80 0 0 {name=p10 lab=B1}
C {ipin.sym} -60 100 0 0 {name=p11 lab=B2}
C {ipin.sym} -60 280 0 0 {name=p12 lab=B3}
C {ipin.sym} -60 -220 0 0 {name=p13 lab=CIN}
C {opin.sym} 60 240 0 0 {name=p14 lab=COUT}
C {ipin.sym} -220 -20 0 0 {name=p15 lab=VDD}
C {ipin.sym} -220 20 0 0 {name=p16 lab=GND}
