%Maxwell L Greene
%February 28 2018
%Math Programming Homework #4 Question 1

value1 = HW4Q1func(-2);
value2 = HW4Q1func(4);

disp(['The value of the function at x = -2 is ',num2str(value1),'.']);
disp(['The value of the function at x =  4 is ',num2str(value2),'.']);

x = linspace(-4,8,101);
y = HW4Q1func(x);

HW4Q1Plot = figure('Name','Question #1'); figure(HW4Q1Plot);
plot(x,y); 
title('Exponential Function of x');