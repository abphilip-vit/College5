clc
clear
syms x c
f = input('Enter the function: ');
I = input('Enter the interval [a,b]: ');
a = I(1);
b = I(2);
fa = subs(f,x,a);
fb = subs(f,x,b);

RHS = (fb-fa)/(b-a);
LHS = subs(diff(f,x),x,c);
d = solve(RHS-LHS,c);
k = 0

for i = 1:length(d)
 if d(i)>a && d(i)<b
 k = k + 1;
 rf(k) = d(i);
 end
end
r = double(r);
disp ('the constant value is: ');
disp (r); 