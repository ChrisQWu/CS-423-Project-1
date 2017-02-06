alpha = 0.2;
beta = 0.2;
gamma = 5.7;

% alpha = 0.1;
% beta = 0.1;
% gamma = 14;

t = 1000;

x0 = 0.5164;
y0 = 0.4568;
z0 = 0.8476;

[x,y,z] = dynamical3D(x0,y0,z0,alpha,beta,gamma,t);

figure(1);
plot3(x,y,z)