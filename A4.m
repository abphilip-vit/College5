clc
clear
syms t;
t = linspace(-3*3.14, 3*3.14);
y1 = 2.^t + 2.^-t;
y2 = 2.^t - 2.^-t;
plot (t,y1)
hold on
plot (t,y2)
hold off