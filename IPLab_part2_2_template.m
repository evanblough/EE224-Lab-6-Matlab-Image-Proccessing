clear all; 
close all; 

load('ip2_images'); 

filta = ones(1,3)/3; % 3 point averaging filter
filtb = ones(1,7)/7; % 7 point averaging filter

ghopper_g_3=conv2(ghopper_g,filta,'same'); % call conv2 to process original figure "ghopper_g" by using the first filter
ghopper_g_7=conv2(ghopper_g,filtb,'same'); % call conv2 to process original figure "ghopper_g" by using the second filter


filta = ones(1,3)/3; % 3 point averaging filter
filtb = ones(1,7)/7; % 7 point averaging filter

ghopper_sp_3=conv2(ghopper_sp,filta,'same'); % call conv2 to process original figure "ghopper_g" by using the first filter
ghopper_sp_7=conv2(ghopper_sp,filtb,'same'); % call conv2 to process original figure "ghopper_g" by using the second filter

subplot(2,1,1);
imagesc([ghopper_g,ghopper_g_3; ghopper_g_7,zeros(306,432)]); %plot the figures
colormap(gray);
title('The Image Ghopper in Grayscale Gaussian'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 

subplot(2,1,2);
imagesc([ghopper_sp,ghopper_sp_3; ghopper_sp_7,zeros(306,432)]); %plot the figures
colormap(gray);
title('The Image Ghopper in Grayscale S&P'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 