clc,clear,close all
II=imread('peppers.png');
figure, imshow(II);
CI = imcrop(II,[406 234 110 80]); % 100,50 to 70 width, 90 height
figure, imshow(CI);
