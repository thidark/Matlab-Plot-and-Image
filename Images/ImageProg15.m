clc 
clear 
close all 
%[f,p]=uigetfile('*.jpg'); 
%I=imread([p,f]); 
I=imread('peppers.png');
II=imresize(I,1); 
GI=rgb2gray(II); 

figure,imshow(II),title('Color image'); 
figure,imshow(GI),title('Gray image'); 
  
[r,c,l]=size(II); 
r2=round(r/2); 
c2=round(c/2); 
I1=II(1:r2,1:c2,:); % : for color image, 
I2=II(1:r2,c2+1:c,:); 
I3=II(r2+1:r,1:c2,:); 
I4=II(r2+1:r,c2+1:c,:); 
figure; imshow(I1);
figure; imshow(I2);
figure; imshow(I3);
figure; imshow(I4);