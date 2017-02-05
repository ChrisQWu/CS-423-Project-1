n = 1000; %number of steps
gamma = 0.3;
ros = linspace(0.5,1.5,n);
%initial conditions
x0 = 0.135649;
y0 = 0.546912;
for i = 1:n
    xs = dynamical(x0,y0,ros(i),gamma,500);
    for k =450:500
        f = xs(k);
        ro = ros(i);
        plot(ro, f,'.b');
        hold on;
    end
end
xlabel('ro');
ylabel('F(x,y)');
title('Bifurcations w/ x_0 = 0.135649, y_0 = 0.546912, n = 1000');


