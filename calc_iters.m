function xs = calc_iters(M, x0, steps)
%calc_iters Calculate iterations of a dynamical map or flow of arbitrary dimension.
%   M : dynamical system taking x(n-1) -> x(n)
%   x0 : a column vector of initial conditions.
%   steps : the number of iterations of M

    xs = [x0, repmat(zeros(size(x0)), 1, steps)];
    
    for n = 2:steps+1, xs(:, n) = M(xs(:, n-1)); end
end