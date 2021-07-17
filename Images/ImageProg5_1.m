clear
close all
I=imread('ColorsImage.jpg');
figure;
for k=1:3
 imshow(I);
[x y] = ginput(1);
PV=impixel(I,x,y);
R=PV(1) ; G=PV(2); B=PV(3);
if R<120 && G>120 && B<100
     hd = msgbox('It is Green');
elseif R>120 && G<120 && B<100
     hd = msgbox('It is Red');
elseif R<120 && G<120 && B>100
     hd = msgbox('It is BLUE');
elseif R>200 && G>200 && B<100
     hd = msgbox('It is Yellow');
end
uiwait(hd);
end