function Bifurcations3d
%     betas = linspace(2,0.2,n);
%     alphas = linspace(0.2,0.56,n);
    x0 = 0.5;
    y0 = 0.4;
    z0 = 0.3;
    dt = 0.01;
    t = 1000;
    alpha = 0.2;
    beta = 0.2;
%     gamma = 5.7;
    figure();
    for gamma = 0:0.01:45.0
        [x,y,z] = Dynamical_Flow([x0;y0;z0],alpha,beta,gamma,dt,t);
        plot(gamma, z((t-100):t),'.b','MarkerSize',1)
        hold on;
    end
    xlabel('\gamma');
    ylabel('z');
    title(['Bifurcations w/ x_0 = ' num2str(x0) ', y_0 = ' num2str(y0) ', z_0 = ' num2str(z0) ', t = ' num2str(t) ]);

end