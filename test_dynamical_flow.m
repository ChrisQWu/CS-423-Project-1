alpha = 0.2;
beta = 0.2;
gamma = 5.7;

% alpha = 0.1;
% beta = 0.1;
% gamma = 14;

dt = 0.01;
t = 100000;

x0 = 0.5164;
y0 = 0.4568;
z0 = 0.8476;

[x,y,z] = Dynamical_Flow([x0;y0;z0],alpha,beta,gamma,dt,t);

figure();
% subplot(2,1,1);
plot3(x,y,z)
% hold on;

%%%%TESTING LYAPUNOV IN 3D%%%%%%%
% gammas = linspace(0.5,1.5,10000);
% lyapunov3d = lyapunov_exponent3d(9900,10000, alpha,beta,gammas, x0, y0, z0);
% subplot(2,1,2);
% plot(gammas,lyapunov3d)
% hold on;
% plot3(gammas,zeros(t,1),zeros(t,1))