% Math 3341, Spring 2018
% lab09 script
%% Function and Data Information
clear; close all;
%---------------------------
% HW 04 function information 
%---------------------------
f = @(x) 1./(1+16*x.^2);
fp = @(x) (-32*x)./((16*x.^2+1).^2); % f'(x)    
fpp = @(x) (-32 + 1536.*x.^2)./((16*x.^2+1).^3); % f''(x)

xp = linspace(-1,1,100);
yp = f(xp);

yp_d1 = fp(xp);  % yvals for f'(x)
yp_d2 = fpp(xp); % yvals for f''(x)
n = 9;           % degree of polynomial desired
N = n+1;         % number of nodes needed

% Generate set of equispaced nodes
xdata = linspace(-1,1,10);
ydata = f(xdata);
ydata_d1 = fp(xdata);
ydata_d2 = fpp(xdata);


%% Part I: Polynomial Interpolation Routines

%%% ---------------------------
%%% Using polyfit
%%% ---------------------------
% p_coeff = ;
% p_yvals = ;

%%% ---------------------------
%%% Using spline
%%% ---------------------------
% sp = ;

%%% ---------------------------
%%% Using pchip
%%% ---------------------------
% pc = ;

%%% ---------------------------
%%% Using your own Lagrange interpoltation polynomial function
%%% ---------------------------
% lp = ;


%% Part II: Derivatives of interpolation polynomials
%%%---------------------------
%%% Derivatives using polyfit
%%%---------------------------
%%% find 1st derivative using polyfit
% pd1_coeff = ;
% pd1_yvals = ;
% pd1_ydata = ;

%%% find 2nd derivative using polyfit
% pd2_coeff = ;
% pd2_yvals = ;

%%%---------------------------
%%% Derivatives of spline
%%%---------------------------

% sp_struc = ; % stores structure of spline

%%% store the coefficients of the derivative
% b = ;   % store the coefficients of the derivative
% c = ;   % store the coefficients of the derivative
% d = ;   % store the coefficients of the derivative  

%%% find 1st derivative of spline
% sp_d1 = evalSplineDerivs( b, c, d, xdata, xp, 1 );

%%% find 2nd derivative of spline
% sp_d2 = evalSplineDerivs( b, c, d, xdata, xp, 2 );


%% plot interpolation polynomials
%---------------------------

% f1 = figure(1);
% % forces figure window to open as almost full screen
% set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
% %---------------------------
% % plot polyfit interpolation polynomial
% subplot(2,3,1);
% plot(xp, yp,'LineWidth',2) % plot original function
% hold on
% plot(xp, p_yvals,'-','LineWidth',1) % plot interp. polynomial
% plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
% title('Using polyfit function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f(x)','p(x)','Nodes'},'FontSize',12)
% %---------------------------
% % plots spline interpolation polynomial
% subplot(2,3,2);
% plot(xp, yp,'LineWidth',2) % plot original function
% hold on
% plot(xp, sp,'-','LineWidth',1) % plot  spline interp. polynomial
% plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
% title('Using spline function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f(x)','p(x)','Nodes'},'FontSize',12)
% %---------------------------
% % plots pchip interpolation polynomial
% subplot(2,3,3);
% plot(xp, yp,'LineWidth',2) % plot original function
% hold on
% plot(xp, pc,'-','LineWidth',1) % plot  spline interp. polynomial
% plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
% title('Using pchip function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f(x)','p(x)','Nodes'},'FontSize',12)
% %---------------------------
% % plots your lagrange interpolation polynomial
% subplot(2,3,4);
% plot(xp, yp,'LineWidth',2) % plot original function
% hold on
% plot(xp, lp,'-','LineWidth',1) % plot interp. polynomial
% plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
% title('Using my Lagrange Interpolation function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f(x)','p(x)','Nodes'},'FontSize',12)


%% Plot derivatives
% %---------------------------
% f2 = figure(2);
% % forces figure window to open as almost full screen
% set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
% %---------------------------
% % Polyfit Derivative Plots
% %---------------------------
% % plots polyfit interpolation polynomial
% subplot(2,3,1);
% plot(xp, yp,'LineWidth',2) % plot original function
% hold on
% plot(xp, p_yvals,'-','LineWidth',1) % plot interp. polynomial
% plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
% title('Using polyfit function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f(x)','p(x)','Nodes'},'FontSize',12)
% %---------------------------
% % plots 1st derivative of polyfit interpolation polynomial
% subplot(2,3,2);
% plot(xp, yp_d1,'LineWidth',2) % plot original function
% hold on
% plot(xp, pd1_yvals,'-','LineWidth',1) % plot interp. polynomial
% plot(xdata, ydata_d1,'ko','MarkerSize',8) % plot nodes
% title('Derivative of Polyfit Function','FontSize',14)
% xlabel('x'), ylabel('p''(x)')
% legend({'f''(x)','p''(x)','Nodes'},'FontSize',12)
% %---------------------------
% % plots 2nd derivative of polyfit interpolation polynomial
% subplot(2,3,3);
% plot(xp, yp_d2,'LineWidth',2) % plot original function
% hold on
% plot(xp, pd2_yvals,'-','LineWidth',1) % plot interp. polynomial
% plot(xdata, ydata_d2,'ko','MarkerSize',8) % plot nodes
% axis([-1 1 -35 15])
% title('2nd Derivative of Polyfit Function','FontSize',14)
% xlabel('x'), ylabel('p''(x)')
% legend({'f''''(x)','p''''(x)','Nodes'},'FontSize',12)
% %---------------------------
% % Spline Derivative Plots
% %---------------------------
% % plots spline interpolation polynomial
% subplot(2,3,4);
% plot(xp, yp,'LineWidth',2) % plot original function
% hold on
% plot(xp, sp,'-','LineWidth',1) % plot  spline interp. polynomial
% plot(xdata, ydata,'ko','MarkerSize',8) % plot nodes
% plot(xdata,0*xdata)
% title('Using spline function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f(x)','p(x)','Nodes'},'FontSize',12)
% %---------------------------
% % plots 1st derivative of spline interpolation polynomial
% subplot(2,3,5);
% plot(xp, yp_d1,'LineWidth',2) % plot original function
% hold on
% plot(xp, sp_d1,'-','LineWidth',1) % plot  spline interp. polynomial
% plot(xdata, ydata_d1,'ko','MarkerSize',8) % plot nodes
% axis([-1 1 -10 10])
% title('Derivative of function','FontSize',14)
% xlabel('x'), ylabel('p(x)')
% legend({'f''(x)','s''(x)'},'FontSize',12)
% %---------------------------
% % plots 2nd derivative of spline interpolation polynomial
% subplot(2,3,6);
% plot(xp, yp_d2,'LineWidth',2) % plot original function
% hold on
% plot(xp, sp_d2,'-','LineWidth',1) % plot  spline interp. polynomial
% plot(xdata, ydata_d2,'ko','MarkerSize',8) % plot nodes
% title('2nd Derivative of spline function','FontSize',14)
% xlabel('x'), ylabel('s''(x)')
% legend({'f''''(x)','s''''(x)'},'FontSize',12)
% 
% % save plots
% saveas(f1,'lab09plot1','epsc')
% saveas(f2,'lab09plot2','epsc')
