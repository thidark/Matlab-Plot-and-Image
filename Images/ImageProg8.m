clc; clear; close all
I=imread('circle_colors.jpg');
figure, imshow(I);
[x, y] = ginput(1);
PV=impixel(I,x,y);
R=PV(1) ; G=PV(2); B=PV(3);
if  R>150    &&  G<100    &&   B <100
	disp('It is Red')
elseif  R<100    &&  G>150    &&   B <100
	disp('It is Green')
elseif  R>150 &&  G>150 && B <100
	disp('It is Yellow')
elseif  R<100 &&  G<100 && B >150
	disp('It is Blue')
else 
	disp('It is White')
end
