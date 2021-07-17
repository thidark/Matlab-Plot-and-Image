clc 
clear 
close all 
%[f,p]=uigetfile('*.jpg'); 
%I=imread([p,f]); 
I=imread('peppers.png');
II=imresize(I,1); 
GI=rgb2gray(II); 
figure,imshow(II),title('Color image');
R=II(:,:,1);
G=II(:,:,2);
B=II(:,:,3);
figure,imshow(R),title('For Red');
figure,imshow(G),title('For Green');
figure,imshow(B),title('For Blue');

