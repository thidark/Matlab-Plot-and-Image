
clc
clear
close all
[f, p] = uigetfile('*.jpg');
I=imread([p,f]);
figure;
for k=1:5
 imshow(I);
[x y] = ginput(1);
x = round(x);
y = round(y);
%PV=impixel(I,x,y);
PV = I(y,x,:);
R=PV(1) ; G=PV(2); B=PV(3);
if (R-G)>50 && (R-B)>50
     hd = msgbox('It is RED');
elseif (G-R)>50 && (G-B)>50
     hd = msgbox('It is GREEN');
elseif (B-R)>50 && (B-G)>50
     hd = msgbox('It is BLUE');
else
     hd = msgbox('Cannot define');
end
uiwait(hd);
end