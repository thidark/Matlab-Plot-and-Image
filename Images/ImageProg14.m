clc 
clear 
close all 
B=zeros(200,200); 
W=ones(200,200)*128; 
I = cat(3, W,B,B); 
I=uint8(I); 
figure; 
imshow(I); 
II = cat(3, B,W,B); 
I=uint8(II); 
figure; 
% imshow(I); 
I1 = cat(3, B,B,W); 
I=uint8(I1); 
figure; 
imshow(I); 
I2 = cat(3, W,W,B); 
I=uint8(I2); 
figure; 
imshow(I); 
I3 = cat(3, W,B,W); 
I=uint8(I3); 
figure; 
imshow(I); 
I4 = cat(3, B,B,B); 
I=uint8(I4); 
figure; 
imshow(I);
I5 = cat(3, W,W,W); 
I=uint8(I5); 
figure; 
imshow(I); 

