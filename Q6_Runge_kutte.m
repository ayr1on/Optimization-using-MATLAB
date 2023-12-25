clc
clear all

stepsize= [3,1.5,1,0.5,0.1];
s=length(stepsize);

for i=1:s
    h=stepsize(i);
    t=0:h:6;
    n=length(t);
    x0=50;
    x(1)=x0;

 for i=1:(n-1) 
 k1=RungeKuttaFour(t(i), x(i));
 k2=RungeKuttaFour((t(i)+h/2),(x(i)+k1*h/2));
 k3=RungeKuttaFour((t(i)+h/2),(x(i)+k2*h/2));
 k4=RungeKuttaFour((t(i)+h), (x(i)+k3*h));
 x(i+1) =x(i)+(k1+2*k2+2*k3+k4) *h/6;
 end

 x_final(i) = x(n);
 plot (t, x)
 hold on

end

axis([0 8 -5*10^6 50*10^6])
xlabel ('TIME (min)');
ylabel ('SALT CONCENTRATION (g/L)');
legend ('h=3', 'h=1.5', 'h=1', 'h=0.5', 'h=0.1');
title ('PLOT LABWORK-6' );

conc_at_six_min= x(61); 

function dxbydt=RungeKuttaFour (t, x)
 dxbydt=37.5-3.5*x; 
end