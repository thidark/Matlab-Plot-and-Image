clc 
clear 
close all 
I1=imread('A.jpg'); 
I2=imread('B.jpg'); 
I3=imread('C.jpg'); 
I4=imread('D.jpg'); 
I5=imread('E.jpg'); 
figure; 
subplot(3,2,1),imshow(I1); 
subplot(3,2,2),imshow(I2); 
subplot(3,1,2),imshow(I3); 
subplot(3,2,5),imshow(I4); 
subplot(3,2,6),imshow(I5); 