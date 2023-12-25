clc
clear all
x=[1 2 3 4 5 6 7 8 9];
y=[1 1.5 2 3 4 5 8 10 13];
n=length(x);
sumx=0;
sumy=0;
sumxy=0;
sumxsq=0;
sumx3=0;
sumx4=0;
sumxsqy=0;
for i=1:n
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumxy=sumxy+(x(i)*y(i));
    sumxsq=sumxsq+(x(i)*x(i));
    sumx3=sumx3+(x(i)*x(i)*x(i));
    sumx4=sumx4+(x(i)*x(i)*x(i)*x(i));
    sumxsqy=sumxsqy+(x(i)*x(i)*y(i));
end

A=[n sumx sumxsq;sumx sumxsq sumx3;sumxsq sumx3 sumx4];
B=[sumy;sumxy;sumxsqy];
X=inv(A)*B;
a0=X(1);
a1=X(2);
a2=X(3);
a0,a1,a2

meany=sumy/n;
sumst=0;
sumsr=0;
for i=1:n
    sumst=sumst+(y(i)-meany)^2;
    sumsr=sumsr+(y(i)-a0-a1*x(i)-a2*x(i)*x(i))^2;
end
Rsq=((sumst-sumsr)/sumst)
ycalc=0;

for i=1:n
    ycalc(i)=a0+a1*x(i)+a2*x(i)*x(i);
end

plot(x,y,'+')
hold on
plot(x,ycalc,'g')
