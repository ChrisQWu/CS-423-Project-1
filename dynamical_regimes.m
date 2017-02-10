function dynamical_regimes
%dynamical_regimes Illustrate different dynamical behaviors.
%   Includes fixed points, limit cycles, and complex dynamics
%   for a dynamical map. Fig 1 (a-c)
    close all;
    set(groot, 'defaultfigurecolor', 'white');
    set(groot, 'defaultlinelinewidth', 1);
    set(groot, 'defaultaxeslinewidth', 1);
    
%     x0 = [0.4, 0.5, 0.6];
%     y0 = [0.4, 0.5, 0.6];
%     rho = linspace(0.1, 0.9, 4);
%     gamma = linspace(0.1, 0.9, 4);
% 
%     [xi, yi, ri, gi] = ndgrid(1:numel(x0), 1:numel(y0), 1:numel(rho), 1:numel(gamma));
% 
%     for p = [x0(xi(:)'); y0(yi(:)'); rho(ri(:)'); gamma(gi(:)')]
%         disp(p);
%         plot_behavior(p(1), p(2), p(3), p(4), 50)
%         disp('--------');
%     end
    
    % Fixed Point
    figure();
    plot_behavior(0.5, 0.4, 0.3667, 0.1, 35,1);
% different x,y values for fixed point    
%     0.4000
%     0.5000
%     0.3667
%     0.1000

    % Limit Cycle
    figure();
    plot_behavior(0.4, 0.6, 0.3667, 0.3667, 65, 10);
%     default_plot('test');
    figure();
    plot_behavior(0.4, 0.4, 0.9, 0.1, 5000, 4950);
% Complex
%     0.4000
%     0.4000
%     0.6333
%     0.1000

%     0.4000
%     0.4000
%     0.9000
%     0.1000

%     0.4000
%     0.4000
%     0.9000
%     0.3667

%     0.4000
%     0.5000
%     0.9000
%     0.6333

%     0.6000
%     0.4000
%     0.1000
%     0.9000
end

function plot_behavior(x0, y0, rho, gamma, t_max, t_start)
    [x, y] = dynamical(x0, y0, rho, gamma, t_max);
    
    if ~exist('t_start', 'var')
        t_start = 0;
    end
    
    t = t_start:t_max+1;
    
    figure(); hold on; 
    yyaxis left;
    plot(t, x(t), 'o-');
    ylabel('x_t');
    
    yyaxis right;
    plot(t, y(t), 'x--');
    ylabel('y_t');
    
    axis tight;
    
    legend('x', 'y');
    xlabel('Step');
    title([num2str(x0) ' ' num2str(y0) ' ' num2str(rho) ' ' num2str(gamma)]);

%     uiwait;
end