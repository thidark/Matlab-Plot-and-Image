clc,clear,close all
t=0:10:360;
y1=sind(t);
figure;
bar(t,y1,'r');
pause(1);
figure, stairs(t,y1,'y','Linewidth',2);
pause(1);
A=[50 70 80 ;
85 90 30;
70 65 40;
85 70 60;
50 30 25];
figure, bar(A);
