% Jason M Graham
% 03/14/2018

function e = speedError(x)
  % Function that inputs values for
  % parameters in contained in a vector X
  % and returns error of model compared against data
  % Note that this calls function linearSpeed which contains
  % a linear model for data.  

  % use global data matrix
  global M

  % obtain data vectors  
  tdata = M(:,1);
  sdata = M(:,2);
  
  % parameters
  a = x(1);
  b = x(2);
  
  % evaluate function form to compare against data
  s = linearSpeed(tdata,a,b);
  
  % compute the error by comparing model with data
  e = norm(sdata - s).^2;
  
end
