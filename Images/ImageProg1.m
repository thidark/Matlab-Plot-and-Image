clc,clear,close all
[fname,path]=uigetfile('*.jpg');
%I=imread('OrangeImage.jpg');
I=imread([path,fname]);
figure, imshow(I),title('Original Image');
text(50,250,'Orange','Fontsize',16);
