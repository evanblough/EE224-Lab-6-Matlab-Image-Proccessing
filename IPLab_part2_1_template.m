clear all; 
close all; 

load('ip2_images'); 

%First Part
filt = ones(1,7)/7; % 7 point avg

x_row = filtrow(cicada,filt); % call the row filter 

%x_row_columna = filtrowcolumn(cicada,filt);
% call the row-column filter to get the filtered image


%7 point avg filter part
filt_h = ones(1,7)/7;
y_row=conv2(cicada ,filt_h,'same');
filt_v=ones(7,1)/7;
y_filt=conv2(y_row,filt_v,'same');

%3 point avg filter part
filt_h = ones(1,3)/3;
y_row=conv2(cicada ,filt_h,'same');
filt_v=ones(3,1)/3;
y_filt3=conv2(y_row,filt_v,'same');

%Wieghted Average Filter
filt_h = [1 2 4 2 1]/10;
y_row=conv2(cicada ,filt_h,'same');
filt_v=[1; 2; 4; 2; 1]/10;
y_filtW=conv2(y_row,filt_v,'same');

imagesc([cicada,y_filt; y_filt3,y_filtW]); %plot the figures
colormap(gray);
title('Filtered Images(Original, 7-point, 3-Point, Weighted)'), 
xlabel('The X Pixel of Graph'), 
ylabel('The Y Pixel of Graph'), 

