function error = SinError(guess)
    amplitude = guess(1);
    period = guess(2);
    phase = guess(3);
    
    global sData;

    data = sData(:,2);
    x = sData(:,1);
    [dataSize,~] = size(data);
    value = zeros(size(x));
    
    for j = 1:dataSize
        value(j) = amplitude*sin(period*(x(j)+phase));
    end
    error = norm(value-data).^2;
end