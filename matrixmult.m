function output = matrixmult(A,B)
    rows = size(A,1);
    cols = size(A,2);
    
    output = zeros(rows,cols);
    
    % Returns elementwise product of matrices A and B
    for i=1:rows
        for j=1:cols
            output(i,j) = A(i,j)*B(i,j);
        end
    end
end  