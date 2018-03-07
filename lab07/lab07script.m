% Math 3341, Spring 2018
% Lab 07
clear

A = [4 3 0;
    2 4 -1;
    0 -1 4];
b = [24; 30; -24];

TOL = 10^(-8)
maxIters = 100
x0 = [0; 0; 0],
w = 1.25;

[x, iters] = gsSOR(A, b, x0, w, TOL, maxIters);

fprintf('Solution of System: \n')
fprintf('x1 = %1.5f \n',x(1))
fprintf('x2 = %1.5f \n',x(2)) 
fprintf('x3 = %1.5f\n',x(3))
fprintf('found in %d iterations\n',iter)