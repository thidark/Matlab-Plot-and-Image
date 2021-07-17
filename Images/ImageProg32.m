clc,clear,close all;
figure 
I = imread('rice.png'); 
J = imopen(I,strel('disk',5)); 
K = imdivide(I,J); 
subplot(1,3,1) 
imshow(I) 
subplot(1,3,2) 
imshow(J) 
subplot(1,3,3) 
imshow(K,[]) 