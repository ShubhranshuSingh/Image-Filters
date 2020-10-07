function kernel = Gaussian(sigma,len)
    %% Returns a Gaussian kernel.
    % Intialise with zeros
    kernel = zeros([len len]);
    temp = floor(len/2);
    % Sampling 2D Gaussian Function at discrete points 
    for i = -temp:temp
        for j = -temp:temp
            kernel(i+temp+1,j+temp+1) = exp(-(i^2+j^2)/(2*(sigma^2)));
        end
    end
    
    % Normalisation
    kernel = kernel./summ(kernel);
end