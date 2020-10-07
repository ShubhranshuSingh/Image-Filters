MATLAB version 2014b (System: Intel Core i5-7200U @ 2.5GHz, 64-bit, 8 GB RAM) 

Guassian_Filter.m
- The first section will print the values of gaussian kernel with different standard deviations(1,3 and 20).
- Next section convolves each image('butterfly.jpg') with the kernel made above and the output is shown.
- If you want to perform gaussian blur on other images, you can run the next two sections(on resized images '3_1.jpg' and '7_1.jpg')

DoG_filter.m
- The first section will print the values of Difference of Gaussian kernel.
- The next section will convolve the kernel made above with a gray-scale image('butterfly.jpg') and output is stored in a variable.
- Next section will detect zero crossings of the filtered image and show the output.
- The following sections perform the filtering on big images('3_1.jpg' and '7_1.jpg'). The binary output is saved as .jpg so that original resolution is retained and zero crossings are more clearly visualised.