% Math 3341, Fall 2018
% Lab06 Script 2

clear, close all

%%%---------------------------------------
%%% Part I - LU Decomposition
%%%---------------------------------------
disp('******************* Part II *******************')
A = [3 1 1 ; 1 -5 2; 2 1 5];
% b = [1; -7; 10];

%%% Calculate the LU decomp of A


m = 0:20;
y = zeros(length(m),1); % y component of solution
fprintf('---------------------------------------------------\n')
fprintf(' m | %7s | %7s | %7s |\n','x','y','z')
fprintf('---------------------------------------------------\n')

%%% add the code for the for loop as indicated in the lab pdf


%%% prints the last line of the table
fprintf('---------------------------------------------------\n')

%%% Generate plot of y value vs m.
f1 = figure(1);
plot(y, m, 'k*')

saveas(f1,'lab06part2','epsc')
