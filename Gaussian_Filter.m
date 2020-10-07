clear
clc
% Run the code section by section (ctrl+enter)
%% (a)
% Printing Format
print_fmt = [repmat('%12.3d ', 1, 8), '%15.3d\n'];

% Gaussian with sigma=1
A = Gaussian(1,9);
fprintf('Gaussian Filter Kernel Sigma-1\n')
fprintf(print_fmt, A);

% Gaussian with sigma=3
B = Gaussian(3,9);
fprintf('\nGaussian Filter Kernel Sigma-3\n')
fprintf(print_fmt, B);

% Gaussian with sigma=20
C = Gaussian(20,9);
fprintf('\nGaussian Filter Kernel Sigma-20\n')
fprintf(print_fmt, C);

%% (b)(Takes 1-2mins to run)
% Read an image
I = imread('butterfly.jpg');

% Perform convolution with different Gaussian kernels
out_1 = convolution_handmade(I,A);
out_1 = uint8(out_1);
out_3 = convolution_handmade(I,B);
out_3 = uint8(out_3);
out_20 = convolution_handmade(I,C);
out_20 = uint8(out_20);

% Display images
figure();
imshow(I);
title('Original image');

figure();
imshow(out_1);
title('Sigma=1');

figure();
imshow(out_3);
title('Sigma=3');

figure();
imshow(out_20);
title('Sigma=20');

%% To display blurring on another image run this section (Takes 2-3mins to run)
% Read an image
I2 = imread('3_1.jpg');
I2 = imresize(I2,[NaN, 720]);

% Perform convolution with different Gaussian kernels
out_1_2 = convolution_handmade(I2,A);
out_1_2 = uint8(out_1_2);
out_3_2 = convolution_handmade(I2,B);
out_3_2 = uint8(out_3_2);
out_20_2 = convolution_handmade(I2,C);
out_20_2 = uint8(out_20_2);

% Display images
figure();
imshow(I2);
title('Original image');

figure();
imshow(out_1_2);
title('Sigma=1');

figure();
imshow(out_3_2);
title('Sigma=3');

figure();
imshow(out_20_2);
title('Sigma=20');

%% To display blurring on another image run this section (Takes 2-3mins to run)
% Read an image
I3 = imread('7_1.jpg');
I3 = imresize(I3,[NaN, 720]);

% Perform convolution with different Gaussian kernels
out_1_3= convolution_handmade(I3,A);
out_1_3 = uint8(out_1_3);
out_3_3 = convolution_handmade(I3,B);
out_3_3 = uint8(out_3_3);
out_20_3 = convolution_handmade(I3,C);
out_20_3 = uint8(out_20_3);

% Display images
figure();
imshow(I3);
title('Original image');

figure();
imshow(out_1_3);
title('Sigma=1');

figure();
imshow(out_3_3);
title('Sigma=3');

figure();
imshow(out_20_3);
title('Sigma=20');