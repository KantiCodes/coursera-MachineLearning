function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = [ 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma =  [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
x1 = [1 2 1 1]; x2 = [0 4 -1 1];
C = 1
sigma = 0.1
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
##best_sigma = -1
##best_c = -1
##best_error = 100000
##for i = 1:8
##  temp_c = C(i);
##  for j = 1:8
##    
##    temp_sigma = sigma(j);
##    model= svmTrain(X, y, temp_c, @(x1, x2) gaussianKernel(x1, x2, temp_sigma));
##    h = svmPredict(model,Xval);
##    current_error = mean(double(h ~=yval))
##    
##    if (current_error < best_error)
##      disp('changing the value of sigma and C')
##      best_sigma = temp_sigma;
##      best_c = temp_c
##      best_error = current_error;
##    endif
##    
##  endfor
##  
##endfor
##disp('chuj chuj')
##C = best_c
##sigma = best_sigma
##kbhit

% =========================================================================

end
