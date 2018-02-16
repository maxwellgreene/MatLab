%Maxwell Greene
%1/31/2018
initial = 0:.01:1;
sin1 = sin(2*pi*initial);
sin2 = 2*sin(2*pi*initial);
plot(initial,sin1,'--',initial,sin2,'--');
