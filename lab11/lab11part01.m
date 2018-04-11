% Math 3341, Spring 2018
% Lab 11
% Part I: Built-in Integration Functions

clear; close all;
%%
%%%-----------------------
%%% Single integrals - integral & polyint
%%%-----------------------
f = @(x) x.^2 - 2.*x + 1; % define function p(x)
coeffs = [1, -2, 1];      % stores coeff values of p(x)
b = 3;                   % upper bound of integral
a = -1;                  % lower bound of integral

%%% using polyint
% q =;         % calculate the integral with polyint
% pvI = ;      % evaluates the integral on [a,b]

%%% using integral
% I = ;

%%% prints results of calculations
% fprintf('-----------------------------------\n')
% fprintf('1) Integrating x.^2 - 2.*x+1 on [-1,3]\n\n')
% fprintf(' Using polyint I = %f\n', pvI)
% fprintf('Using integral I = %f\n', I)
% fprintf('           Error = %e\n', diff([pvI,I]))

%%
%%%-----------------------
%%% Single integrals - trapz & cumtrapz
%%%-----------------------
xdata = -1:3;
ydata = f(xdata);
% %%% evaluate integral via ydata (discrete data) using trapz
% trapI = ;

%%% prints results of calculations
% fprintf('-----------------------------------\n')
% fprintf('2) Using trapz and cumtrapz\n\n')
% fprintf('   Using trapz I = %f\n', trapI)
% fprintf('           Error = %e\n', diff([I,trapI]))

%%% evaluate integral using cumtrapz
% cumtrapI =;

%%% prints results of calculations
% fprintf('Using cumtrapz: \n')
% fprintf('     %f\n',cumtrapI)
%%
%%%-----------------------
%%% Double integrals
%%%-----------------------
f3 =  @(x,y) y.*sin(x) + x.*cos(y);

%%% evaluate double integral
% I3 = ;
% 
% %%% prints results of calculations
% fprintf('-----------------------------------\n')
% fprintf('3) Integrating f(x,y) = y*sin(x) + x*cos(y) \n\n')
% fprintf(' Using integral2 I = %f\n', I3)

%%
%%%-----------------------
%%% Triple integrals
%%%-----------------------
%%% define the function for problem 4
f4 = @(x,y,z) y;

%%% define functions for the limits
g2 = @(x,y) x+y;
g1 = @(x,y) x-y;
h2 = @(x) x;
h1 = @(x) x.^2;
b = 1.6;
a = 1;

%%% evaluate triple integral
% I4 = ;

%%% prints results of calculations
% fprintf('-----------------------------------\n')
% fprintf('4) Integrating f(x,y,z) = y \n\n')
% fprintf(' Using integral3 I = %f\n', I4)
% fprintf('-----------------------------------\n')