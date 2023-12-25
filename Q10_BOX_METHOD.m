clc 
clear all

x=[1];
y=[1];
d=[2;2];
e=0.001;
ite=0;

while sqrt((d(1))^2+(d(2))^2)>e
    
    
    xb1=x(1);
    xb2=y(1);

    x1=xb1+d(1)/2;
    y1=xb2+d(2)/2;

    x2=xb1+d(1)/2;
    y2=xb2-d(2)/2;

    x3=xb1-d(1)/2;
    y3=xb2+d(2)/2;

    x4=xb1-d(1)/2;
    y4=xb2-d(2)/2;

    fx0 = ((xb1*xb1 + xb2 - 11)^2) + ((xb1 + xb2*xb2 - 7)^2);
    fx1 = ((x1*x1 + y1 - 11)^2) + ((x1 + y1*y1 - 7)^2);
    fx2 = ((x2*x2 + y2 - 11)^2) + ((x2 + y2*y2 - 7)^2);
    fx3 = ((x3*x3 + y3 - 11)^2) + ((x3 + y3*y3 - 7)^2);
    fx4 = ((x4*x4 + y4 - 11)^2) + ((x4 + y4*y4 - 7)^2);
            
        F =[fx0;fx1;fx2;fx3;fx4];
        min(F)

        if min(F)==fx0
           xbar=[x(1);y(1)];
           d=d/2;
        end
            

        if min(F)==fx1
               x=x1;
               y=y1;
        end   
        if min(F)==fx2
               x=x2;
               y=y2;
        end    
        if min(F)==fx3
               x=x3;
               y=y3;
        end   
        if min(F)==fx4
               x=x4;
               y=y4;
        end
        

 ite=ite+1
end

xbar