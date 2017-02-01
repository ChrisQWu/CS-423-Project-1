ro = 1.29;%initial ro
gamma = 0.3;%initial

n = 100; %number of time steps
ts = linspace(1,n,n);

%initial conditions 1 and holder variables
x0 = 0.66;
y0 = 0.11;

%output of the first parameters
ys = dynamical(x0,y0,ro,gamma,n);
f0 = ys;

%initial conditions 2 and holder variables
x1 = 0.66;
y1 = 0.66;

%output of the second parameters
ys = dynamical(x1,y1,ro,gamma,n);
f1 = ys;

figure(2)
subplot(1,2,1);
plot(ts,f0,ts,f1)
xlabel('time steps')
ylabel('y values')
legend('x_0 = 0.66, y_0 = 0.11', 'x_0 = 0.66, y_0 = 0.66')

subplot(1,2,2);
plot(ts,abs(f0-f1))
xlabel('time steps')
ylabel('difference in y values')