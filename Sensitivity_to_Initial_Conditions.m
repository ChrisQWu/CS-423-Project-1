function Sensitivity_to_Initial_Conditions
    ro = 1.29;%initial ro
    gamma = 0.3;%initial

    n = 100; %number of time steps
    ts = linspace(1,n,n);

    %initial conditions 1 and holder variables
    x0 = 0.618549;
    y0 = 0.651234;

    %output of the first parameters
    y = dynamical(x0,y0,ro,gamma,n);
    f0 = y;

    %initial conditions 2 and holder variables
    x1 = 0.618549;
    y1 = 0.651233;

    %output of the second parameters
    y = dynamical(x1,y1,ro,gamma,n);
    f1 = y;
    
    default_plot('figure2a')
    figure();
    plot(ts,f0(1:n),ts,f1(1:n))
    xlabel('time steps')
    ylabel('y values')
    title('Sensitivity to Initial Conditions in 2 dimensions')
    legend(['x_0 = ' num2str(x0) ', y_0 = '  num2str(y0)], ['x_0 = ' num2str(x1)  ', y_0 = ' num2str(y1)])
    
    default_plot('figure2b')
    figure();
    plot(ts,abs(f0(1:n)-f1(1:n)))
    xlabel('time steps')
    ylabel('difference in y values')
    title('Difference of Plots')
end



