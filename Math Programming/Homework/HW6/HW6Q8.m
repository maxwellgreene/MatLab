%Code from homework assignment

x = -1:0.1:3;
y = 1:0.1:4;
[X,Y] = meshgrid(x,y);

%A
Z = sin(X.*Y);
HW6Q8APlot = figure('Name','Question #8'); figure(HW6Q8APlot);
surfc(X,Y,Z); hold on;
xlabel('x'); ylabel('y');

%B
Z = exp(X).*cos(Y);
surfc(X,Y,Z);

%C
Z = (X-Y)./(1+(X.^2)+(Y.^2));
surfc(X,Y,Z);