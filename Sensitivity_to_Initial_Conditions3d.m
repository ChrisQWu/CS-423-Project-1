function Sensitivity_to_Initial_Conditions3d
    n = 10000;
    ts = linspace(1,n,n);
    alpha = 0.2;
    beta = 0.2;
    gamma = 5.7;

    dt = 0.01;
    t = 100000;

    x0 = 0.5164;
    y0 = 0.4568;
    z0 = 0.8476;

    [x, y, z] = Dynamical_Flow([x0;y0;z0],alpha,beta,gamma,dt,t);
    f0 = y;
    
    x1 = 0.5164;
    y1 = 0.4568;
    z1 = 0.8477;
    
    [x, y, z] = Dynamical_Flow([x1;y1;z1],alpha,beta,gamma,dt,t);
    f1 = y;
    
    figure();
    plot(ts,f0(1:n),ts,f1(1:n))
    xlabel('time steps')
    ylabel('y values')
    title('Sensitivity to Initial Conditions in 3 dimensions')
    legend(['x_0 = ' num2str(x0) ', y_0 = '  num2str(y0) ', z_0 = '  num2str(z0)], ['x_0 = ' num2str(x1)  ', y_0 = ' num2str(y1) ', z_0 = '  num2str(z1)])
    
    default_plot('figure6a')
    
    figure();
    plot(ts,abs(f0(1:n)-f1(1:n)))
    xlabel('time steps')
    ylabel('\delta y')
    title('Difference of Plots')
    
    default_plot('figure6b')
end