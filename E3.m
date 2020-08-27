clc;
clear all;
syms x y z
f = input("Enter the function: ");
x1 = input("Enter the lower limit of x: ");
x2 = input("Enter the upper limit of x: ");
y1 = input("Enter the lower limit of y: ");
y2 = input("Enter the upper limit of y: ");
z1 = input("Enter the lower limit of z: ");
z2 = input("Enter the upper limit of z: ");
D = int(int(int(f,y,y1,y2),x,x1,x2),z,z1,z2)