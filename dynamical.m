function [x, y] = dynamical(x0, y0, rho, gamma, t)
    map = @(x) [rho - x(1)^2 + gamma * x(2), x(1)];
    
    x = calc_iters(map, [x0; y0], t);
    
    if nargout == 2
        y = x(2,:).';
        x = x(1,:).'; % For now, output in the same format
    end
end
