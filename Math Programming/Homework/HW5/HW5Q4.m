% Maxwell Greene 
%3/27 Math Programming

% This function can be called with an empty matrix, f, so that one can be
% input seperately, or with values in f so that it can be called by scripts
function HW5Q4(n)
if isempty(n)
    n = input ('Please enter a desired size for the triangle : ');
end

f = [];

for i = 1:n
    for j = 1:n
        if i>=j
            f(i,j) = (factorial(i-1))/(factorial(j-1)*factorial(i-j));
        end
    end
end
display = ['Pascal Triangle for n = ',num2str(n)];
disp(display);

disp(f);
end