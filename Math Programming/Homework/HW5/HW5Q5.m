function HW5Q5(n)

    f = [1 1];
    sum = 2;
    for i = 3:n
        f(i) = f(i-1)+f(i-2);
        sum = f(i)+sum;
    end
    display = ['Fibonacci sum for n = ',num2str(n),' is ', num2str(sum)];
    disp(display);
end