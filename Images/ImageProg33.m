clc
clear
close all
[f p] = uigetfile('*.jpg');
I = imread([p f]);
figure, imshow(I)
GI = rgb2gray(I);
BW = edge(GI,'sobel');
figure, imshow(BW);
[H,T,R] = hough(BW);
P = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
lines = houghlines(BW,T,R,P,'FillGap',3,'MinLength',5);
figure;
imshow(I), hold on
max_len = 0;
KK= length(lines);
for k = 1:KK
xy = [lines(k).point1; lines(k).point2];
plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','r');
plot(xy(1,1),xy(1,2),'o','Markersize',10,'LineWidth',2,'Color','yellow');
plot(xy(2,1),xy(2,2),'o','Markersize',10,'LineWidth',2,'Color','red');
% Determine the endpoints of the longest line segment
len = norm(lines(k).point1 - lines(k).point2);
if ( len > max_len)
max_len = len;
xy_long = xy;
end
pause(1)
end
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan');