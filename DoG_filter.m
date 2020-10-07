clear
clc
% Run the code section by section (ctrl+enter)
%% (a)
% DoG kernel
kernel = DoG(2.3,1.5);

% Printing Format
print_fmt = [repmat('%9.4f ', 1, 10), '%9.4f\n'];

fprintf('DoG filter with sigma1=2.3 and sigma2=1.5\n')
fprintf(print_fmt, kernel);

%% (b)
% Read Image
I = imread('butterfly.jpg');
I = rgb2gray(I);

% Convolution with DoG filter
out = convolution_handmade(I, kernel);

%% (c)
% Detect zero crossings and show output
binary_out = zerocrossing(out);
binary_out = uint8(binary_out);

figure();
imshow(I)
title('Original Image')
figure();
imshow(binary_out);
title('Zero Crossings after DoG filtering')

%% DoG filtering on another image(Takes 4-5 mins to run)
% Read Image
I_1 = imread('3_1.jpg');
I_1 = rgb2gray(I_1);

% Convolution with DoG filter
out_1 = convolution_handmade(I_1, kernel);

%%
% Detect zero crossings and show output
binary_out_1 = zerocrossing(out_1);
binary_out_1 = uint8(binary_out_1);
figure()
imshow(I_1);
title('Original Image')

figure()
imshow(binary_out_1);
title('Zero Crossings after DoG filtering')

% Saved in original resolution(See this saved picture for better result)
imwrite(binary_out_1,'Laptop_zerocross.jpg');

%% DoG filtering on another image(Takes 4-5 mins to run)
% Read Image
I_2 = imread('7_1.jpg');
I_2 = rgb2gray(I_2);

% Convolution with DoG filter
out_2 = convolution_handmade(I_2, kernel);

%%
% Detect zero crossings and show output
binary_out_2 = zerocrossing(out_2);
binary_out_2 = uint8(binary_out_2);

figure()
imshow(I_2);
title('Original Image')

figure()
imshow(binary_out_2);
title('Zero Crossings after DoG filtering')

% Saved in original resolution(See this saved picture for better result)
imwrite(binary_out_2,'Chairbooks_zerocross.jpg');
