function Lyapunov_exponents
    t_max = 1000;
    t_trans = t_max - 100;
    ts = 1:t_max;
    ros = linspace(0.5,1.4,t_max);
    gamma = 0.3;
    x0 = 0.135649;
    y0 = 0.546912;
    exponents = lyapunov_exponent(t_trans, t_max, ros, gamma, x0, y0);
    figure();
    plot(ts,exponents);
    xlabel('time steps')
    ylabel('Lyapunov')
    title('Lyapunov Exponents for 2 dimensions')
    
end