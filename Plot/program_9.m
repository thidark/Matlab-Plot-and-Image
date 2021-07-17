% line style 
% - -- -. :         

% color
% r g b m c y k w
% Marker style 
% > < ^ o x d s p h
clc
clear
close all
t=0:0.1:10*pi;
y1=cos(t);
figure,plot(t,y1);
hold on;
y2=3*sin(t).*exp(-0.1*t);
plot(t,y2,':g<');
grid on;
legend('Cosine wave','expontial');