function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
houseSize = X(:,1);
noOfBedrooms = X(:,2);
len = length(X);

mu(1) = mean(houseSize);
sigma(1) = std(houseSize);
houseSize = (houseSize - mu(1)*ones(len,1))/sigma(1);

mu(2) = mean(noOfBedrooms);
sigma(2) = std(noOfBedrooms);
noOfBedrooms = (noOfBedrooms - mu(2)*ones(len,1))/sigma(2);

X_norm = [houseSize noOfBedrooms];


% ============================================================

end
