function binary_out = zerocrossing(I)
    rows = size(I,1);
    cols = size(I,2);
    pad = 1;
    I_pad = zeros(2*pad+rows,2*pad+cols);
    I_pad(pad+1:rows+pad,pad+1:cols+pad) = I;
    
    % Binary output: If zero crossing then value of pixel is 255 else it is zero
    binary_out = zeros(rows,cols);
    
    % Detect sign change in the 3x3 neighborhood of the given pixel
    for i=1:rows
        for j=1:cols
            if I_pad(i+pad,j+pad)*I_pad(i+1+pad,j+pad)<0||I_pad(i+pad,j+pad)*I_pad(i-1+pad,j+pad)<0||I_pad(i+pad,j+pad)*I_pad(i+pad,j+1+pad)<0||I_pad(i+pad,j+pad)*I_pad(i+pad,j-1+pad)<0||I_pad(i+pad,j+pad)*I_pad(i+1+pad,j+1+pad)<0||I_pad(i+pad,j+pad)*I_pad(i+1+pad,j-1+pad)<0||I_pad(i+pad,j+pad)*I_pad(i-1+pad,j+1+pad)<0||I_pad(i+pad,j+pad)*I_pad(i-1+pad,j-1+pad)<0
                binary_out(i,j) = 255;
            end
        end
    end