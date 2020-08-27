clc;
clear all;
syms x y z;
fx = input('Enter the x-component of f(x,y,z)_fx: ');
fy = input('Enter the y-component of f(x,y,z)_fy: ');
fz = input('Enter the z-component of f(x,y,z)_fz: ');
f = [fx;fy;fz];
D = divergence(f);
C = curl(f);
P = int(fx,x)+int(subs(fy,x,0),y)+
int(subs(subs(fz,x,0),y,0),z);
if(D==0)
 disp('The force field is solenoidal')
else
 disp('The force field is not solenoidal')
end
if(C==0)
 disp('The force field is conservative')
else
 disp('The force field is not conservative')
end