function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X)
    currentX = X(i,:);
    % currentX
    % printf("Showing X %d %d\n", currentX(1), currentX(2));
    currentBestIndex = NaN;
    currentBestDistance = inf;
    % disp("Showing centroids for X\n");
    for j = 1:K
        currentCentroid = centroids(j, :);
        % printf("Current centroid %d\n", currentCentroid)
        currentDistance = norm(currentX - currentCentroid);
        % printf("Current centroid distance %d\n", currentDistance)

        if (currentDistance <= currentBestDistance)
            currentBestIndex = j;
            currentBestDistance = currentDistance;
            % printf("Updating best to %d\n", j)
        end
    end
    % printf("Best index is: %d\n", currentBestIndex)
    idx(i) = currentBestIndex;
    
end
% pause;



% =============================================================

end

