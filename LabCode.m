cicada=imread('cicada.jpg');%read in image
gray_cicada = rgb2gray(cicada); %convert to grayscale image
gray_cicada = double(gray_cicada);% convert image to a type suitable

row = cicada(70,:); %extracts 70th row
ave_filt=ones(1,7)/7; % calculate filter coefficients
filt_row = conv(row,ave_filt); %filter 70th row

column = cicada(:,110); %extracts 110th column
first_dif =[1 -1];
filt_column = conv(column, first_dif); 


subplot(221);
plot(row);
xlabel('row element');
ylabel('intensity');
title('original');
subplot(222);
plot(filt_row);
xlabel('row element');
ylabel('filtered intensity');
title('filter');

subplot(223);
plot(column);
xlabel('column element');
ylabel('intensity');
title('original');
subplot(224);
plot(filt_column);
xlabel('column element');
ylabel('filtered intensity');
title('filter');