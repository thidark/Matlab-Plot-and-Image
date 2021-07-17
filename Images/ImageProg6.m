clc,clear, close all
I=imread('digits.jpg');
figure,
for k=1:3
imshow(I)
Ibw=im2bw(I);
[y,x]=ginput(1);
y=round(y);
x=round(x);
PV=Ibw(x,y); % x value 67 column position
if all(PV==0)
	hd=msgbox('It is black');
else
    hd=msgbox('It is white');
end
uiwait(hd);
end