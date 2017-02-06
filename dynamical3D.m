function [x,y,z] = dynamical3D(x0,y0,z0,alpha,beta,gamma,t)
    %x-prime, y-prime, z-prime
    x = [x0; zeros(t,1)];
    y = [y0; zeros(t,1)];
    z = [z0; zeros(t,1)];
    
    for n = 2:t+1
        x(n) = x(n-1)*y(n-1) - x(n-1)*gamma + alpha;
        y(n) = -z(n-1) - x(n-1);
        z(n) = beta*z(n-1) + y(n-1);
    end
end