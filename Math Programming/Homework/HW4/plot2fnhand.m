function plot2fnhand(function1,function2)

n = randi([4,10],1);

x1 = linspace(1,n,101);
y1 = function1(x1);

x2 = linspace(1,n,101);
y2 = function2(x2);

HW4Q2Plot = figure('Name','Question #2'); figure(HW4Q2Plot);

subplot (2,1,1); plot(x1,y1); 
title(char(function1));

subplot(2,1,2); plot(x2,y2);
title(char(function2));

end