clc 
clear 
close all 
RGB = imread('peppers.png'); 

figure; 
imshow(RGB),title('Original Image'); 
[r, c, l]= size(RGB); 
newI = uint8(zeros(r,c,l)); 
for(ii=1:r) 
    for(jj=1:c) 
        if(RGB(ii,jj,1)>150 && RGB(ii,jj,2)<120 && RGB(ii,jj,3)<120) 
            newI(ii,jj,:) = RGB(ii,jj,:); 
        end 
    end 
end 
figure; 
imshow(newI), title('Red image'); 