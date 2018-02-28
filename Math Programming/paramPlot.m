function y = paramPlot(xMult,yMult)

t = linspace(-10,10,1001);
x = cos(xMult*t);
y = cos(yMult*t);

ParamPlot = figure('Name','Parametric Equation');figure(ParamPlot);
plot(x,y);
title(['Parametric Equation']);
end