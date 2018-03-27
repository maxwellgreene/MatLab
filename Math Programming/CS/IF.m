%Logical operations:
%
%Matlab  accepts logical operations...


% NOT ~

% OR ||

% AND &&

% EQUAL ==
% NOT EQUAL ~=
% GT EQUAL >=
% LT EQUAL <=

%Vector Logic:
%MatLab computes vector logic element-wise
% and returns a vector of logicals when two vectors are compared.

%IF statements:
x = input('input a number :');
if x<0
    disp('x is negative')
    if mod(x,2) == 0
        disp('x is even')
    end
else
    disp('x is positive')
    if mod(x,2) == 0
        disp('x is even')
    end
end