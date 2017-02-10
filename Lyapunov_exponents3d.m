function Lyapunov_exponents3d
    t_max = 10000;
    t_trans = t_max - 100;
    ts = 1:t_max;
    
    alpha = 0.2;
    beta = 0.2;
    gamma_range = linspace(0.5,1.4,t_max);

    x0 = 0.5164;
    y0 = 0.4568;
    z0 = 0.8476;
    
    max_lyapunov3d = lyapunov_exponent3d(t_trans,t_max, alpha, beta, gamma_range, x0, y0, z0);
    figure();
    plot(ts,max_lyapunov3d);
    xlabel('time steps')
    ylabel('Lyapunov')
    title('Lyapunov Exponents for 3 dimensions')
    
end