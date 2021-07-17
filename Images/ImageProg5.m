clc
clear
close all
I=imread('ColorsImage.jpg');
figure, imshow(I)
PV=impixel(I,350,50);
R=PV(1) ; G=PV(2); B=PV(3);
if R<120 && G>120 && B<100
     disp('It is Green')
end
if R<120 && G>120 && B<100
     disp('It is Green');

elseif R>120 && G<120 && B<100
     disp('It is Red');
     
elseif R<120 && G<120 && B>100
    disp('It is Blue');
end
