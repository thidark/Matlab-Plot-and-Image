clc 
clear 
close all 
t=0:10:720; 
y1=sind(t); 
y2=0.5*cosd(t); 
figure; 
plot(t,y1,':bd'); 
hold on; 
pause(1); 
plot(t,y2,'-rs'); 
grid on; 
legend('sine wave','cos wave'); 