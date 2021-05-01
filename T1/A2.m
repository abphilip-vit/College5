clc
clear
n = input ('Order of your Square Matrix is? ');
for i=1:n
 for j=1:n
 A (i,j )= input ('Element: ');
 end
end
A = reshape (A,n,n)
disp (' Determinant: ');
disp (det(A))
disp (' Trace: ');
disp (trace(A))