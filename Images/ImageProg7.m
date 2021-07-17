clc; clear; close all
I=imread('Jasmine1.jpg');
figure,
for k=1:5
imshow(I)
[y,x]=ginput(1);
y=round(y);
x=round(x);
PV=impixel(I,y,x);
R=PV(1) ; G=PV(2); B=PV(3);
if R>120 && G>120 && B>120
	hd=msgbox('It is Flower')
else
	hd=msgbox('It is Background')
end
uiwait(hd);
end
