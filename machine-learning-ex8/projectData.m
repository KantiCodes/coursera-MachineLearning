function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

K
U_reduce = U(:,1:K);
disp(size(U_reduce))

Z = U_reduce' * X'
Z = Z'

% for i=1:size(X,1)
%     x = X(i, :)';
%     projection_k = x' * U(:, K)
%     Z(i) = projection_k
%     % Z
%     pause;
% end

% printf("K is :%d \n", K);
%  is : %d %d\n", size(Ureduce));
% % printf("Size of X is: %d %d\n", size(X,1), size(X,2));
% % xitest = X(12, :);
% % printf("Size of xi is %d,%d \n:", size(xitest,1), size(xitest,2))
% % printf("Size of xiT is %d,%d \n:", size(xitest',1), size(xitest',2))




% % printf("Ureduce is %d, %d\n", Ureduce)
% % pause
% % pause
% for i = 1:size(X,1)
%     x = X(i, :)';
%     projection_k = x' * U(:, K);
%     Z(i, :) = projection_k;
%     % pause
% end



% =============================================================

end
