% Maxwell Greene 
%3/27 Math Programming

% This function can be called with an empty matrix, f, so that one can be
% input seperately, or with values in f so that it can be called by scripts
function HW5Q3(f)
if isempty(f)
    f = input ('Please enter a vector of integers of arbitrary length : ');
end
disp('Input vector : ');
disp (f);

FLengthi = length(f);

for i = FLengthi:-1:1
   if f(i) < 0
       f(i) = [];
   end
end

disp('Output vector :');
disp(f);

FLengthf = length(f);
numDeleted = FLengthi-FLengthf;
disp('Number deleted : ');
disp(numDeleted);
end
