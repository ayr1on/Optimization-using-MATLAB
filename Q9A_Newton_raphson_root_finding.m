clc
clear all

x01=0;
fx01=exp(x01)-(x01^3);
fx01der=exp(x01)-(3*(x01)^2);
x11=x01-(fx01/fx01der);
e=0.001;
count1=1;
while abs(fx01)>=e
        fx01=exp(x01)-(x01^3);
        fx01der=exp(x01)-(3*(x01)^2);
        
        if fx01der == 0
            disp('Division by zero.');
            break;
        end
    
    x11=x01-(fx01/fx01der);
    x01=x11;
count1=count1+1;
end

x11_final=x11
fx11=exp(x11)-(x11^3)


x02=1.5;
fx02=exp(x02)-(x02^3);
fx02der=exp(x02)-(3*(x02)^2);
x12=x02-(fx02/fx02der);
count2=1;
e=0.001;
while abs(fx02)>=e
        fx02=exp(x02)-(x02^3);
        fx02der=exp(x02)-(3*(x02)^2);
        
        if fx02der == 0
            disp('Division by zero.');
            break;
        end
    
    x12=x02-(fx02/fx02der);
    x02=x12;
count2=count2+1;
end

x12_final=x12
fx12=exp(x12)-(x12^3)