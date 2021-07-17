clc 
clear 
close all 
% [f p]=uigetfile('*.png');
% RGB=imread([p,f]);
RGB = imread('flower1.png'); 
figure; 
imshow(RGB),title('Original Image'); 
 
GI = rgb2gray(RGB); 
figure, imshow(GI), title('Gray image'); 
bw = ~im2bw(GI, graythresh(GI)); 
figure; 
imshow(bw) 
title('BW image'); 

stats=regionprops(bw,'Area','BoundingBox');
A=stats(1).Area;
BB=stats(1).BoundingBox;
st=sprintf('Area is %.0f',A);
figure,imshow(RGB);
hold on;
rectangle('position',BB,'Edgecolor','g','Linewidth',2);
text(150,150,st);