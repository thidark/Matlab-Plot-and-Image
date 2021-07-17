clc; clear; close all
I=imread('digits.jpg');
figure, imshow(I);
Ibw=im2bw(I);
R=regionprops(Ibw,'Centroid');
n=length(R);
figure, imshow(Ibw)
hold on

for i=1:n
	C=R(i).Centroid;
	plot(C(1),C(2),'ro','MarkerSize',15,'Markerfacecolor','y')
    pause(1);
end
