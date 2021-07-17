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