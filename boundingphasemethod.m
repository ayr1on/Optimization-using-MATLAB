clc
clear all
x0=0.6;
k=0;
delta=0.5;
d=abs(delta);

if gx(x0-d) >= gx(x0) && gx(x0) >= gx(x0+d)
    d=d;
elseif gx(x0-d) <= gx(x0) && gx(x0) <= gx(x0+d)
    d=-d;
else
    d=d/2;
end

x1=x0+d*2^k;
while gx(x1)<gx(x0)
    k=k+1;
    x2=x0;
    x0=x1;
    x1=x0+d*2^k;
end
disp(["My minima is between x%d & x%d", x2, x1])
disp(['My minima is between ', num2str(x1), ' & ', num2str(x2)])


function fx=gx(x)
fx=(x^2)+(54/x);
end