clc,clear,close all
t=0:20:360;
y1=sind(t);
figure;
barh(t,y1,'r');
pause(1);
figure, bar(t,y1,0.5);