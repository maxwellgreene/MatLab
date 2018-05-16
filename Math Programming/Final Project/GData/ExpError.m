function error = ExpError(guess)
    global gData;
    data = gData(:,2);
    x = gData(:,1);
    [dataSize,~] = size(data);
    [~,guessSize] = size(guess);
    value = zeros(size(x));
    
    for j = 1:dataSize
        for i = 1:guessSize
            value(j) = value(j) + guess(i).*(x(j).^(i-1));
        end
    end
    error = norm(value-data).^2;
end