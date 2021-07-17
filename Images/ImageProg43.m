clc, clear,close all
fs = 5000;
T = 1/fs;
L = 500;
t = (0:L-1)*T;
x= sin(2*pi*1550*t)+0.7*sin(2*pi*600*t+pi/4);
figure, plot(t,x),grid on;
sound(x,fs);