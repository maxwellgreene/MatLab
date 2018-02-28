function y = plot3D(f,low,up)
x = linspace(low,up,101);
y = x';
z = f(x,y);
[X,Y] = meshgrid(x,y);

Plot3D = figure('Name','3DPlot'); figure(Plot3D);
surf(X,Y,z);
end