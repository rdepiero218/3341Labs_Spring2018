function [val] = gaussQuad(f,N) 
% performs Gauss quadrature on f(x) in [-1,1] for N=1,2,3,4,5
% INPUT: f = f(x) to integrate, 
%		 N = number of Gauss points to use
% OUTPUT: val = integral of f(x)

% Define cases of x and w based on choice of N
if N == 1 

elseif N == 2

elseif % ......etc for other Ns


end 

% calculate the integral on interval [-1,1]
val = 0;
for j = 1:N
    val = val + w(j)*feval(f,x(j));
end

end

