clc;
clear all;
syms x y;
f = input("Enter the function: ");
x1 = input("Enter the lower limit of x:");
x2 = input("Enter the upper limit of x:");
y1 = input("Enter the Lower limit of y: ");
y2 = input("enter the Upper limit of y: ")
D = int(int(f,x,x1,x2),y,y1,y2)