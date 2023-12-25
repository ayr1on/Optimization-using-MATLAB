
clc
clear all

y=[4.457984 4.688563 5.03446 5.553116 6.331076 7.497248 9.247771 11.87294 15.80973 21.71608 30.57541];
x=[-5 -4 -3 -2 -1 0 1 2 3 4 5];

n=length(x)

for i=1:n
    z(i)=log(y(i)-4);
end

sumy=0;
sumz = 0;
sumx = 0;
sumzx = 0;
sumzsq = 0;
sumxsq = 0;

for i=1:n
    sumy = sumy + y(i);
    sumz = sumz + z(i);
    sumx = sumx + x(i);
    sumzx = sumzx + z(i)*x(i);
    sumzsq = sumzsq + z(i)*z(i);
    sumxsq = sumxsq + x(i)*x(i);
end

A=[sumxsq sumx;sumx n];
B=[sumzx;sumz];
X=inv(A)*B;

a0=X(1)
a1=X(2)

tau=exp(a0)
theta=exp(a1)

% f(x) at x=-2.65
ytofind=4+theta*(tau)^(-2.65)

ymean=sumy/n;
st=0;
sr=0;

for i=1:n
    ypred(i)=4+theta*((tau)^(x(i)));
    st=st+(y(i)-ymean)^2;
    sr=sr+(y(i)-ypred(i))^2;
end

rsq=(st-sr)/st

plot(x,y,'*',x,ypred,'r')
title('QUESTION 4(B)- y vs x plot')
xlabel('x')
ylabel('y')
