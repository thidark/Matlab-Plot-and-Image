clc, clear; close all;
I=imread('color.jpg');
figure (1);
imshow(I);
pause(2);
II=imresize(I,0.5);
figure(2);
imshow(II);