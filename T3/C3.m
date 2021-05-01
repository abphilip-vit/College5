clear all
clc
syms x y a c s t real
f = input('Enter a Function: ');
n = input('Enter the Power of t: ');
A = laplace((t^n)*(f));
B = laplace(f);
for i = 1:n
 B = (diff(B))*((-1)^n);
 i = i+1;
end
if (A==B)
 disp('Multiplication-by-t property is verified')
else
 disp('Multiplication-by-t property is not verified')
end
