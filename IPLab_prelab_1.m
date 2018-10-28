clear all; 
close all; 
clc;

load('ip2_images'); 

row = cicada(50,:); %Extracts 50th row 
ave_filt = ones(1,7)/7; %Calculate filter coefficients 
filt_row = conv(row,ave_filt); %Filter 50th row 

subplot(2,1,1); % plot the unfiltered signals 
plot(row), 
title('Extract The 50th Row of The Image'), 
xlabel('Row Element'), 
ylabel('Intensity'), 

subplot(2,1,2); %plot the filtered signals 
plot(filt_row), 
title('Filter Extract The 50th Row of The Image')
xlabel('Row Element'), 
ylabel('Filtered Intensity'),