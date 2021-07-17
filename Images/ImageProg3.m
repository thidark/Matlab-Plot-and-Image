clc, clear, close all
W=webcam;
figure;
preview(W)
pause(2);
I=snapshot(W);
figure, imshow(I)
clear W