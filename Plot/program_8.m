% line style 
% - -- -. :         

% color
% r g b m c y k w
% Marker style 
% > < ^ o x d s p h

clc 
clear 
close all 
x=[1 2 3 4 5]; 
y=[3 4 1 6 8]; 
figure, plot(x,y,':mh','Linewidth',2,'Markersize',10,'Markerfacecolor','g','Markeredgecolor','k'); 
grid on; 
pause(1); 
axis([0 6 0 9]) 
pause(1); 
title('2 D plot'); 
xlabel('time'); 
ylabel('Magnitude'); 
