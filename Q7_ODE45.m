clc 
clear all

time = [0 15];

x0= [1 10];

[t1,sol1]=ode45(@(t,x) underdamped(t,x), time, x0);
[t2,sol2]=ode45(@(t,x) crticallydamped(t,x), time, x0);
[t3,sol3]=ode45(@(t,x) overdamped(t,x), time, x0);

plot(t1, sol1(:,1),'-+');
hold on
plot(t2, sol2(:,1),'-*');
hold on
plot(t3, sol3(:,1),'-x');

title("Plot Labwork-7")
xlabel("TIME (s)")
ylabel("Displacement from Equilibrium Position (m)")
legend("UNDERDAMPED","CRITICALLY DAMPED","OVERDAMPED")

% Function for damping co-efficient, c = 5 (underdamped)
function dxdt = underdamped(t,x)
m=20;
k=20;
c1=5;
x1=x(1);x2=x(2);
dx1dt=x2;
dx2dt=-(c1/m)*x2-(k/m)*x1;
dxdt= [dx1dt;dx2dt];
end

% Function for damping co-efficient, c = 40 (critically damped)
function dxdt = crticallydamped(t,x)
m=20;
k=20;
c2=40;
x1=x(1);x2=x(2);
dx1dt=x2;
dx2dt=-(c2/m)*x2-(k/m)*x1;
dxdt= [dx1dt;dx2dt];
end

% Function for damping co-efficient, c = 200 (overdamped)
function dxdt = overdamped(t,x)
m=20;
k=20;
c3=200;
x1=x(1);x2=x(2);
dx1dt=x2;
dx2dt=-(c3/m)*x2-(k/m)*x1;
dxdt= [dx1dt;dx2dt];
end