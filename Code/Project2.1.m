r= 1; % growth rate
h0=0.4;
k=200;% carrying capacity
ddefun=@(t,x,z)[(r*x(1)*(1-x(1)/k)-h0*z(1,1))
(r*x(2)*(1-x(2)/k)-h0*z(2,2))
(r*x(3)*(1-x(3)/k)-h0*z(3,3))
(r*x(4)*(1-x(4)/k)-h0*z(4,4))
(r*x(5)*(1-x(5)/k)-h0*z(5,5))];
lags=[1,1.25,1.5,2,3];
history=@(t)ones(5,1);
tspan=[0,4];
sol=dde23(ddefun,lags,history,tspan);
plot(sol.x,sol.y,’LineWidth’,2); ylim([0, 30]);
title(’The behavior of the fish population’);xlabel(’t’);ylabel(’X(t)’);
legend(’Time lag=1’,’Time lag=1.25’,’Time lag=1.5’,’Time lag=2’,’Time lag=3’);