clear all
clc
syms x y a c s t real
f = input('Enter a function: ');
fx = diff(f,x);
fy = diff(f,y);
[s] = solve(fx,fy);
fxx = diff(fx,x);
ezplot(f)
hold on
for i = 1:numel(s)
 fax = subs(fxx,x,s(i))
 fa(i) = subs(f,x,s(i));
 hold on
 if (fax==0)
 disp('Point of Inflection')
 else
 if (fax>0)
 disp('Minimum');
 else
 disp('Maximum');
 end
 end
 disp('Function value at Critical Point')
 disp(fa(i))
end
for i = 1:numel(s)
 plot(s(i),fa(i),'-or')
end
hold off
hold off