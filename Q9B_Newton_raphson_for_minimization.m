clc
clear all

x01=0;
fx01=exp(x01)-(x01^3);
fx01der=exp(x01)-(3*(x01)^2);
fx01der2=exp(x01)-(6*x01);
x11=x01-(fx01der/fx01der2);
e=0.001;
count1=1;

while abs(fx01der)>e
        fx01=exp(x01)-(x01^3);
        fx01der=exp(x01)-(3*(x01)^2);
        fx01der2=exp(x01)-(6*x01);

        if fx01der2 == 0
            disp('Division by zero.');
            break;
        end
    
    x11=x01-(fx01der/fx01der2);
    x01=x11;
count1=count1+1;
end


x11_final=x11
fx11=exp(x11)-(x11^3)

x02=1;
fx02=exp(x02)-(x02^3);
fx02der=exp(x02)-(3*(x02)^2);
fx02der2=exp(x02)-(6*x02);
x12=x02-(fx02der/fx02der2);
e=0.001;
count2=1;
while abs(fx02der)>e
        fx02=exp(x02)-(x02^3);
        fx02der=exp(x02)-(3*(x02)^2);
        fx02der2=exp(x02)-(6*x02);
        if fx02der2 == 0
            disp('Division by zero.');
            break;
        end
    
    x12=x02-(fx02der/fx02der2);
    x02=x12;
count2=count2+1;
end

x12_final=x12
fx12=exp(x12)-(x12^3)

x03=10;
fx03=exp(x03)-(x03^3);
fx03der=exp(x03)-(3*(x03)^2);
fx03der2=exp(x03)-(6*x03);
x13=x03-(fx03der/fx03der2);
e=0.001;
count3=1;
while abs(fx03der)>e
        fx03=exp(x03)-(x03^3);
        fx03der=exp(x03)-(3*(x03)^2);
        fx03der2=exp(x03)-(6*x03);
        if fx03der2 == 0
            disp('Division by zero.');
            break;
        end
    
    x13=x03-(fx03der/fx03der2);
    x03=x13;
count3=count3+1;
end

x13_final=x13
fx13=exp(x13)-(x13^3)
