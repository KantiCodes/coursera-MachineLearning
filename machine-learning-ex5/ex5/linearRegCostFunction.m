function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta) ;
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
##disp (size(grad))
##disp ('that was a gradient')

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
##disp ('the sizes of theta, X');
##disp (size(theta));
##disp(size(X))
h = X * theta;

J = 1 / (2*m) *(sum ( (h - y).^2 )  ) + ((sum (theta.^2)) * (lambda/ (2*m)));
theta_squared = theta(1)^2 * lambda / (2*m);
J = J - theta_squared ;


result = 0;
for i = 1:m
##  disp(h(i))
##  disp(y(i))
##  disp(X(i,1))
##  pause(3) 
  result +=  (h(i) - y(i))*X(i,1);
endfor
##disp('result')
##disp(result)
grad(1) = result / m;
##disp('grads')



for i = 2:n
  result = 0;
##  var_theta=
##  disp('called')
##  disp(i)
  for j = 1:m
    
    result += (h(j) - y(j)) * X(j,i);
  endfor 
  result = result / m + (theta(i) *lambda/m);
  grad(i,:) =  result;
endfor


#disp ('this is J')
#disp (J)











% =========================================================================

grad = grad(:);

end
