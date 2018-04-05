% Math 3341, Spring 2018
% Lab 10
clear; close all;

M = membrane; % generates matlab logo

f1 = figure(1);
set(gcf, 'Position', [1 1 1000 500]);

subplot(2,2,1)
colormap(gca, jet)
surf(M)
shading interp

title('jet','FontSize',14)
xlabel('x'), ylabel('y'), zlabel('z')

% repeat 3 more times so that you have a 4 by 4 figure
% change the colormap for each subplot, listing the name
% of the colormap in the title of each subplot

% due to size of data in this image you need to save
% as a .png file rather than .eps

saveas(f1,'lab10plot','png') 