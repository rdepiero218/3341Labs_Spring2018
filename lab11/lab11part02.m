% Math 3341, Spring 2018
% Lab 11 
% Part II: Gauss Quadrature


clear; close all;
%%
%%% Part II: Gauss Quadrature
%%%----------------------------------------------
% %%% define the function for part II
g  = @(x) 2*x./(x.^2-4);
b = 1.6; % define a & b
a = 1;

%%% define gCOV here


%%% find exact value of integral
gExact= integral(g,a,b);
%%% prints results of calculations
fprintf('-----------------------------------\n')
fprintf('Part II: Using Gauss Quadrature\n\n')
fprintf('Integrating 2*x./(x.^2-4) on [1, 1.6] \n')
fprintf('Exact Value I = %f\n\n', gExact)

fprintf('Using gaussQuad.m :\n\n')

%%% place function calls for gaussQuad below
%%% Be sure to print output using fprintf statments
