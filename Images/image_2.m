[filename,path]=uigetfile('*.jpg','Choose Image file');
I=imread([path,filename]);
figure,imshow(I),title('Original Image');
pause(2);
II=imresize(I,[100,100]);
figure,imshow(II),title('Resized Image');