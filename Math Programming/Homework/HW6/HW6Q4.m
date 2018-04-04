%Code given from homework assignment
%Produces a mesh plot for f(x,y) = (xy^2)/(x^2+y^2)

x = -1:0.1:3;
y = 1:0.1:4;
[X,Y] = meshgrid(x,y);
Z = X.*Y.^2./(X.^2 + Y.^2);
HW6Q4Plot = figure('Name','Question #4'); figure(HW6Q4Plot);
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');