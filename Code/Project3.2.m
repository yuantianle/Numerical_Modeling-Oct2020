tspan=[0 1];
n = 10;
L = 1;
h = L/n;
x = 0:h:L;
u0 = 10.*x+5.*(sin(2*pi.*x)).^2;
tic;
[t,u]=ode23s(@odefun,tspan,u0);
time = toc;
mesh(x,t,u);

title(’The behavior of the fish population’);
xlabel(’length’);ylabel(’time’); zlabel(’temperature’);
title([’The Temperature Changing for N = ’ num2str(n) ’ uses ’ num2str(time) ’
seconds.’]);
function dudt = odefun(t,u)
n = 11;
L = 1;
h = L/n;
K = 0.1;
dudt = zeros(n,size(u,2)); %preallocate space
i = 2;
dudt(i,:)= K*(-2*u(i,:)+u(i+1,:))/(h^2);
i = 2:1:n-2;
dudt(i,:)= K*(u(i+1,:)-2*u(i,:)+u(i-1,:))/(h^2);
i = n-1;
dudt(i,:)= K*(-2*u(i,:)+u(i-1,:))/(h^2);
b = zeros(n,1);
b(2) = 0;
b(n-1) = 10;
i = 1:n;
dudt(i,:) = dudt(i,:)+ (K/h^2*b(i,:));
end