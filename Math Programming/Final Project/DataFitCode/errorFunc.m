function error = errorFunc(guess)
    gData = csvread('gData.csv');
    data = gData(:,2);
    x = gData(:,1);
    [dataSize,~] = size(data);
    [~,aSize] = size(guess);
    value = zeros(size(x));
    
    for j = 1:dataSize
        for i = 1:aSize
            value(j) = value(j) + guess(i).*(x(j).^(i-1));
        end
    end
    error = norm(value-data)^2;

end