function [error,value] = SinEval(A,guess)

    data = A(:,2);
    x = A(:,1);
    [dataSize,~] = size(data);
    value = zeros(size(x));
    
    for j = 1:dataSize
         value(j) = guess(1)*sin(guess(2)*(x(j)+guess(3)));
    end
    
    error = norm(value-data)^2;
    return
end