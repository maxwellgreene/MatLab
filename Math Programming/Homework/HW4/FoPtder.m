function dfdx = FoPtder(Fun,a,h)

dfdx = (Fun(a-2*h)-8*Fun(a-h)+8*Fun(a+h)-Fun(a+2*h))/(12*h);

end