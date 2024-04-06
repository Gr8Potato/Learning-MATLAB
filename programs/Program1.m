format compact
clc % surpresses "format compact and "Program1 file name"

disp("Part 1")

b_to_a = sqrt(16^2+43^2);
b_to_c = sqrt(23^2+43^2);
a_to_c = sqrt(16^2+23^2);

AngleABC = acosd((a_to_c^2-b_to_c^2-b_to_a^2)/(-2*b_to_c*b_to_a))

p = (b_to_c+a_to_c+b_to_a)/2;
A = sqrt(p*(p-b_to_c)*(p-b_to_a)*(p-a_to_c))

fprintf('\nPart 2\n')

a = 8;
h = 13;

L = sqrt(a^2+(4*h^2))+(a^2/(2*h))*log(((2*h)/a)+sqrt(((2*h)/a)^2+1))

fprintf('\nPart 3\n')

b = 15/2 + 4.5/2;
a = 4.5/2+10.5/2;
c = 15/2 + 10.5/2;

Gam = acosd((c^2-b^2-a^2)/(-2*a*b))
Bet = asind((sind(Gam)/c)*b)
Alp = asind((sind(Gam)/c)*a)
SumAng = Gam + Bet + Alp