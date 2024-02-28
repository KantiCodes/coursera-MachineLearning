function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% % You need to return the following variables correctly.
% C = 1;
% sigma = 0.3;

% sigmas = [0.001; 0.003; 0.01; 0.03; 1; 0.3; 1; 3; 10; 15; 30];
% css = [0.001; 0.003; 0.01; 0.03; 1; 0.3; 1; 3; 10; 15; 30];
% sigmas = [0.2; 0.25; 0.3; 0.35; 0.4];
% css = [10; 11; 12; 13; 14; 15]


% sigmas = [0.15; 0.16; 0.17; 0.18; 0.19; 0.2; 0.21; 0.22; 0.23;]
% css = [7; 8; 9; 10; 11; 12; ]


% sigmas = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30]
% css = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30]



% best_c = 0;
% best_error = 999999999
% best_sigma = 0;
% fprintf("Current best error: %f\n", best_error);
% fprintf("Current best sigma: %f\n", best_sigma);
% fprintf("Current best c: %f\n", best_c);
% pause;

% for i = 1:length(sigmas)
%     current_sigma = sigmas(i);
%     for j=1:length(css)
%         current_c = css(j);
%         current_model= svmTrain(X, y, current_c, @(x1, x2) gaussianKernel(x1, x2, current_sigma));
%         val_predictions = svmPredict(current_model, Xval);
%         current_error = mean(double(val_predictions ~= yval));
%         if (current_error <= best_error)
%             best_c = current_c;
%             best_sigma = current_sigma;
%             best_error = current_error;
%         end

%         fprintf("Current error: %f \n", current_error);
%         fprintf("Current best error: %f\n", best_error);
%         fprintf("Current best sigma: %f\n", best_sigma);
%         fprintf("Current best c: %f\n", best_c);


%     end
% end

C = 1.000000;
sigma = 0.100000;
% C = "abc";
% sigma = 0.3;
% fprintf("Testing after training");
% pause;

% fprintf("Best of all sigma: %f\n", sigma);
% fprintf("Best of all c: %f\n", C);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        
%







% =========================================================================

end
