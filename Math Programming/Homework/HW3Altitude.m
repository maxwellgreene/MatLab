%Maxwell L Greene
%February 23rd 2018
%HW 3 - Altitude

%Question #1
pressure = input('Enter pressure in millibars (mb): ');
height = 145366.45*(1-(pressure/1013.25)^(0.190289));
height = round(height);
disp(['The Altitude at pressure ',num2str(pressure),'mb is ',num2str(height),' feet.']);


%Question %2
lowP = input('Enter lower bound for pressure: ');
upP = input('Enter upper bound for pressure: ');
pressureV = linspace(lowP,upP,1000);
heightV = 145366.45*(1-(pressureV/1013.25).^(0.190289));

%Plot for Q1 & Q2
Q12Plot = figure('Name','Question #1 & #2');
plot(pressureV,heightV); hold on;
plot(pressure,height,'*r','MarkerSize',10);
xlabel('Pressure (mb)');
ylabel('Altitude (ft)');