%% main.m
clc
clear
x0 = [-2, 2]';
e = 10^(-4);
x = SGD(x0, @grad_rosen, @linesearch_secant, e);
disp(x)