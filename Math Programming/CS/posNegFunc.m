function posNegFunc(a)

n = a.length;
x = 1:n;
y = func(x);

posNegPlot = figure('Name', 'PieceWise Function'); figure(posNegPlot);

n = x.length;
for i=1:n
    y(i) = posNegNum(a(i));
end
plot(x,y);

end