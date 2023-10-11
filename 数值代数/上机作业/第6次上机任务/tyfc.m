function [Time,n,u,r]=tyfc(n,a,b,alpha,beta)
tic;
h=(b-a)/n;
for i=1:n-1
    r(i)=1/(a+i*h+2);
end
for i=1:n-1
    z(i)=q(a+i*h);
end
for i=1:n-1
    a(i)=-1;
    b(i)=z(i)*(h^2)+2;
    c(i)=-1;
end
f(1)=yd(a+h)*(h^2)+alpha;
for i=2:n-2
    f(i)=yd(a+i*h)*(h^2);
end
f(n-1)=yd(a+(n-1)*h)*(h^2)+beta;
s(1)=b(1);
for i=2:n-1
    t(i)=a(i)/s(i-1);
    s(i)=b(i)-t(i)*c(i-1);
end
y(1)=f(1);
for i=2:n-1
    y(i)=f(i)-t(i)*y(i-1);
end
u(n-1)=y(n-1)/s(n-1);
for i=n-2:-1:1
    u(i)=(y(i)-c(i)*u(i+1))/s(i);
end
Time=toc;

