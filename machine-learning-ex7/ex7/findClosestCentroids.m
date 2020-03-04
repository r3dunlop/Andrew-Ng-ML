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

for i = 1:size(X,1) # Each row is a seperate example
  distance_sq = zeros(1,K);
  for j = 1:K
    #sum of squares is measure of distance, don't need to sqrt
    distance_sq(1,j) = sum(power((X(i,:)-centroids(j,:)),2)); 
  endfor
  #find the minimum distance, and then store the index of that vector
  [~, distance_idx] = min(distance_sq);
  idx(i,1) = distance_idx;
endfor






% =============================================================

end

