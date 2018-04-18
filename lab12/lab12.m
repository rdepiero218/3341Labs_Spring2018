% Math 3341, Spring 2018
% Lab 12

clear; close all;
f = @(x) sin(x);
b1 = pi;
a1 = 0;
n = 6;

fprintf('************************************************\n')
fprintf('Integrate sin(x) from 0 to pi)\n')

exactF = integral(f,a1,b1);
If = romberg(f,a1,b1,n);
fprintf('%19s: %11.8f \n','Exact value', exactF)
fprintf('Romberg Integration: %11.8f \n', If)

%% 
g = @(x) (x.^2).*log(x);
b2 = 1.5;
a2 = 1;
n = 3;

fprintf('************************************************\n')
fprintf('Integrate x^2*log(x) from 1 to 1.5\n')

exactG = integral(g,a2,b2);
Ig = romberg(g,a2,b2,n);
fprintf('%19s: %11.8f \n','Exact value', exactG)
fprintf('Romberg Integration: %11.8f \n', Ig)

%%
h = @(x) 2*x./(x.^2-4);
b3 = 1.6;
a3 = 1;
n = 6;
fprintf('************************************************\n')
fprintf('Integrate 2x/(x^2 -4) from 1 to 1.6)\n')

exactH = integral(h,a3,b3);
Ih = romberg(h,a3,b3,n);
fprintf('%19s: %11.8f \n','Exact value', exactH)
fprintf('Romberg Integration: %11.8f \n', Ih)









