function kernel = DoG(sigma_1,sigma_2)
    %% Returns a 11X11 DoG kernel.
    % Intialise with zeros
    kernel = zeros([11 11]);
    
    % Sampling 2D DoG Function at discrete points 
    for i = -5:5
        for j = -5:5
            kernel(i+6,j+6) = (1/(2*pi*(sigma_1^2)))*exp(-(i^2+j^2)/(2*(sigma_1^2)))-(1/(2*pi*(sigma_2^2)))*exp(-(i^2+j^2)/(2*(sigma_2^2)));
        end
    end
end