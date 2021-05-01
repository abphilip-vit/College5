clear all
clc
syms x y a c s t real
f = input('Enter a Function: ');
n = input('Enter value in exponential function: ');
A = laplace(exp(a*t)*(f))
F = laplace(f)
B = subs(F,s,s-a)
if (A==B)
 disp('First Shifting property is verified');
else
 disp('First Shifting property is not verified');
end 
