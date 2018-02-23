function [ f ] = lab03_factorial( n )
% Calculates the factorial of n
% INPUT: integer n    OUTPUT: value of n!
f=1;

for i=1:n
    f=f*i;
end

