% Lab 08: Ill-Conditioned Matrix Example
% Math 3341, Spring 2018

clear;

n = 9;          % size of desired matrix
A = hilb(n);    % generates n by n Hilbert matrix
b = ones(n,1);  % creates vector of length n

%% Solving the system Ax = b

%%% the 'exact' solution using built in matlab fcn
x_true = invhilb(n)*b; % using inverse 
%%% the 'approximate' solution using \ operator
x_bslash = A\b; 
%%% the 'exact' solution given by x = A^(-1)b
x_inv = inv(A)*b;
%% Calculate relative error of each method

%%% relative error in Inf norm
error_backslash = norm(x_bslash - x_true, Inf) / norm( x_true, Inf);
%%% relative error if using inverse
error_inv = norm(x_inv - x_true, Inf) / norm(x_true, Inf);

%% Print results
disp('----------------------------------------')
fprintf('Hilbert Matrix with n = %d \n', n)
disp('----------------------------------------')
fprintf(' %-11s | %-11s | % -11s \n','true x','backslash', 'inv')
disp('----------------------------------------')
fprintf(' % 9.4e | % 9.4e | % 9.4e \n', [x_true, x_bslash, x_inv]')
disp('----------------------------------------')
fprintf('Error using backslash : %8.4e\n', error_backslash);
fprintf('Error using inv       : %8.4e\n', error_inv);
fprintf('Condition number of A : %8.4e\n', cond(A,1));
disp('----------------------------------------')