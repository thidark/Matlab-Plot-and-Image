clc
clear
close all
V=VideoReader('testv1.mov');
NF=V.NumberofFrames;
t=V.Duration;
FR=V.FrameRate;
figure;
for ii=1:100;
I=read(V,ii);
I=imresize(I,0.3);
figure, imshow(I);
pause(0.001);
end


