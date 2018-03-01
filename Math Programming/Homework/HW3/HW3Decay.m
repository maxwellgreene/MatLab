%Maxwell L Greene
%February 23rd 2018
%HW 3 - Decay

%Question #3
HalfLife = input('Enter the half-life of your material (in yrs): ');
AmountS = input('Enter the current amount of material (in lbs): ');
TimeF = input('Enter time from present to calculate amount (in yrs): ');

tempk = log(2)/HalfLife;
AmountF = AmountS*exp(-tempk*TimeF);
disp(['After ',num2str(TimeF),' years, you will have ',num2str(AmountF),'(lbs) left.']);

%Question #4
Time = linspace(0,TimeF,1000);
Amount = AmountS*exp(-tempk*Time);

Q34Plot = figure('Name','Radioactive Decay');
plot(Time,Amount,'-b'); hold on;
plot(TimeF,AmountF,'*r','MarkerSize',10);
plot(0,AmountS,'*r','MarkerSize',10);
xlabel('Time (years)');
ylabel('Amount (pounds)');