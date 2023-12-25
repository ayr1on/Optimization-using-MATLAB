clc
clear all

h0=0;
tspan=[0, 25];

% ODE45
[tsol,hsol]= ode45(@(t,h) differentiate(t,h),tspan,h0);
plot(tsol,hsol,'-+', MarkerSize=4)
xlabel("time(s)");
ylabel("height(m)");
hold on

% Euler
eulerstep=1;
eulert=0:eulerstep:25;
eulerh(1)=h0;
n=length(eulert);
for i= 1:n-1
    f(i)= 0.0115-0.0204*sqrt(eulerh(i));
    eulerh(i+1)= eulerh(i)+(eulerstep*f(i));
end
plot(eulert,eulerh,'-*', MarkerSize=4)
hold on

% heun
heunstep=2.5;
heunt=0:heunstep:25;
heunh(1)=h0;
heunn=length(heunt);
for i= 1:heunn-1
    g(i)= 0.0115-0.0204*sqrt(heunh(i));
    heunh(i+1)=heunh(i)+(heunstep*g(i));
    g(i+1)= 0.0115-0.0204*sqrt(heunh(i+1));
    q= (g(i)+g(i+1))/2;
    heunh(i+1)=heunh(i)+(heunstep*q);
end
plot(heunt,heunh,'-^', MarkerSize=4)
legend('ODE45','Euler','Heun')


function dhdt = differentiate(t,h)
dhdt= 0.0115-0.0204*sqrt(h);
end