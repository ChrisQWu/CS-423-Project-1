function dynamical_regimes
%dynamical_regimes Illustrate different dynamical behaviors.
%   Includes fixed points, limit cycles, and complex dynamics
%   for a dynamical map. Fig 1 (a-c)

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

    plot_behavior(0.5, 0.4, 0.3667, 0.1, 30);
    title('Fixed Point');
    default_plot('figure1a');

    plot_behavior(0.4, 0.6, 0.3667, 0.3667, 65, 10);
    title('Limit Cycle');
    default_plot('figure1b');

    plot_behavior(0.135649, 0.546912, 1.1, 0.3, 5000, 4900);
    title('Complex Behavior');
    default_plot('figure1c');
end

function plot_behavior(x0, y0, rho, gamma, t_max, t_start)
    [x, y] = dynamical(x0, y0, rho, gamma, t_max);

    if ~exist('t_start', 'var')
        t_start = 1;
    end

    t = t_start:t_max+1;

    figure(); hold on;
    yyaxis left;
    plot(t-1, x(t), 'o-');
    ylabel('x_t');

    yyaxis right;
    plot(t-1, y(t), 'x--');
    ylabel('y_t');

    axis tight;

    legend('x', 'y');
    xlabel('Step');
%     title([num2str(x0) ' ' num2str(y0) ' ' num2str(rho) ' ' num2str(gamma)]);
%     uiwait;
end
