function [ val ] = romberg(f, a, b, n)
% Approximates the integral using Romberg technique
% up to order O(h^(2n)) accuracy
% INPUT:  f = function f(x), a = lower limit, b = upper limit, 
%         n = # rows of table desired (increase n and increase accuracy)
% OUTPUT: val = value of integration R(n,n)


% initialize necessary items

%

fprintf('----------------------------------------\n')
fprintf('     Romberg Integration for N=%d     \n',n)
fprintf('----------------------------------------\n')

% print first entry R(1,1)

%

% calculate additional entries in table



fprintf('---------------------------------------------\n')
val = R(2,end);
end

