function [x, y] = dynamical(x0, y0, rho, gamma, t)
    x = [x0; zeros(t,1)];
    y = [y0; zeros(t,1)];

    for n = 2:t+1
        x(n) = rho - x(n-1)^2 + gamma * y(n-1);
        y(n) = x(n-1);
    end
end