function y = plotTangent(f,a,low,up)

x = linspace(low,up,101);
y = f(x);
ypa = approxDeriv(f,2,.0001);
t1 = ypa*(x-a) + f(a);

TangentPlot = figure('Name','TangentPlot');figure(TangentPlot);

plot(x,y,x,t1,'--r','LineWidth',2);
title(['Function y(x) at a = ',num2str(a)]);
xlabel('x'); ylabel('y'); legend('y=f(x)','tangent');
end