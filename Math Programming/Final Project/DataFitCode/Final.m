%Final Project
%Maxwell Greene

global sData; global gData; global speedData;
sData = csvread('sData.csv');
gData = csvread('gData.csv');
speedData = csvread('speedData.csv');

%Initial data plot of sData
figure('Name','Plot of sData');
plot(sData(:,1),sData(:,2),'.r');
xlabel('Time(s)'); ylabel('Value');
title('sData');

%Initial data plot of gData
figure('Name','Plot of gData');
plot(gData(:,1),gData(:,2),'ob');
xlabel('Time(s)'); ylabel('Value');
title('gData');

%Initial data plot for speedData
figure('Name','Plot of Speed Data');
plot(speedData(:,1),speedData(:,2),'ob');
xlabel('Time(s)'); ylabel('Speed');
title('Speed Data');

evalNum = input('Evaluate error at which exponent of x?  ');
A = zeros(1,evalNum);

alphabet = 'abcdefghijklmnopqrstuvwxyz';
    for i = 1:evalNum+1
        A(i) = input(['Guess for coefficient of x^',num2str(i-1),', ',alphabet(evalNum+2-i),':  ']);
    end

[error,value] = ExpEval(gData(:,1),gData(:,2),A);
disp(['Error for x^',num2str(evalNum),': ',num2str(error)]);

figure('Name','Plot of evaluation with given exponent.');
plot(gData(:,1),gData(:,2),'ob'); hold on;
plot(gData(:,1),value);