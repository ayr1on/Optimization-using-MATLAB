clc
clear all
x=[7.6 7.1 8.2 7.5 7.4 7.8 7.3 8 7.1 7.5 8.1 7 7.3 7.8 7.3 8 8.5 7.1 8.2 7.9 7.6 8.8 7.2 7.9 8.1 7.7 8.4 7.4 7.3 8.5 7.8 6.7 7.1 7.3];
y=[157 174 175 188 171 143 217 190 142 190 215 199 262 105 121 81 82 210 202 155 157 147 133 53 56 113 35 125 76 48 147 117 182 87];
n=length(x);
sumx=0;
sumy=0;
sumxy=0;
sumxsq=0;
sumysq=0;
for i=1:n
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumxy=sumxy+(x(i)*y(i));
    sumxsq=sumxsq+(x(i)*x(i));
    sumysq=sumysq+(y(i)*y(i));
end

ymean=sumy/n;
xmean=sumx/n;

a1=((sumx*sumy)-(n*sumxy))/(((sumx)^2)-(n*sumxsq))
a0=ymean-(a1*xmean)
for i=1:n
    ycalc(i)=(a0+(a1*x(i)));
end

rsq=(-(sumx*sumy)+(n*sumxy))/((sqrt(-(sumx*sumx)+(n*sumxsq)))*(sqrt(n*sumysq-sumy*sumy)))
plot(x,y,'+')
hold on
plot(x,ycalc)
title('Data Set-4 Plot')
xlabel('pH of well water')
ylabel('bicarbonate (ppm) of well water')