%Final Project
%Maxwell Greene
%% VARIABLE DEFINITION

global sData;
sData = csvread('sData.csv');

%% PLOT INITIAL DATA
%Initial data plot of data
figure('Name','Plot of data'); hold on;
plot(sData(:,1),sData(:,2),'.r');

%% GET USER INPUT FOR DEGREE AND GUESSES

guessbool = input('Would you like to make a guess?  (1/0)');
if guessbool == true
    
    A(1) = input('Guess for amplitude of sin:  ');
    A(2) = input('Guess for period of sin:  ');    
    A(3) = input('Guess for phase shift of sin:  ');
    
    [error,value] = SinEval(sData,A);
    disp(['Error for guess: ',num2str(error)]);

    figure('Name',['Plot of evaluation of guesses:',num2str(A(1)),'sin(',num2str(A(2)),'t+',num2str(A(3)),')']);
    plot(sData(:,1),sData(:,2),'ob'); hold on;
    plot(sData(:,1),value);
end

%% CALCULATE OPTIMIZED VALUES

x0 = [0,2,0];
optInputs = fminsearch(@SinError,x0);
[optError,optValue] = SinEval(sData,optInputs);
disp(['Error for optimization: ',num2str(optError)]);

%Display optimum values
disp('Your optimum values were:');
disp(['Amplitude   = ',  num2str(optInputs(1))]);
disp(['Period      = ',     num2str(optInputs(2))]);
disp(['Phase Shift = ',num2str(optInputs(3))]);

figure('Name',['Plot of evaluation of guesses:',num2str(optInputs(1)),'sin(',num2str(optInputs(2)),'t+',num2str(optInputs(3)),')']);
plot(sData(:,1),sData(:,2),'ob'); hold on;
plot(sData(:,1),optValue,'--b','LineWidth',3);
plot(sData(:,1),optInputs(1).*sin(optInputs(2).*(sData(:,1)+optInputs(3))));
