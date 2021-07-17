[filename,path]=uigetfile('*.jpg','Choose Image file');
I=imread([path,filename]);
figure,imshow(I),title('Original Image');
pause(2);
II=imresize(I,[100,100]);
figure,imshow(II),title('Resized Image');
GI=rgb2gray(II);
figure,imshow(GI),title('Gray Image');
BW=im2bw(GI,0.3); % >0.3 white, <0.3 black
figure,imshow(BW),title('BW Image');