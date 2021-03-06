% Maxwell L Greene
% 2/21/2018
%Script for generating figures, Homework #2

%Question #1
x = linspace(0,5);
fx = (x.^2) - (10*(sqrt(x))) + 2;

Q1Plot = figure('Name','Question #1'); figure(Q1Plot);
plot(x,fx);

%Question #2
x2 = linspace(0,10);
f2x = (x.^2).*(exp(x.*(-1)));
df2x = ((x2.*2).*(exp(x2.*(-1))))+(((x2.^2).*(-1)).*exp(x2.*(-1)));

Q2Plot = figure('Name','Question #2'); figure(Q2Plot);
plot(x2,f2x,'-r',x2,df2x,'--b');

%Question #3
t = linspace(0,pi,500);
x = (.7)*sin(10*t);
y = (1.2)*sin(8*t);

Q3Plot = figure('Name','Question #3'); figure(Q3Plot);
plot(x,y); axis([-1.5 1.5 -1.5 1.5]);

%Question #4
x = linspace(0,4);
numx = (x.^2)-(6*x)+7;
denx = (x.^3)-8;
f3x = numx./denx;

Q4Plot = figure('Name','Question #4');figure(Q4Plot);
plot(x,f3x); hold on;

x1 = linspace(0,1.9);
numx1 = (x1.^2)-(6*x1)+7;
denx1 = (x1.^3)-8;
f3x1 = numx1./denx1;
plot(x1,f3x1,'-o');

x2 = linspace(2.1,4);
numx2 = (x2.^2)-(6*x2)+7;
denx2 = (x2.^3)-8;
f3x2 = numx2./denx2;
plot(x2,f3x2,'-o'); hold off;

%Question #5
yr = [1988:1994];               %Creates a matrix with spacing 1 from 1988 to 1994
sle = [8 12 20 22 18 24 27];    %Gives a matrix of length 7 with "Sales/Year (in Millions of Dollars)
Q5Plot = figure('Name','Question #5'); figure(Q5Plot);
bar(yr,sle,'r');                %Creates a bar graph of sales against years, color red.
xlabel('Year');                 %Labels x-axis 'Year'
ylabel('Sales (Millions)');     %Labels y-axis 'Sales (Millions)'
    %This code gives a bar graph of sales numbers from year 1988-1994

%Question #6
yr = [1988:1994];               
sle = [8 12 20 22 18 24 27];
Q6Plot = figure('Name','Question #6'); figure(Q6Plot);
stem(yr,sle);
xlabel('Year');
ylabel('Sales (Millions)');
    %This code gives a stem plot (rather than a bar graph) of sales numbers from year 1988-1994
    %Stem plots are useful to show functional relationships with a line
    %between values
    
%Question #7
NormList = randn(500);
Q7Plot = figure('Name','Question#7'); figure(Q7Plot);
Q7Histogram = histogram(NormList);
Q7Histogram.NumBins = 20;
title('Random Distibution Between -1000,1000');