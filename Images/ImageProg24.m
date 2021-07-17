clc 
clear  
close all 
 I = imread('cameraman.tif'); 
H = fspecial('motion',20,60); 
J = imfilter(I,H,'replicate'); 
figure; 
subplot(2,2,1);  
imshow(I); title('Original Image'); 
subplot(2,2,2);  
imshow(J); 
title('Motion Blurred Image'); 
 
H = fspecial('disk',10); 
J = imfilter(I,H,'replicate'); 
figure; 
imshow(J); title('Blurred Image'); 
  
H = fspecial('unsharp'); 
K = imfilter(I,H,'replicate'); 
figure; 
imshow(K); title('Sharpened Image'); 

H = fspecial('gaussian'); 
sharpened = imfilter(I,H,'replicate'); 
figure 
imshow(sharpened); title('Gaussian Image') 
  
H = fspecial('laplacian'); 
II= imfilter(I,H,'replicate'); 
figure 
imshow(II); title('Laplacian Image') 
  
H = fspecial('log'); 
II= imfilter(I,H,'replicate'); 
figure 
imshow(II); title('Log Image') 
  
H = fspecial('prewitt'); 
II= imfilter(I,H,'replicate'); 
figure; 
imshow(II); title('Prewitt Image') 
  
H = fspecial('Sobel'); 
II= imfilter(I,H,'replicate'); 
figure 
imshow(sharpened); title('Sobel Image') 
 
originalRGB = imread('peppers.png'); 
figure 
imshow(originalRGB) 
title('Original Image') 
  
h = fspecial('motion', 40, 90); 
filteredRGB = imfilter(originalRGB, h); 
figure 
imshow(filteredRGB) 
title('Filtered Image'); 