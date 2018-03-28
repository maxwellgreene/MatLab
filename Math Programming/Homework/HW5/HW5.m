%Maxwell Greene
%Math Programming 
%Homework #5
%CALL THIS FILE ALONE TO GET OUTPUT OF ALL QUESTIONS

%Question #1

v = [-2 4 1 0 2 1 2];
w = [2 5 0 1 2 -1 3];

disp('v = [-2 4 1 0 2 1 2]');
disp('w = [2 5 0 1 2 -1 3]');

%===== A =====
disp('Question #1A');
answer = (~v == ~w);
disp('~v == ~w      gives');
disp(answer);
% Returns a logical vector of a comparison between two vectors representing
% whether each element in v and w are equal to 0.
% Effectively, this returns a vector with a '1' where the respective
% elements in v and w are either both non-zero or both zero and '0' where
% only one of the respective elements in v and w are 0.

%===== B =====
disp('Question #1B');
answer = (w >= v);
disp('w >= v        gives');
disp(answer);
% Returns a logical vector with '1' representing the value of w being
% greater than the respective value of v and 0 being lesser or equal to.

%===== C =====
disp('Question #1C');
answer(v > ~-1*w);
disp('v > ~-1*w     gives');
disp(answer);
% Returns a logical vector with '1' if the element in v is greater than 0.
% The expression '~-1*w' returns a vector of 0's with length w.length
% because it NOT operates on '-1' then multiples w through by the result,
% 0. So, the expression is effectively 'v > 0'

%===== D =====
disp('Question #1D');
answer(v > -1*w);
disp('v > -1*w     gives');
disp(answer);
% Returns logical vector with '1' is the element in v is greater than the
% negated respective value of w.

%Question #2
disp('Question #2');
f = randi([-10 20],1,19);

HW5Q2(f);

%Question #3
disp('Question #3');
f2 = randi([-15 20],1,25);

HW5Q3(f2);

%Question #4
disp('Question #4');

n = 10;
HW5Q4(n);

%Question #5
disp('Question #5');

HW5Q5(10);
HW5Q5(50);
HW5Q5(100);
