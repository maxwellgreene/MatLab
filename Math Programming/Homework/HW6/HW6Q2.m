%Code given in HW assignment
%Plots a 3D parametric space curve

t = linspace(0,6*pi,1001);
x = (4 + sin(20*t)).*cos(t);
y = (4 + sin(20*t)).*sin(t);
z = cos(20*t);
HW6Q2APlot = figure('Name','Question #2A'); figure(HW6Q2APlot);
plot3(x,y,z,'k','linewidth',2);
grid on;
xlabel('x'); ylabel('y'); zlabel('z');

x = (2 + cos(1.5*t)).*cos(t);
y = (2 + cos(1.5*t)).*sin(t);
z = sin(1.5*t);
HW6Q2BPlot = figure('Name','Question #2B'); figure(HW6Q2BPlot);
plot3(x,y,z,'k','linewidth',2);
grid on;
xlabel('x'); ylabel('y'); zlabel('z');