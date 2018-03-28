% Maxwell Greene 
%3/27 Math Programming

% This function can be called with an empty matrix, f, so that one can be
% input seperately, or with values in f so that it can be called by scripts
function HW5Q2(f)
if isempty(f)
    f = input ('Please enter a vector of integers of arbitrary length : ');
end
disp('Input vector :');
disp (f);
[frow,fcol] = size(f);
for i = 1:fcol
   if f(i) < 0
       f(i) = f(i)*3;
   else
       f(i) = f(i)*2;
   end
end
disp('Output vector :');
disp(f);
end