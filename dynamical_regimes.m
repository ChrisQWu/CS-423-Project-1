function dynamical_regimes
%dynamical_regimes Illustrate different dynamical behaviors.
%   Includes fixed points, limit cycles, and complex dynamics
%   for a dynamical map. Fig 1 (a-c)

t_max = 25;
[x, y] = dynamical(0.5, 0.5, 0.1, 1, t_max);
plot_behavior(0:t_max, x, y);

end

function plot_behavior(t, x, y)
    figure();
    yyaxis left;
    plot(t, x);
    ylabel('x_t');
    
    yyaxis right;
    plot(t, y);
    ylabel('y_t');
    
    legend('x', 'y');
    xlabel('Step');
end