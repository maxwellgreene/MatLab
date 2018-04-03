function isPrime(x)
bool = 0;
if mod(x,2) == 0
    disp(['Your number, ',num2str(x),', is not prime because it is even.']);
else
    for i = ceil(sqrt(x-1)):-1:3
        if mod(x,i) == 0
            disp(['Your number, ',num2str(x),', is not prime because ',num2str(i),' divides it.']);
            bool = 1;
            break;
        end
    end
    if bool == 0
        disp(['Congratulations! Your number, ',num2str(x),', is prime!']);
    end
end
end