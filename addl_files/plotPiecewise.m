% Math 3341, Spring 2018
% Demonstrates how to plot a function piecewise
% with different colors for each 'piece'

clear; close all;

% simple function for plotting
f = @(x) -x.^2-1;
x = linspace(0,1,100);
y = f(x);

% Generate set of equispaced nodes
xdata = linspace(0,1,10);
ydata = f(xdata);

n = length(xdata)-1;
N = length(xdata);

% create vector of location of each node 
% (i.e. index value of each node in vector x)
index = zeros(1,N);
for i = 1:N
    index(i) = find(x==xdata(i));
end

f1 = figure(1);
hold on
% plot x and y on each interval defined by nodes
for j = 1:n
    plot(x(index(j):index(j+1)),y(index(j):index(j+1)),'LineWidth',3)
end
plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
title('Plotting Different Intervals of a Function','FontSize',14)
xlabel('x'), ylabel('f(x)')
legend({'f(x)','Nodes'},'FontSize',12)
