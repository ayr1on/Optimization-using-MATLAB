clc
clear all

a=0;
b=5;
e=0.001;
xm=(a+b)/2;
l=b-a;
x1=a+l/4;
x2=b-l/4;
k=0;

while abs(l)>e;
    xm=(a+b)/2;
    l=b-a;
    x1=a+l/4;
    x2=b-l/4;
    if gx(x1) < gx(xm)
        b=xm, xm=x1;
    elseif gx(x2) < gx(xm)
        a=xm, xm=x2;
    else
        a=x1, b=x2;
    end
    k=k+1;
end
k
disp(['My minima is between ', num2str(a), ' & ', num2str(b)])


function fx=gx(x)
fx=(x^2)+(54/x);
end