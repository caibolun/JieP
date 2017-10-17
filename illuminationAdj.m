% The illumination contains the lightness information, so removing or 
% adjusting the illumination can generate visually pleasing results 
% for dark/backlit images. Therefore, the Gamma correction operation 
% is adopted to modify the estimated illumination.
clc;
clear;
close all;

gamma=2.2;
im=im2double(imread('./dataset/nighttime.bmp'));
[I, R] = jiep(im);
hsv = rgb2hsv(im);
I_gamma = I.^(1/gamma);
S_gamma = R .* I_gamma;
hsv(:,:,3) = S_gamma;
enhance = hsv2rgb(hsv);
subplot(1,2,1); imshow(im); title('Input');
subplot(1,2,2); imshow(enhance); title('Illumination Adjustment');