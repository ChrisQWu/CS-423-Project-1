ro = 1.29;%initial ro
gamma = 0.3;%initial

n = 6000; %number of time steps
ts = linspace(1,n,1);

%initial conditions 1
x0 = 0.666114762;
y0 = 0.111516464;

%initialize using first variables
xt0 = ro - x0 + gamma*y0;
yt0 = xt0;

%output of the first parameters
f0 = zeros(1,n);
f0(1) = yt0;

%initial conditions 2
x1 = 0.136486564;
y1 = 0.664654943;

%initialize using second variables
xt1 = ro - x1 + gamma*y1;
yt1 = xt1;

%output of the second parameters
f1 = zeros(1,n);
f1(1) = yt1;

for t=2:n
    xt0 = ro - xt0 + gamma*yt0;
    yt0 = xt0;
    
    xt1 = ro - xt1 + gamma*yt1;
    yt1 = xt1;
    
    f0(t) = yt0;
    f1(t) = yt1;
end


subplot(1,2,1)
plot(f0,ts,f1,ts)