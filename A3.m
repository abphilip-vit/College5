clc
clear
n = input ('Order of your Square Matrix is? ');
for i=1:n
 for j=1:n
 A(i,j) = input('Element: ');
 end
end
A = reshape(A,n,n)
b = det(A);
if b==0
 disp ('Inverse does not exist');
else
 disp ('Inverse: ');
 disp (inv(A));
end 
