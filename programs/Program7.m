format compact
clear, clc

R1=4.14;
R2=3.26;
R3=3.77;
R4=2.57;
guess1 = 75*pi/180;%theta2
guess2 = 30*pi/180;%theta3
accuracy = 1e-7;

n = 0;%for checking if its the first loop or not
for t4 = 85*pi/180 : 1*pi/180 : 805*pi/180
    n = n + 1;

    f1 = @(t2,t3) R2*cos(t2) + R3*cos(t3) + R4*cos(t4)-R1;
    f2 = @(t2,t3) R3*sin(t3) + R4*sin(t4) - R2*sin(t2);
    df1dt2 = @(t2,t3) -R2*sin(t2);
    df1dt3 = @(t2,t3) -R3*sin(t3);
    df2dt2 = @(t2,t3) -R2*cos(t2);
    df2dt3 = @(t2,t3) R3*cos(t3);
    [t2, t3]=newton2(f1,f2,df1dt2,df1dt3,df2dt2,df2dt3, ...
    guess1,guess2,accuracy);
    R2X = R2*cos(t2);
    R2Y = R2*sin(t2);
    R3X = R3*cos(t3);
    R3Y = R3*sin(t3);
    R4X = R4*cos(t4);
    R4Y = R4*sin(t4);
    line1x = [0 R1];
    line1y = [0 0];
    line2x = [0, R2X];
    line2y = [0, R2Y];
    line3x = [R2X R2X+R3X];
    line3y = [R2Y R4Y];
    line4x = [R2X+R3X R1];
    line4y = [R4Y 0];
    plot(line1x,line1y,'k',line2x,line2y,'r',line3x,line3y,'g',line4x,line4y,'b');
    axis([-3 7 -3 7]);
    set(gca,'xtick',-3:1:7);
    set(gca,'ytick',-3:1:7);
    pbaspect([1 1 1]);
    xlabel('x');
    ylabel('y');
    title('Program 7'); 
    pause(.01); 
    if(n == 1)
        pause(7);
    end
end

function [t1,t2]=newton2(f1,f2,df1dt1,df1dt2,df2dt1,df2dt2,...
guess1,guess2,accuracy)
t1New = guess1;
t2New = guess2;
t1Old = guess1 + 1;
t2Old = guess2 + 1;
while abs(t1New-t1Old)>=accuracy || abs(t2New-t2Old)>=accuracy
    t1Old=t1New;
    t2Old=t2New;
    A = [df1dt1(t1Old,t2Old), df1dt2(t1Old,t2Old)
    df2dt1(t1Old,t2Old), df2dt2(t1Old,t2Old)];
    B = [f1(t1Old,t2Old)
    f2(t1Old,t2Old)];
    P = A\B;
    t1New = t1Old - P(1);
    t2New = t2Old - P(2);
end
t1 = t1New;
t2 = t2New;
end