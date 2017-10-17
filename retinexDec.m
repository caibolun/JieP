% Retinex theory is a color perception model of human vision and is
% used to remove illumination effects in images. The primary goal 
% of Retinex is to decompose the observed images into illumination
% and reflectance. 

clc;
clear;
close all;

im=im2double(imread('statue.bmp'));

[I, R] = jiep(im);
hsv = rgb2hsv(im);
subplot(2,2,2); imshow(I);  title('Illumination (Gray)');
hsv(:,:,3) = I;
subplot(2,2,3); imshow(hsv2rgb(hsv));  title('Illumination (RGB)');
hsv(:,:,3) = R;
subplot(2,2,4); imshow(hsv2rgb(hsv));  title('Reflectance');
subplot(2,2,1); imshow(im);  title('Input');