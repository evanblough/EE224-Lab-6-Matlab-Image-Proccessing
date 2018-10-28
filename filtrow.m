function y_row = filtrow(image,filt)

[row,column] = size(image); 

for y = 1 : row
    y_row(y,:) = conv(image(y,:),filt); 
    y_row(y,:) = round(y_row(y,:)); 
end

length_filt = length(filt); %find filter half-length 
half_len = floor(length_filt/2); 
y_row = y_row(:,half_len+1:column+half_len); %extract the c pixels in the center of the rows