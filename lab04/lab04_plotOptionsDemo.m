% Math 3341, Spring 2018
% This script generates 4 plots demonstrating 
% the basics of plotting including color selection, 
% marker options, legends, etc.

clear, close all
%------------------------
% Test functions for plots
%------------------------
x = linspace(1,10,5);
y1 = x+1;
y2 = x+2;
y3 = x+3;
y4 = x+4;
y5 = x+5;
y6 = x+6;
y7 = x+7;
%------------------------
% forces figure window to open as almost full screen
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
%------------------------
% 7 Default Cycle colors
%------------------------
f1 = figure(1);
subplot(2,2,1)
plot(x,y1,'-','LineWidth',2),
hold on
plot(x,y2,'-','LineWidth',2)
plot(x,y3,'-','LineWidth',2)
plot(x,y4,'-','LineWidth',2)
plot(x,y5,'-','LineWidth',2)
plot(x,y6,'-','LineWidth',2)
plot(x,y7,'-','LineWidth',2)
legend({'1st','2nd','3rd','4th','5th','6th','7th'}, 'Location','SouthEast')
title('The 7 Default MATLAB colors','FontSize',14)
%------------------------
% Standard Matlab colors
%------------------------
subplot(2,2,2)
plot(x,y1,'r-','LineWidth',2),
hold on
plot(x,y2,'g-','LineWidth',2)
plot(x,y3,'b-','LineWidth',2)
plot(x,y4,'c-','LineWidth',2)
plot(x,y5,'m-','LineWidth',2)
plot(x,y6,'y-','LineWidth',2)
plot(x,y7,'k-','LineWidth',2)
legend({'red','green','blue','cyan','magenta','yellow','black'}, 'Location','SouthEast')
title('Pre-defined Line Colors','FontSize',14)
%------------------------
% Example Markers
%------------------------
subplot(2,2,3)
plot(x,y1,'k-o','LineWidth',1),
hold on
plot(x,y2,'k-*','LineWidth',1)
plot(x,y3,'k-+','LineWidth',1)
plot(x,y4,'k-x','LineWidth',1)
plot(x,y5,'k-s','LineWidth',1)
plot(x,y6,'k-d','LineWidth',1)
plot(x,y7,'k-^','LineWidth',1)
xlabel('x')
ylabel('y')
title('Marker Types','FontSize',14)
legend({'circle','asterisk','plus','cross','square','diamond','up triangle'}, 'Location','SouthEast')
%------------------------
% Options for Markers
%------------------------
subplot(2,2,4)
plot(x,y1,'k-o','LineWidth',1, 'MarkerSize',10,'MarkerFaceColor', 'y', 'MarkerEdgeColor','k'),
hold on
plot(x,y2,'k-*','LineWidth',1,'MarkerSize',10,'MarkerFaceColor', 'g', 'MarkerEdgeColor','b')
plot(x,y3,'k-+','LineWidth',1,'MarkerSize',10, 'MarkerEdgeColor','m')
plot(x,y4,'k-x','LineWidth',1,'MarkerSize',10, 'MarkerEdgeColor','r')
plot(x,y5,'k-s','LineWidth',1, 'MarkerSize',10,'MarkerFaceColor', 'r', 'MarkerEdgeColor','b')
plot(x,y6,'k-d','LineWidth',1, 'MarkerSize',10,'MarkerFaceColor', 'm', 'MarkerEdgeColor','k')
plot(x,y7,'k-^','LineWidth',1, 'MarkerSize',10,'MarkerFaceColor', 'g', 'MarkerEdgeColor','b')
xlabel('x')
ylabel('y')
title('Marker Options','FontSize',14)
legend('circle','asterisk','plus','cross','square','diamond','up triangle', 'Location','SouthEast')
%------------------------
% saves the figure produced by this script as 'plotOptions.eps'
saveas(f1,'plotOptions','epsc')
