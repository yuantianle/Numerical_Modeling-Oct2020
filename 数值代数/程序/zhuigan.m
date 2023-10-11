clear
n=11;
for i=1:n
    a(i)=h^2*q(x(i))+2;
    for j=1:n-1
        w(j)=-1;
        for k=2:n
            c(k)=-1;
        end
    end
end
for i=1:n
    r(i)=1;
end
f(1)=a(1)*r(1)+w(1)*r(2);
for i=2:n-1
    f(i)=c(i)*r(i-1)+a(i)*r(i)+w(i)*r(i+1);
end
f(n)=c(n)*r(n-1)+a(n)*r(n);
d(1)=a(1);
for i=2:n
    m(i)=c(i)/d(i-1);
    d(i)=a(i)-m(i)*w(i-1);
end
y(1)=f(1);
for i=2:n
    y(i)=f(i)-m(i)*y(i-1);
end
x(n)=y(n)/d(n);
for j=n-1:-1:1
    x(j)=(y(j)-w(j)*x(j+1))/d(j);
end
m(0)=-1;
for i=1:n-1
    m(i)=m(i-1)+h;
    u(i)=1./(m+2);
end
    plot(u,x,'*r')
    
    