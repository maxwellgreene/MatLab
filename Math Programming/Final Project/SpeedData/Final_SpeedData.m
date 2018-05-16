%Final Project
%Maxwell Greene
%% VARIABLE DEFINITION

global speedData;
speedData = csvread('speedData.csv');

%% PLOT INITIAL DATA
%Initial data plot of data
figure('Name','Plot of data'); hold on;
plot(speedData(:,1),speedData(:,2),'*g');

%% GET USER INPUT FOR DEGREE AND GUESSES

evalNum = input('Evaluate error at which exponent of x?');
A = zeros(1,evalNum);

guessbool = input('Would you like to make a guess?');
if guessbool == true

    for i = 1:evalNum+1
        A(i) = input(['Guess for coefficient of x^',num2str(i-1),':  ']);
    end
    
    [error,value] = LinEval(speedData(:,1),speedData(:,2),A);
    disp(['Error for guess of x^',num2str(evalNum),': ',num2str(error)]);

    figure('Name',['Plot of evaluation of guesses with degree ',num2str(evalNum)]);
    plot(speedData(:,1),speedData(:,2),'ob'); hold on;
    plot(speedData(:,1),value);
end
%% CALCULATE OPTIMIZED VALUES

x0 = zeros(1,evalNum+1);
optInputs = fminsearch(@LinError,x0);
[optError,optValue] = LinEval(speedData(:,1),speedData(:,2),optInputs);
disp(['Error for optimization of x^',num2str(evalNum),': ',num2str(optError)]);

%Display optimum values
disp('Your optimum values were:');
for i=1:evalNum+1
   disp(['A(',num2str(i),') = ',num2str(optValue(i))]);
end

figure('Name',['Plot of evaluation of optimization with degree ',num2str(evalNum)]);
plot(speedData(:,1),speedData(:,2),'ob'); hold on;
plot(speedData(:,1),optValue);