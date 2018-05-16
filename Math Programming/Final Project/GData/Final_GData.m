%Final Project - gdata
%Maxwell Greene
%% VARIABLE DEFINITION

global gData;
gData = csvread('gData.csv');

%% PLOT INITIAL DATA
%Initial data plot of data
figure('Name','Plot of data'); hold on;
plot(gData(:,1),gData(:,2),'ob');

%% GET USER INPUT FOR DEGREE AND GUESSES

evalNum = input('Evaluate error with what degree polynomial?  ');
A = zeros(1,evalNum);

guessbool = input('Would you like to make a guess? (1/0)  ');
if guessbool == true
    
    for i = 1:evalNum+1
        A(i) = input(['Guess for coefficient of x^',num2str(i-1),':  ']);
    end
    
    [error,value] = ExpEval(gData(:,1),gData(:,2),A);
    disp(['Error for guess of x^',num2str(evalNum),': ',num2str(error)]);

    figure('Name',['Plot of evaluation of guesses with degree ',num2str(evalNum)]);
    plot(gData(:,1),gData(:,2),'ob'); hold on;
    plot(gData(:,1),value);
end
%% CALCULATE OPTIMIZED VALUES

x0 = zeros(1,evalNum+1);
optInputs = fminsearch(@ExpError,x0);
[optError,optValue] = ExpEval(gData(:,1),gData(:,2),optInputs);
disp(['Error for optimization of x^',num2str(evalNum),': ',num2str(optError)]);

%Display optimum values
disp('Your optimum values were:');
for i=1:evalNum+1
   disp(['A(',num2str(i),') = ',num2str(optValue(i))]);
end

figure('Name',['Plot of evaluation of optimization with degree ',num2str(evalNum)]);
plot(gData(:,1),gData(:,2),'ob'); hold on;
plot(gData(:,1),optValue);
