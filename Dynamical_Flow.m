function [x,y,z] = Dynamical_Flow(x0, alpha, beta, gamma, dt, steps)
    dx_dt_step = @(x) x + dt * [x(1) * (x(2) - gamma) + alpha;
                                -(x(1) + x(3));
                                x(2) + beta * x(3)];

    x = calc_iters(dx_dt_step, x0, steps);
    
    if nargout == 3
        y = x(2,:);
        z = x(3,:);
        x = x(1,:);
    end
end