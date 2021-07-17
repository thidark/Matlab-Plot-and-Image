I = imread('rice.png'); 
J = imread('cameraman.tif'); 
K = imadd(I,J,'uint16'); 
figure; 
subplot(1,3,1), imshow(I,[]),  title('Img1'); 
subplot(1,3,2), imshow(J,[]),  title('Img2'); 
subplot(1,3,3), imshow(uint8(K),[]),  title('Added Img'); 