

clc ; clear all; close all;

I=imread('22032.jpg');


figure, imshow(I);
title('Artist One');
image=I;

    %Split into RGB Channels
    Red = image(:,:,1);
    Green = image(:,:,2);
    Blue = image(:,:,3);
    %Get histValues for each channel
    [yRed, x] = imhist(Red);
    [yGreen, x] = imhist(Green);
    [yBlue, x] = imhist(Blue);
    %Plot them together in one plot
    plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');
    
    figure, imhist(Red);
    
    