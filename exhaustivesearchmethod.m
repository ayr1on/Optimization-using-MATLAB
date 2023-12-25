clc
clear all
a=0;
b=5;
n=10;
deltax=(b-a)/n;

k=0;
x1=a;
x2=x1+deltax;
x3=x2+deltax;

while x3<=b
    if gx(x2)<=gx(x1) && gx(x2)<=gx(x3)
        disp(['Minima lies approx at' num2str(x2)])
        x1
        x3
    end
x1=x2;
x2=x1+deltax;
x3=x2+deltax;
    
    k=k+1;
end
k

function fx=gx(x)
fx=(x^2)+(54/x);
end