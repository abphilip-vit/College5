clc
clear
n = input (' Enter N: ');
sum = 0;
for i = 1:n
 sum = sum + (1/i);
end
disp (sum);