function [xs,ys] = dynamical(x0, y0, ro, gamma, t)
    xs = zeros(t,1);
    ys = zeros(t,1);
    x = x0;
    y = y0;
    for n = 1:t
        xs(n) = ro - x^2 + gamma * y;
        ys(n) = x;
        x = xs(n);
        y = ys(n);
    end
end