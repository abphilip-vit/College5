clc
clear
syms x;
fplot(@(x) x.^2-1,[-100 0],'b')
hold on
fplot(@(x) x,[0 1],'b')
fplot(@(x) 2*x.^2+1,[1 100],'b')
hold off
grid on