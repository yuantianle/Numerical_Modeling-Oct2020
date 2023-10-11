clear
n=10;
h=0.2;
m(1)=-1;
for i=2:10
    m(i)=m(i-1)+h;
end
for i=1:n-1
    a(i)=h^2*q(m(i))+2;
end
for i=1:n-2
    c(i)=-1;
end
for i=2:n-1
    w(i)=-1;
end
%输入想求的阶数，输出，阶数，时间，误差（默认小数点后六位）
for i=1:n
    r(i)=1;
end
f(1)=w(1)*r(1)+c(1)*r(2);
for i=2:n-1
    f(i)=w(i)*r(i-1)+a(i)*r(i)+c(i)*r(i+1);
end
f(n)=w(n)*r(n)+a(n)*r(n);
%step 1追
beta(1)=a(1);
for i=2:n
    alpha(i)=w(i)/beta(i-1);
    beta(i)=a(i)-alpha(i)*c(i-1);
end
%step 2追
y=0;
y(1)=f(1);
for i=2:n
    y(i)=f(i)-alpha(i)*y(i-1);
end
%step 3赶
x=0;
x(n)=y(n)/beta(n);
for i=n-1:-1:1
    x(i)=(y(i+1)-c(i)*x(i+1))/beta(i)
end
for i=1:10
    p(i)=1./(m(i)+2);
end
 plot(p,x,'*r')
