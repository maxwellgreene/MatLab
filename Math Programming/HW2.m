%Question #1
x = linspace(0,5);
fx = (x.^2) - ((sqrt(x)).*10) + 2;
plot(x,fx);

%Question #2
x2 = linspace(0,10);
f2x = (x2.^2).*(exp(x2));
df2x = ((x2.*2).*(exp(x2)))+(((x2.^2).*(-1)).*exp(x2.*(-1)));
%plot(x2,f2x,'-r',x2,df2x,'--b');