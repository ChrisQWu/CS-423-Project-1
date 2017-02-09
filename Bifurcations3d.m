function Bifurcations3d
    n = 6000; %number of steps                       
    gammas = linspace(1.4,7.4,n);
%     betas = linspace(2,0.2,n);
    x0 = 0.5164;
    y0 = 0.4568;
    z0 = 0.8476;
    dt = 0.01;
    alpha = 0.2;
    beta = 0.2;
%     gamma = 5.7;
    figure();
    for i = 1:n
        [x,y,z] = Dynamical_Flow([x0;y0;z0],alpha,beta,gammas(i),dt,n);
        for k = 500:600%skip the transient values and plot the end points
%             f = x(k);
%             g = y(k);
            h = z(k);
            gamma = gammas(i);
            plot(gamma,h, '.b');
            hold on;
        end
    end
    xlabel('beta');
    ylabel('z');
    title(['Bifurcations w/ x_0 = ' num2str(x0) ', y_0 = ' num2str(y0) ', z_0 = ' num2str(z0) ', n = ' num2str(n) ]);

end