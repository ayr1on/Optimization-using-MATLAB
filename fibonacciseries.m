clc
clear all

n=100;
F(1)=1;
F(2)=1;
for i=1:n;
    F(i+2)=F(i)+F(i+1);
end

a=0;
b=5;
L=b-a;
k=3;
m=25;
count=0;

while k<(m)

    count=count+1;
    lk=F(m-k+2)*L/F(m+1)
    x1=a+lk;
    x2=b-lk;
    if gx(x1) > gx(x2) && x1 < x2
        a=x1;
    elseif gx(x2) > gx(x1) && x1 < x2
        b=x2;
    elseif gx(x2) > gx(x1) && x1 > x2
        a=x2;
    elseif gx(x2) < gx(x1) && x1 > x2
        b=x1;
    else
        a=x1, b=x2;
    end
    k=k+1;
end 

count
disp(['My minima is between ', num2str(a), ' & ', num2str(b)])



function fx=gx(x)
fx=(x^2)+(54/x);
end