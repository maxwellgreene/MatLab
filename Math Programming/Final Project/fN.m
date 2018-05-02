function value = fN(x,A)

    [xSize,~] = size(x);
    value = zeros(size(x));

    for j = 1:xSize
        value(j) =  ExpValue(A,x(j));
    end
    return

end