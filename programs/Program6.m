format compact
clear, clc

disp("Part 1")
f=@(x) x.^3-x.^2.*exp(-0.5*x)-3*x+1;

left=-2;
right=3;
x=left:.01:right;
%fPlot=f(x);
lineX=[left, right];
lineY=[0,0];
%plot(x,fPlot,'r',lineX, lineY, 'k')

x1=fzero(f,-2);
x2=fzero(f,0);
x3=fzero(f,3);

fprintf('x1 = %.4f x2=%.4f x3=%.4f\n', x1,x2,x3)

fprintf('\nPart 2\n')

L1=5; L2=8;
h=1.5;s=9;

f=@(theta) L1*cosd(theta)+sqrt((L2.^2)-(L1*sind(theta)-(h).^2).^2)-s;
left=0; right=350;
theta=left: .01: right;
%fPlot=f(theta);
lineX=[left,right]; lineY=[0,0];
%plot(theta, fPlot, 'r', lineX, lineY, 'k')

theta1= fzero(f,175);
theta2= fzero(f,350);

fprintf("theta1 = %.4f  theta2 = %.4f\n", theta1,theta2)