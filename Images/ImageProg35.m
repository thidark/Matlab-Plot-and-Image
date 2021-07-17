clc 
clear 
close all ;
[file path] = uigetfile('*.*'); 
I=imread([path file]); 
I = rgb2gray(I); 
figure 
subplot(2,2,1);imshow(I);title('original image'); 
I1=imnoise(I,'salt & pepper',0.1); 
subplot(2,2,2);imshow(I1);title('salt and pepper noisy image'); 
 k=medfilt2(I1); 
subplot(2,2,3);imshow(k);title('median filtered image'); 
 h = fspecial('average', 3); 
 F=imfilter(I1,h); 
 subplot(2,2,4); imshow(F);title('Averaging filtered image'); 
% ------------------------------------------------------------------- 
figure 
subplot(2,2,1);imshow(I);title('original image'); 
k1=imnoise(I,'poisson'); 
subplot(2,2,2);imshow(k1);title('poisson noisy image'); 
k2=medfilt2(k1); 
subplot(2,2,3);imshow(k2);title('median filtered image'); 
h = fspecial('average', 3); 
F=imfilter(k1,h); 
subplot(2,2,4); imshow(F);title('mean filtered image'); 
%-------------------------------------------------------------------- 
J1=imnoise(I,'gaussian',0.1); 
 figure   
 subplot (2,2,1);imshow(I);title('original image'); 
 subplot(2,2,2);imshow(J1);title(' image with gaussian noise'); 
 J2=medfilt2(J1); 
 subplot(2,2,3);imshow(J2);title('median filtered image'); 
 h = fspecial('average', 3); 
 J3=imfilter(J1,h); 
 subplot(2,2,4); 
 imshow(J3);title('mean filtered image'); 