function s = posNeg(func,a)



x = linspace(-2,2,101);
y = func(x);

posNegPlot = figure('Name', 'PieceWise Function'); figure(posNegPlot);
plot(x,y); 


end

