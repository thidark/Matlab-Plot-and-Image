% I3=imadd(I1,I2);
% I4=imadd(I1,100);
% I5=imsubtract(I1,I2);
% I6=imsubtract(I1,20);
% I7-immutiply(I1,I2);
% I8=immultiply(I1,2);
% I9=imdivide(I1,I2);
% I10=imdivide(I1,0.5);
% II=imabsdiff(I1,I2);

clc 
clear 
close all 
[f, p] = uigetfile('*.jpg'); 
img = imread([p f]); 
%img=imread('peppers.png');
figure, imshow(img); 
r=img(:,:,1);  
g=img(:,:,2);  
b=img(:,:,3); 
grayI = rgb2gray(img); 
diff=imsubtract(g,grayI); 
th = 0.25; 
 bw=im2bw(diff,th); 
  
 rm=immultiply(bw,r);   
 gm=immultiply(bw,g);  
 bm=immultiply(bw,b); 
 newI=cat(3,rm,gm,bm); 
 figure 
 imshow(newI); 