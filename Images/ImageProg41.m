clc; clear; close all
Ig=imread('pout.tif');
Ign=medfilt2(Ig);
figure
imshow(Ig);
figure
imshow(Ign)