function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%
mu1 = mean(X,1);
mu = []
for i = 1:m
	mu = [mu; mu1];
end;
sigma2 = mean(((X - mu) .^ 2), 1);
mu = mu(1,:);
%for i = 2:m
%	sigma = [sigma; sigma];
%end;

%p = prod(exp(-1 .* (((X - mu) .^ 2) ./ (2 .* sigma))) ./ sqrt(2 .* pi .* sigma), 2);

% =============================================================


end
