function approxDerivWRange(f,x0,x1)

x = linspace(x0,x1,1001);

y = f(x);
dydx = FoPtder(f,x,0.001);

HW4Q3CPlot = figure('Name','Question #3C'); figure(HW4Q3CPlot);
plot(x,y,x,dydx,'--r');

end