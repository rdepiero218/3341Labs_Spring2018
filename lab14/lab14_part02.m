% Math 3341, Spring 2018
% Lab 14, Part II
% solving a system of ODEs with ode45

clear; close all;
% define ODE


% set parameters for problem
init = [-1, 4, 1, 1]; % initial conditions
tstep = 0.01;   % step size
tspan = [0 15];  % t interval

%------------------------
%%% solve ode here
%------------------------



%%% store each solution vector here for easy plotting
% y1t = 
% y2t = 
% y3t = 
% y4t = 

% % %------------------------
% % % plot commands
% % %------------------------
% f1 = figure(1);
% movegui('west')
% s1 = subplot(2,1,1);
% plot(t, y1t,'k','LineWidth',2)
% hold on
% plot(t, y2t,'r','LineWidth',2)
% grid on
% title('y_1(t) and y_2(t) vs. t','FontSize', 14)
% legend('y_1(t)','y_2(t)')
% xlabel('\bf t','FontSize', 12), ylabel('\bf y','FontSize', 12)
% %----------
% s2 = subplot(2,1,2);
% plot(t, y3t,'b','LineWidth',2)
% hold on
% plot(t, y4t,'m','LineWidth',2)
% grid on
% title('y_3(t) and y_4(t) vs. t','FontSize', 14)
% legend('y_3(t)','y_4(t)')
% xlabel('\bf t','FontSize', 12), ylabel('\bf y','FontSize', 12)
% 
% linkaxes([s2,s1],'xy') % sets subplots with same x & y axes
% %-----------------------
% f2 = figure(2);
% movegui('east')
% plot(y1t, y3t, 'b','LineWidth',2)
% grid on
% title('y_1(t) and y_3(t) vs. t','FontSize', 14)
% xlabel('\bf y_1(t)','FontSize', 12), ylabel('\bf y_3(t)','FontSize', 12)
% %-----------------------
% % save figures as .eps files
% saveas(f1, 'lab14part2_1','epsc')
% saveas(f2, 'lab14part2_2','epsc')