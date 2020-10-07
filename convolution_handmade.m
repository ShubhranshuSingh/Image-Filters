function out = convolution_handmade(M, kernel)
    %% Convolution of an image with a kernel.
    rows = size(M,1);
    cols = size(M,2);
    channels = size(M,3);
    
    out = zeros(rows, cols, channels);
    
    ker_size = size(kernel,1);
    pad = floor(ker_size/2);
    
    % Padding the given image
    M_pad = zeros(2*pad+rows,2*pad+cols, channels);
    M_pad(pad+1:rows+pad,pad+1:cols+pad,:) = M;
    
    % Convolve
    for i = 1: rows
        for j = 1: cols
            for c = 1:channels
                out(i,j,c) = summ(matrixmult(M_pad(i:i+ker_size-1,j:j+ker_size-1,c),kernel));
            end
        end 
    end
end
    