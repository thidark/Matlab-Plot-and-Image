clc 
clear  
close all 
I = imread('pout.tif'); 
J = imadjust(I); 
figure 
subplot(1,3,1), imshow(I), title('Original image'); 
subplot(1,3,2), imshow(J), title('Adjusted Image'); 
  
K = imadjust(I,[0.3 0.7],[]); 
subplot(1,3,3), imshow(K), title('Adjusted Image 2') 
 
RGB1 = imread('football.jpg'); 
RGB2 = imadjust(RGB1,[.2 .3 0; .6 .7 1],[]); 
figure; 
subplot(1,2,1), imshow(RGB1), title('Original image'); 
 
subplot(1,2,2),  imshow(RGB2), title('adjusted Image') 
  
I = imread('pout.tif'); 
figure; 
subplot(1,2,1), imshow(I), title('Original image'); 
subplot(1,2,2), imhist(I), title('Histogram Image'); 
  
I = imread('rice.png'); 
J = imread('cameraman.tif'); 
K = imadd(I,J,'uint16'); 
figure; 
subplot(1,3,1), imshow(I,[]),  title('Img1'); 
subplot(1,3,2), imshow(J,[]),  title('Img2'); 
subplot(1,3,3), imshow(K,[]),  title('Added Img'); 
 
I = imread('rice.png'); 
J = imadd(I,100); 
figure 
subplot(1,2,1), imshow(I) , title('original'); 
subplot(1,2,2), imshow(J), title('added image'); 