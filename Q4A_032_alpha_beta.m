
clc
clear all
y=[3.4972 3.493916 3.180681 3.413562 3.113425 2.162315 0.854589 0.210883 0.04248 0.006736 0.0004];
x=[-5 -4 -3 -2 -1 0 1 2 3 4 5];
n=length(x);

for i=1:n
    z(i)=(-log((3.5 - y(i))/3.5*y(i)));
end
sumy = 0;
sumz = 0;
sumx = 0;
sumzx = 0;
sumxsq = 0;
sumzsq = 0;
sumysq = 0;
sumyx = 0;
for i=1:n
    sumy = sumy + y(i);
    sumz = sumz + z(i);
    sumx = sumx + x(i);
    sumzx = sumzx + z(i)*x(i);
    sumxsq = sumxsq + x(i)*x(i);
    sumzsq = sumzsq + z(i)*z(i);
    sumysq = sumysq + y(i)*y(i);
    sumyx = sumyx + y(i)*x(i);
end
ymean=sumy/n;

A=[sumxsq sumx;sumx n];
B=[sumzx;sumz];
X=inv(A)*B;

a0=X(1)
a1=X(2)

alpha=exp(a1)
beta=(log(1/3.5)-a0)/log(alpha)


% f(x) at x=-2.5
ytofind=3.5/(1+alpha^(-2.5-beta))

st=0;
sr=0;

for i=1:n
   ypred(i)=3.5/(1+alpha^(x(i)-beta));
   
   st=st+(y(i)-ymean)^2;
   sr=sr+(y(i)-ypred(i))^2;

end

rsq=(st-sr)/st

plot(x,y,'*',x,ypred,'r')
xlabel('x')
ylabel('y')
title('Question Z4(a)')

