clear all; 
close all; 
clc;

load('ip2_images'); 

wa = [-1,-1,-1;2,2,2;-1,-1,-1]; % filter (a
wb = [-1,-1,2;-1,2,-1;2,-1,-1]; % filter (b
wc = [-1,2,-1;-1,2,-1;-1,2,-1]; % filter (c
wd = [2,-1,-1;-1,2,-1;-1,-1,2]; % filter (d

y_a=conv2(ghopper,wa);
y_a=round(y_a);
subplot(3,3,1);
imagesc(y_a);
colormap('gray(256)');
title('The Image Ghopper in Edge Detection A'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),

y_b=conv2(ghopper,wb);
y_b=round(y_b);
subplot(3,3,2);
imagesc(y_b);
colormap('gray(256)');
title('The Image Ghopper in Edge Detection B'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),

y_c=conv2(ghopper,wc);
y_c=round(y_c);
subplot(3,3,3);
imagesc(y_c);
colormap('gray(256)');
title('The Image Ghopper in Edge Detection C'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),





y_a=conv2(ghopper,wd);
y_a=round(y_a);
subplot(3,3,4);
imagesc(y_a);
colormap('gray(256)');
title('The Image Ghopper in Edge Detection D'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),

subplot(3,3,5);
imagesc(ghopper);
title('The Image Ghopper'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'),
