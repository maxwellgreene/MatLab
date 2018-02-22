% Jason M Graham
% 02/20/2018
% A simple script that computes with kinematic equations
% recall that y = at^2 + bt + c
% is the kinematic equation for position y as a function of time t
% where a = constant acceleration
% b = initial speed
% c = initial position 

% close plot windows and clear workspace
%close all;
%clear all;

% Parameters
a = -0.98; % acceleration 
b = 3.25;  % initial speed
c = 8.3;   % initial position
t = 12.3;  % a time value
y = a*t^2 + b*t + c; % the equation for position 

% Let's work with user defined input
t = input('Input a time at which to calculate y ');
% calculation based on user input
y = a*t^2 + b*t + c;
% display the result 
disp(['Position at time t= ',num2str(t),' is y= ',num2str(y), '.'])

% Let's also out put the corresponding speed v = 2*a*t + b
v = 2*a*t + b; % speed as a function of time 
disp(['The speed at time t= ',num2str(t),' is v= ',num2str(v), '.'])

% Recall that the time at which the position y is maximized is t = -b/(2*a)
tMax = -b/(2*a);
yMax = a*tMax^2 + b*tMax + c; % the equation for maximum position
disp(['The max position is at time tMax= ',num2str(tMax),' is xMax= ',num2str(yMax), '.'])

% We should make a plot of the position as a function of time
% We will ask for a final time value
tf = input('Input a final time value (>0) at which to calculate y ');

t = linspace(0,tf,101);  % time interval with 101 points
y = a*t.^2 + b*t + c; % note that this is vectorized where necessary
v = 2*a*t+b;
PositionVelocity = figure('Name','Position and Velocity');figure(PositionVelocity);
plot(t,y,'LineWidth',2); hold on;
%plot(t,v,'LineWidth',4);
title(['Position y(t) = a*t^2 + b*t + c with a= ',num2str(a),', b= ',num2str(b),', c= ',num2str(c)])
axis([0 tf 0 yMax + 1])
xlabel('time (t)')
ylabel('position (y)')

% add the point of max position
hold on;
plot(tMax,yMax,'*r','MarkerSize',10);
txt1 = ['\Leftarrow Maximum position= ',num2str(yMax)];
text(tMax,yMax,txt1,'HorizontalAlignment','left');

% we may want to save our data to work with later
%file = '~/Documents/MATLAB/data.mat';
%file = 'C:\Users\grahamj7\Documents\MATLAB\data.mat';
%save(file,'t','y');
%disp(['Data is saved as ',file])
