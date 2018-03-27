%Maxwell L Greene
%Homework 4 Question #3

%A)
Q3funca = @(x) x.^3.*exp(2*x);
a = .06;
h1 = a/100;
h2 = a/500;

x = linspace(-1,1,101);
f1 = Q3funca(x);
df1dx = FoPtder(Q3funca,a,h1);
df2dx = FoPtder(Q3funca,a,h2);

HW4Q3APlot = figure('Name','Question #3a'); figure(HW4Q3APlot);
plot(x,f1,a,df1dx,'*r',a,df2dx,'*b');

%B)
Q3funcb = @(x) (3.^x)./(x.^2);
a = 2.5;

x = linspace(1,3,101);
f2 = Q3funcb(x);
df1dx = FoPtder(Q3funcb,a,h1);
df2dx = FoPtder(Q3funcb,a,h2);

HW4Q3BPlot = figure('Name','Question #3b'); figure(HW4Q3BPlot);
plot(x,f2,a,df1dx,'*r',a,df2dx,'*b');

%C) 
%See "approxDerivWRange.m" for function. 
%I call it here to show it works and for ease of use.

%Arbitrary Values:
f3 = @(x) x.^2;
x0 = 0;
x1 = 5;

approxderivWRange(f3,x0,x1);


