clc
clear all
f=[-80;-45];
intcon=[1,2];
A=[1,1;12,5];
b=[7;60];
x=intlinprog(f,intcon,A,b)