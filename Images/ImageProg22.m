clc 
clear 
close all 
RGB = imread('pillsetc.png'); 
figure; 
imshow(RGB),title('Original Image'); 
 
GI = rgb2gray(RGB); 
figure, imshow(GI), title('Gray image'); 
bw = im2bw(GI, graythresh(GI)); 
figure; 
imshow(bw) 
title('BW image'); 

bw1 = bwareaopen(bw,30); 
figure, imshow(bw1); title('Bw area open image'); 

se = strel('disk',2); 
bw2 = imclose(bw1,se); 
figure, imshow(bw2); title('closed image'); 

bw3 = imfill(bw2,'holes'); 
figure, imshow(bw3); title('filled image'); 

[B,L] = bwboundaries(bw3,'noholes'); 
I = label2rgb(L, @hsv, [.5 .5 .5]); 
figure, imshow(I); 

hold on 
 
len = length(B); 
for k = 1:len 
  boundary = B{k}; 
  x = boundary(:,2); 
  y = boundary(:,1); 
  plot(x, y, 'y', 'LineWidth', 2); 
pause(1); 
end 


stats = regionprops(L,'Area','Centroid','Perimeter', 'MajoraxisLength','MinoraxisLength'); 
 
for k = 1:len 
  perimeter = stats(k).Perimeter; 
  area = stats(k).Area; 
  majorLen = stats(k).MajorAxisLength; 
  minorLen = stats(k).MinorAxisLength; 
  roundness = 4*pi*area/perimeter^2; 
  fprintf('Roundness %2.2f \n',roundness); 
  fprintf('Major Axis Length = %2.2f\n',majorLen); 
  fprintf('Minor Axis Length = %2.2f\n',minorLen); 
  
  st1=sprintf('%0.2f \n',roundness); 
  st2=sprintf('%0.0f\n',majorLen); 
  st3=sprintf('%0.02f\n',minorLen);
  
  disp('------------------');
  centroid = stats(k).Centroid; 
  xx = centroid(1); 
  yy = centroid(2); 
  
  text(xx,yy+20,st1);
  text(xx,yy+40,st2);
  text(xx,yy+60,st2);
  
  plot(xx,yy,'ko','Markerfacecolor','b'); 
 pause(1); 
end 
