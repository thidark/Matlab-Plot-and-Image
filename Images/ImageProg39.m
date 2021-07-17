clc; clear; close all
Ig=imread('pout.tif');
%Ig=rgb2gray(I);
Ign=histeq(Ig);
figure
subplot(2,2,1); subimage(Ig);
subplot(2,2,2); imhist(Ig)
subplot(2,2,3); subimage(Ign);
subplot(2,2,4); imhist(Ign);