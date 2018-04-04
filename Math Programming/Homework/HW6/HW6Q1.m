%Code given in HW assignment
%Plots a 3D parametric space curve, in the shaep fo a spiral

t = 0:0.1:6*pi;
x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5*t;
HW6Q1Plot = figure('Name','Question #1'); figure(HW6Q1Plot);
plot3(x,y,z,'k','linewidth',2);
grid on;
xlabel('x'); ylabel('y'); zlabel('z');