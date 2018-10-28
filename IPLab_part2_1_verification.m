clear all; 
close all; 

load('ip2_images'); 

filt_h =ones(1,7)/7;
y_row=conv2(cicada,filt_h,'same');
filt_v=ones(7,1)/7;
y_filt=conv2(y_row,filt_v,'same');


show_img(y_filt,1,1); 
title('The Graph of Filtered Cicade'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 