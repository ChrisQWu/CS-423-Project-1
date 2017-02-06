function [x,y,z] = dynamical_flow(x0, alpha, beta, gamma, dt, steps)
    dx_dt_step = @(x) x + dt * [x(1) * (x(2) - gamma) + alpha;
                                -(x(1) + x(3));
                                x(2) + beta * x(3)];

    xs = calc_iters(dx_dt_step, x0, steps);
    x = xs(1,:); y = xs(2,:); z = xs(3,:);
end
