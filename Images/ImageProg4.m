clc, clear, close all
V=videoinput('winvideo',1,'YUY2_640x480');
preview(V),
pause(2)
V.ReturnedColorspace='rgb';Capture image
I=getsnapshot(V);
figure; imshow(I)
