clc
clear
syms x y h;
f = input ('Enter the function: ');
x0 = input ('Enter the x coordinate of the point a: ');
ezplot (f)
hold on
y0 = subs (f,x0);
L = limit (f,x,x0,'left');
R = limit (f,x,x0,'right');
if L == R && L == y0
 disp ('Function is continuous… ');
 fRHD = limit ((subs(f,x0 + h) - subs(f,x0))/h,h,0);
 fLHD = limit ((subs(f,x0 - h) - subs(f,x0))/-h,h,0);
 if fRHD == fLHD
 disp ('Function is differentiable… ');
 m = subs (diff(f),x,x0);
 tangent = y0 + m*(x-x0);
 ezplot (tangent)
 hold off
 else
 disp ('Function is not differentiable… ');
 end
end