clc
clear all
x=[-20:0.32:35];
n=length(x);
for i=1:n
    x(i)=-20+(i-1)*0.32;
    y(i)=(-0.1*x(i)^4)-(0.15*x(i)^3)-(0.5*x(i)^2)-(0.25*x(i))+1.2;
end
for i=1:(n-1)
    x1(i)=-20+(i-1)*0.32;
    yder(i)=(y(i+1)-y(i))/0.32;
end
for i=2:(n-1)
    x2(i)=-20+(i-1)*0.32;
    y2der(i)=(y(i+1)-2*y(i)+y(i-1))/(0.32)^2;
end
plot(x,y,x1,yder,'r',x2,y2der,'b')