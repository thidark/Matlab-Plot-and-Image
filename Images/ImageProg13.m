clc 
clear 
close all 
B=zeros(100,100); 
W=ones(100,100); 
I=[B,W,B,W;W,B,W,B;B,W,B,W;W,B,W,B]; 
II=logical(I); 
figure; 
imshow(II); 
I1=II(201:400,101:400); 
figure; 
imshow(I1); 