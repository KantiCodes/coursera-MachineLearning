function sim = gaussianKernel(x1, x2, sigma)

% fprintf('x1: %f\n', size(x1));
% fprintf('x2: %f\n', size(x2));
% pause;

%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

assert(size(x1) == size(x2))
sum_square_diff = 0;
for i = 1:length(x1)
    x1i = x1(i);
    x2i = x2(i);
    sum_square_diff += (x1i - x2i)^2;
end
sum_divide_by_sigma2 = sum_square_diff / (2*sigma^2);
sim = exp(-sum_divide_by_sigma2);


% You need to return the following variables correctly.
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%






% =============================================================
    
end
