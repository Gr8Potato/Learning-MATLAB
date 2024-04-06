format compact
clc % surpresses "format compact and "Program3 file name"

a = 44 * pi/180;
b = 69 * pi/180;
g = 48 * pi/180;
d = 76 * pi/180;
H = 260;
W = 330;
G = 410;

A = [cos(a),0,0,0,0,1,0,1,0,0;
    sin(a),0,0,0,0,0,0,0,1,0;
    0,-cos(b),cos(g),0,0,-1,1,0,0,0;
    0,sin(b),sin(g),0,0,0,0,0,0,0;
    0,0,0,-cos(d),0,0,-1,0,0,0;
    0,0,0,sin(d),0,0,0,0,0,1;
    -cos(a),cos(b),0,0,1,0,0,0,0,0;
    -sin(a),-sin(b),0,0,0,0,0,0,0,0;
    0,0,-cos(g),cos(d),-1,0,0,0,0,0;
    0,0,-sin(g),-sin(d),0,0,0,0,0,0;];
B = [0;0;0;W;0;0;0;G;H;0];

F = A\B