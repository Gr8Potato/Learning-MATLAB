format compact
clc % surpresses "format compact and "Program1 file name"

disp("Part 1")
format bank

L = 100000;
r = 0.06;
n = 30;

Table = [0 5 10 15 20 25 30];
A = ((1+(r/12))^(12*n));
A2 = ((1+(r/12)).^(12.*Table));
B = (L.*(A-A2))/(A-1);
Table = [Table;B]

fprintf('\nPart 2\n')
format short

x = [0.5,1,1.5,2,2.5;];
y= [0.8 1.6 2.4 3.2 4.0];

disp("(a)")
z = x.^2 + (2.*x.*y)

disp("(b)")
z = x.*y.*exp(1).^(y./x)-(x.^4.*y.^3+8.5).^(1/3)

fprintf('\nPart 3\n')
r = 1.6 * 10^3;
s = 14.2;

t = [1 2 3 4 5];
x = [2 4 6 8 10];
y = [3 6 9 12 15];

disp("(a)")
G = x.*t + (r/s^2)*(y.^2-x).*t

disp("(b)")
R = (r.*(-x.*t+y.*t.^2))/15;
R = R - s^2.*(y-0.5.*x.^2).*t