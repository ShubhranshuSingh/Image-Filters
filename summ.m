function output = summ(M)
    rows = size(M,1);
    cols = size(M,2);
    
    output = 0;
    
    % Returns the sum of all elements of the matrix
    for i=1:rows
        for j=1:cols
            output = output+M(i,j);
        end
    end
end    
    