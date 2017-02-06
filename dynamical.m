function [x, y] = dynamical(x0, y0, rho, gamma, t)
    map = @(x) [rho - x(1)^2 + gamma * x(2), x(1)];
    
    xs = calc_iters(map, [x0; y0], t);
    x = xs(1,:).'; % For now, output in the same format
    y = xs(2,:).';
end
