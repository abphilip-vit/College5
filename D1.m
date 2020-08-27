clear all
clc
syms x y a c s t real
f = input('Enter the function: ');
fx = diff(f,x);
fy = diff(f,y);
[s,t] = solve(fx,fy);
fxx = diff(fx,x);
fyy = diff(fy,y);
fxy = diff(fx,y);
for i = 1:numel(s)
 faxx = subs(fxx,x,s(i));
 fayy = subs(fyy,x,s(i));
 faxy = subs(fxy,x,s(i));
 fcx = subs(faxx,y,t(i));
 fcy = subs(fayy,y,t(i));
 fcxy = subs(faxy,y,t(i));

 D = (fcx*fcy - (fcxy)^2);
 ezsurf(f)
 hold on
 plot(s,t,'or')
 if(D>0)
 if(fcx>0)
 disp('Minimum')
 else
 disp('Maximum')
 end
 else
 if(D<0)
 disp('Saddle Point')
 else
 disp('Further Investigation Needed')
 end
 end
end
hold off