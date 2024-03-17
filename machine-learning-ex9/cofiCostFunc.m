function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
% size(params)
% pause
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

% size(X)
% pause
% size(Theta)
% pause

% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% size(X)
% num_movies
% size(Theta)
% num_features
% num_movies
% pause;

% for i=1:num_movies
%     for j=1:num_users
%         if R(i,j) == 1
%             curr_params = Theta(j, :);
%             curr_x = X(i, :);
%             J += ((curr_params * curr_x') - Y(i,j)) ^2
%             % size(curr_params)
%             % size(curr_x)
%             % pause;
%         endif
%     end
% end
% J = J / 2


Hpred = X * Theta';
Diff = Hpred - Y;
Diff_for_non_zeros = R.*Diff;
Diff2 = Diff_for_non_zeros.^2;
J = sum(sum(Diff2)) /2;
J += lambda/2 * sum(sum(Theta.^2)) + lambda/2 * sum(sum(X.^2));


% printf("size Theta: %d,%d\n", size(Theta))
% printf("size X: %d,%d\n", size(X))
% % printf("size X`: %d,%d\n", size(X'))
% % printf("size Y: %d,%d\n", size(Y))

% printf("size Diff: %d,%d\n", size(Diff))
% printf("size Theta_grad: %d,%d\n", size(Theta_grad))
% printf("size X_grad: %d,%d\n", size(X_grad))
% % R
% % Y
% pause;



% for i=1:num_movies
%     for j=1:num_users
%         if R(i,j) == 1
%             curr_params = Theta(j, :);
%             curr_x = X(i, :);
%             Diff = (curr_params * curr_x') - Y(i,j);
%             X_grad(i, :) += Diff * curr_params;
%             Theta_grad(j, :) += Diff * curr_x;
%             % size(curr_params)
%             % size(curr_x)
%             % pause;
%         endif
%     end
% end
% X_grad
% Theta_grad

% disp('results')
X_grad = Diff_for_non_zeros * Theta + lambda *X;
Theta_grad = Diff_for_non_zeros' * X + lambda * Theta;

% pause;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the 
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the 
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the 
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the 
%                     partial derivatives w.r.t. to each element of Theta
%
















% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end
