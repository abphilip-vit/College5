clc;
clear all;
f = input("Enter the function: ");
fxx = diff(diff(f,x),x)
fyy = diff(diff(f,y),y)
fzz = diff(diff(f,z),z)
H = fxx + fyy + fzz;
if (H==0)
 disp("Function is Harmonic")
else
 disp("Function is not Harmonic") 