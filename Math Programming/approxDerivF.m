function adf = approxDerivF(Function,xval,step)

adf = (Function(xval+step)-Function(xval))/step;

end