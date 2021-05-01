clc;
clear all;
syms x y z;
g = input('Enter the function g(x,y,z): ');
x0 = input('Enter the value of x0: ');
y0 = input('Enter the value of y0: ');
z0 = input('Enter the value of z0: ');
G = gradient(g)
Gp = subs(subs(subs(G,x,x0),y,y0),z,z0) 