clc; clear; close all
I=imread('curveImg.jpg');
figure, imshow(I);
pause(1);
Ibw=im2bw(I);[m,n]=size(Ibw);
k=0;
for i=1:m
    for j=1:n
	if Ibw(i,j)==1
		k=k+1;
		r(k)=i;
		c(k)=j;
	end
    end
end
figure;
imshow(Ibw);
hold on
plot(c,r,'bo')
