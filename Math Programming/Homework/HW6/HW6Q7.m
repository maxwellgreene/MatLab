%Code from homework assignment

x = -1:0.1:3;
y = 1:0.1:4;
[X,Y] = meshgrid(x,y);
Z = X.*Y.^2./(X.^2 + Y.^2);
HW6Q7Plot = figure('Name','Question #7'); figure(HW6Q7Plot);
surfc(X,Y,Z)
xlabel('x'); ylabel('y');