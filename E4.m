clc;
clear all;
syms r t z x y
f=r;
f1 = input("Enter the function f1: ");
f2 = input("Enter the function f2: ");
ezsurf(f1)
hold on
ezsurf(f2)
hold off
volume = int(int(int(f,z,r/2^(1/2),1-
r^2),r0,1/2^(1/2)),t,0,2*pi)