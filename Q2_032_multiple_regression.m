clc
clear all
x1=[0 0 1 2 0 1 2 2 1];
x2=[0 2 2 4 4 6 6 2 1];
y=[14 21 11 12 23 23 14 6 11];
n=length(x1);
sumx1=0;
sumx2=0;
sumy=0;
sumx1x2=0;
sumx1sq=0;
sumx2sq=0;
sumx1y=0;
sumx2y=0;
for i=1:n
    sumx1=sumx1+x1(i);
    sumx2=sumx2+x2(i);
    sumy=sumy+y(i);
    sumx1x2=sumx1x2+(x1(i)*x2(i));
    sumx1sq=sumx1sq+(x1(i)*x1(i));
    sumx2sq=sumx2sq+(x2(i)*x2(i));
    sumx1y=sumx1y+(x1(i)*y(i));
    sumx2y=sumx2y+(x2(i)*y(i));
end

A=[n sumx1 sumx2;sumx1 sumx1sq sumx1x2;sumx2 sumx1x2 sumx2sq];
B=[sumy;sumx1y;sumx2y];
X=inv(A)*B;
a0=X(1);
a1=X(2);
a2=X(3);
a0,a1,a2

meany=sumy/n;
st=0;
sr=0;
for i=1:n
    st=st+(y(i)-meany)^2;
    sr=sr+(y(i)-a0-a1*x1(i)-a2*x2(i));
end
Rsq=((st-sr)/st)
plot3(x1,x2,y,'+', 'color', 'g')



hold on

x1=(-10:10);
x2=(-10:10);
[x1 x2]=meshgrid(x1,x2);
y=a0+a1*x1+a2*x2;
hold on
surf(x1,x2,y)
colorbar