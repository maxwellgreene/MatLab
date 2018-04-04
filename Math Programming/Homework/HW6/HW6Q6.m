%Code given in homework assignment

x = -1:0.1:3;
y = 1:0.1:4;

%Part A
[X,Y] = meshgrid(x,y);
Z = ((X.^2)/2)+((Y.^2)/9);
HW6Q6APlot = figure('Name','Question #6A'); figure(HW6Q6APlot);
mesh(X,Y,Z); hold on;
surf(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');

%Part B
Z = ((X.^2)/2)-((Y.^2)/9);
HW6Q6BPlot = figure('Name','Question #6B'); figure(HW6Q6BPlot);
mesh(X,Y,Z); hold on;
surf(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');

%Part C
Z = (-1)*(X.*Y).*exp((-1)*(X.^2)+(-1)*(Y.^2));
HW6Q6CPlot = figure('Name','Question #6C'); figure(HW6Q6CPlot);
mesh(X,Y,Z); hold on;
surf(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');