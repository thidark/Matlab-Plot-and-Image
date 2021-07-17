clc 
clear 
close all 
bw = imread('text.png'); 
bw2 = imcomplement(bw); 
figure 
subplot(1,2,1),imshow(bw), title('org image'); 
subplot(1,2,2),imshow(bw2), title('complement image'); 
 figure 
 I = imread('rice.png'); 
J = imcomplement(I); 
subplot(1,2,1), imshow(I), title('original image'); 
subplot(1,2,2), imshow(J), title('complement image'); 
  
figure 
I = imread('cameraman.tif'); 
H = fspecial('gaussian'); 
J = imfilter( I, H,'replicate'); 
subplot(1,3,1) 
imshow(I) 
subplot(1,3,2) 
imshow(J) 
K = imabsdiff(I,J); 
subplot(1,3,3) 
imshow(K,[]) % [] = scale data automatically 
  
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
 
figure 
 I = imread('rice.png');  
J = imdivide(I,2); 
subplot(1,2,1), imshow(I) 
subplot(1,2,2), imshow(J) 
 
 I = imread('moon.tif'); 
I16 = uint16(I); 
J = immultiply(I16,I16); 
figure 
subplot(1,2,1) 
imshow(I); 
subplot(1,2,2) 
imshow(J) 
I = imread('moon.tif'); 
J = immultiply(I,0.5); 
figure 
subplot(1,2,1), imshow(I) 
subplot(1,2,2), imshow(J) 
  
I = imread('rice.png'); 
J= imopen(I,strel('disk',5)); 
K = imsubtract(I,J);   
figure 
subplot(1,3,1) 
imshow(I) 
subplot(1,3,2) 
imshow(J) 
subplot(1,3,3) 
imshow(K,[]) 
 
I = imread('rice.png'); 
J = imsubtract(I,50); 
figure,  
subplot(1,2,1), 
imshow(I) 
subplot(1,2,2) 
imshow(J) 