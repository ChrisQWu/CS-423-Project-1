function Bifurcations3d
    n = 1000; %number of steps                       
    gammas = linspace(0,30,n);
%     betas = linspace(2,0.2,n);
%     alphas = linspace(0.2,0.56,n);
    x0 = 0.5;
    y0 = 0.4;
    z0 = 0.3;
    dt = 0.01;
    alpha = 0.2;
%     beta = 0.2;
%     gamma = 5.7;
    figure();
    for i = 1:n
        [x,y,z] = Dynamical_Flow([x0;y0;z0],alpha,beta,gammas(i),dt,10000);
        plot(gammas(i), z(9900:10000),'.b','MarkerSize',1)
        hold on;
    end
    xlabel('\gamma');
    ylabel('z');
    title(['Bifurcations w/ x_0 = ' num2str(x0) ', y_0 = ' num2str(y0) ', z_0 = ' num2str(z0) ', n = ' num2str(n) ]);

end