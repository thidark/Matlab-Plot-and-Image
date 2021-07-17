clc;clear;close all
Ig=imread('pout.tif');
%Ig=rgb2gray(I);
Imin=min(Ig(:));
Imin=double(Imin)/255;
Imax=max(Ig(:));
Imax=double(Imax)/255;
Ign=imadjust(Ig,[Imin Imax],[0, 1]);
figure
subplot(2,2,1);subimage(Ig);
subplot(2,2,2);imhist(Ig);
subplot(2,2,3);subimage(Ign);
subplot(2,2,4);imhist(Ign);