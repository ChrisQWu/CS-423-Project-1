function exponents = lyapunov_exponent(t_trans, t_max, param1_range, param2, x0, y0)
    exponents = arrayfun(@(p1) track_exp(x0, y0, p1, param2, t_trans, t_max), param1_range);
end

function avg = track_exp(x0, y0, rho, gamma, t_trans, t_max)
    xs = dynamical(x0, y0, rho, gamma, t_max);
    avg = 0;
    
    for idx = t_trans:t_max
        dx = xs(:, idx + 1) - xs(:, idx);
        fp = norm(F_Jacobian(xs(:, idx), gamma) * dx) / norm(dx);
        avg = avg + log(abs(fp)) / (t_max - t_trans + 1);
    end
end

function J = F_Jacobian(x, gamma)
    J = [-2*x(1), gamma;
         1      , 0    ];
end
