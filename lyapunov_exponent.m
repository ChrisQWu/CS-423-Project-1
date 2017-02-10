function lyapunov_exponent
    two_dimensional_map
    three_dimensional_flow
end

function two_dimensional_map
    gamma = 0.3;
    
    J = @(r1) @(x) [-2*x(1), r1;
                     1     , 0 ];

    t_max = 1000;
    t_trans = 100;
    
    x0 = [0.135649; 0.546912];
    
    trajectory = @(r1) dynamical(x0(1), x0(2), r1, gamma, t_max);
    
    rhos = linspace(0, 1.5, 1000);
    
    exponents = arrayfun(...
        @(r1) track_exp(trajectory(r1), J(r1), t_trans, t_max), rhos);
    
    figure(); hold on;
    plot(rhos, exponents);
    xlabel('Rho')
    ylabel('Lyapunov Exponent')
    title('Lyapunov Exponents for 2D Dynamical Map')
    default_plot('figure4a');
end

function three_dimensional_flow
    alpha = 0.2;
    beta = 0.2;
    
    J = @(g1) @(x) [x(2) - g1 , x(1)  ,  0;
                    -1        , 0     , -1;
                     0        , 1     , beta]; % TODO: verify

    t_max = 10000;
    t_trans = t_max / 10;
    dt = 0.01;
    
    x0 = [0.5164;
          0.4568;
          0.8476];
    
    trajectory = @(g1) Dynamical_Flow(x0, alpha, beta, g1, dt, t_max);

    gammas = linspace(1, 10, 1000);
    
    exponents = arrayfun(...
        @(g1) track_exp(trajectory(g1), J(g1), t_trans, t_max), gammas);
    
    figure(); hold on;
    plot(gammas, exponents);
    xlabel('Gamma')
    ylabel('Lyapunov Exponent')
    title('Lyapunov Exponents for 3D Dynamical Flow')
    default_plot('figure4b');
end

function avg = track_exp(xs, J, t_trans, t_max)
    avg = 0;
    
    for idx = t_trans:t_max
        dx = xs(:, idx + 1) - xs(:, idx);
        fp = norm(J(xs(:, idx)) * dx) / norm(dx);
        avg = avg + log(abs(fp)) / (t_max - t_trans + 1);
    end
end
