%Maxwell Greene
%1/31/2018
initial = 0:pi/100:pi/2;

sin1 = sin(2*pi*initial);

sin3D = sin1'*sin1;

surf(sin3D);
