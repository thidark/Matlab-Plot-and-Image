clc; clear; close all
I=imread('BWimage.jpg');
figure, imshow(I);
Ibw=im2bw(I);
R=regionprops(Ibw,'PixeLlist','Area','Centroid');
n = input('Choose no(1-4):');
C=R(n).PixelList;
Cxy = R(n).Centroid;
X=C(:,1);
Y=C(:,2);
W=max(X)-min(X);
H=max(Y)-min(Y);

A=R(n).Area;

if W/H==1
	if A>3000
		text(Cxy(1),Cxy(2),'Large circle','Color','r')
	else
		text(Cxy(1),Cxy(2),'Small circle','Color','r')
	end
else
	if A>3000
		text(Cxy(1),Cxy(2),'Large rectangle','Color','r')
	else
		text(Cxy(1),Cxy(2),'Small rectangle','Color','r')
	end
end
