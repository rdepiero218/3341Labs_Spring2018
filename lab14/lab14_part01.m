% Math 3341, Spring 2018
% Lab 14, Part I

% solving a linear ode

clear; close all;
dydt = @(t,y) -y - 5*exp(-t)*sin(5*t);
tspan = [0 3];   % solution interval
yzero1 = 1;      % initial condition

[tsol1,ysol1] = ode45(dydt,tspan,yzero1);

% add two additional solutions curves here

%-------------------------
% data for direction field
%-------------------------
n = 4;
tpts = linspace(0,3,n);
ypts = linspace(-1,1,n);
[t,y] = meshgrid(tpts, ypts);
pt = ones(size(y));
py = -y - 5*exp(-t).*sin(5*t);

%-------------------------
% plot direction field and solution curves
%-------------------------
f1 = figure(1);
quiver(t,y,pt,py,1.5);
hold on
plot(tsol1,ysol1,'LineWidth',1.25)

% plot additional solution curves here

%
title('dy/dt = -y - 5e^{-t}sin(5t)', 'FontWeight','normal')
xlabel('t'), ylabel('y','Rotation',0)
xlim([0 3.15]), ylim([-1.25 1.1])
legend('y''(t)', 'y_0 = 1')
% save figure as .eps
saveas(f1,'lab14part01','epsc')

