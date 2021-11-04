function [J, grad] = costFunctionReg(theta, X, y, lambda)

% Initialize some useful values
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));

h = sigmoid(X*theta);
theta(1,1) = 0;

% compute cost and grad
J = (-1/m)*(y'*log(h)+(1-y)'*log(1-h))+(lambda/(2*m))*sum(theta.^2);

% grad(1,1) = (1/m)*(X(:,1)'*(h-y));
grad = ((1/m)*(X'*(h-y)))+((lambda/m)*theta);

end
