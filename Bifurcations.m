function Bifurcations
    n = 1000; %number of steps
    gamma = 0.3;
    ros = linspace(0.5,1.4,n);%array of all ro's between the given range with
                               % n steps
    %initial conditions
    x0 = 0.135649;
    y0 = 0.546912;
    figure();
    for i = 1:n
        x = dynamical(x0,y0,ros(i),gamma,500);%get all x values of the 
                                            %logistic map
        
        plot(ros(i),x(450:500),'.b', 'MarkerSize',1)
        hold on;
    end
    xlabel('ro');
    ylabel('F(x,y)');
    title('Bifurcations w/ x_0 = 0.135649, y_0 = 0.546912, n = 1000');

end