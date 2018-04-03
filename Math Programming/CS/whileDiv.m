function [q,r] = whileDiv(a,b)

    if a < b
        q = 0;
        r = a;
    else
        i = 1;
        while a-i*b >= 0
            q = i;
            r = a-b*i;
            i = i+1;
        end
    end
end