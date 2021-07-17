clc
[f p]=uigetfile('*.jpg');
I = imread([p f]);
figure,
imshow(I);
if ndims(I)==3
gray_image=rgb2gray(I);
else
gray_image = I;
end
figure, imshow(gray_image)
%bw_image = imbinarize(gray_image);
% Convert to BW
threshold = graythresh(I);
bw_image=im2bw(I,threshold);

figure,imshow(bw_image)
title('black and white image');
se = strel('disk',3);
I1 = imerode(bw_image,se);
figure, imshow(I1), title('Eroded image');
I2 = imdilate(bw_image,se);
figure, imshow(I2), title('Dilated image');
I3 = imopen(bw_image,se);
figure, imshow(I3), title('Opened image');
I4 = imclose(bw_image,se);
figure, imshow(I4), title('Closed image');
I5 = imfill(bw_image,'holes');
figure, imshow(I5), title('Fill image');