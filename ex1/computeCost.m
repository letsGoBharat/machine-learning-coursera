function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
data = load('ex1data1.txt');
%X = data(:, 1); y = data(:, 2);
m = length(X); % number of training examples
%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = [-1; 2]; % initialize fitting parameters
%iterations = 1500;
%alpha = 0.01;

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

constant = 0.5/m;
hypothesis = X * theta;
submission = (hypothesis - y) .^ 2;
submission = sum(submission , 'all');
J = constant * submission;

% =========================================================================

end
