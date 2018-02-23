% Math 3341, Spring 2017
% Lab 04: Basic Plot Examples

clear, close all
%---------------------
% Plotting data
%---------------------
% given data
day = [1, 2, 3, 4, 5, 6, 7];
temp = [51, 55, 56, 56, 51, 49, 48];
% generate plot
fig1 = figure(1);         % creates a new figure window
plot(day, temp) 
xlabel('day')
ylabel('temperature')
title('Temperature Data')

%---------------------
% Plotting functions
%---------------------
x = linspace(0,3*pi,50);
y = cos(x);

% generate plot
fig2 = figure(2);
plot(x,y)
xlabel('x')
ylabel('y')
title('Plot of cos(x)')

%---------------------
% Plotting 2 functions on same plot
%---------------------
z = linspace(0,3*pi,50);
f = cos(z);
g = sin(z);

% generate plot
fig3 = figure(3);
plot(z,f)
hold on 
plot(z,g)
xlabel('x','FontSize', 12)
ylabel('y','FontSize', 12)
title('Plot of cos(x)','FontSize', 14)
legend({'f = cos(x)', 'g = sin(x)'}, 'FontSize', 12)