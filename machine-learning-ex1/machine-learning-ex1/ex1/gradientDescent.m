function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
  
    t0 = 0;
    t1 = 0;
    
    J = 0;
    for i = 1:rows(X),
      x = X(i,2);
      h = theta(1)+theta(2)*x;
      yi = y(i);
      J+= (h-yi);
    endfor
    J = (J*alpha)/(m);
    t0 = theta(1) - J;
    
    J = 0;
    for i = 1:rows(X),
      x = X(i,2);
      h = theta(1)+theta(2)*x;
      yi = y(i);
      J+= (h-yi)*x;
    endfor
    J = (J*alpha)/(m);
    
    t1=theta(2) - J;
    
    theta = [t0;t1]

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
