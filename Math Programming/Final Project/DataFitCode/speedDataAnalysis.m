% Jason M Graham
% 03/14/18
% speedDataAanalysis.m
% Script imports data from speedData.csv in a matrix M
% the data is plotted and then a best fit line is determined to model the 
% data
% The best fit line is plotted 
% note that we use built-in function fminsearch
% along with linearSpeed.m and speedError.m

% set global data matrix to be used in speedError function
global M

% read in data
M = csvread('speedData.csv');

% obtain vectors corresponding to columns of data matrix 
t = M(:,1);
sd = M(:,2);

% plot the data
figure(1)
plot(t,sd,'*r','MarkerSize',5)
hold on

% set some sample parameter values and 
g = [3 7];
a = g(1);
b = g(2);
sg = linearSpeed(t,a,b);

% overlay model graph on top of data
plot(t,sg,'--g','LineWidth',3)
legend('data','guess')
title(['Sample model for speed s = at + b with parameters a = ', num2str(a), ' b = ', num2str(b)])
xlabel('time (t)')
ylabel('speed (s)')

% compute and display error for the particular parameters 
e1 = speedError(g);
disp(['Error in speed function for a = ',num2str(a),' and b = ',num2str(b),' is err = ',num2str(e1)])

% minimize error function to obtain best fit parameters
X = fminsearch(@speedError,g);
a = X(1);
b = X(2);
% evaluate best fit model
s = linearSpeed(t,a,b);
% compute the best fit error
e2 = speedError(g);
% display error 
disp(['Minimum error in speed function for  a = ',num2str(a),' and b = ',num2str(b),' is err = ',num2str(e2)])

% plot the data
figure(2)
plot(t,sd,'*r','MarkerSize',5)
hold on

% over best fit model on top of data
plot(t,s,'-b','LineWidth',3)
legend('data','model')
title(['Data best linear fit for speed s = at+b with a = ', num2str(a), ' b = ', num2str(b)])
xlabel('time (t)')
ylabel('speed (s)')


