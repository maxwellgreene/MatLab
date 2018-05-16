function [error,value] = LinEval(x,data,A)

    [dataSize,~] = size(data);
    [~,aSize] = size(A);
    value = zeros(size(x));
    
    for j = 1:dataSize
        for i = 1:aSize
            value(j) = value(j) + A(i).*(x(j).^(i-1));
        end
    end
    error = norm(value-data)^2;
    return
end