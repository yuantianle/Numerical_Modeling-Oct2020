function u=yiwei(n)
tic

for i=1:n-1
a(i)=5;
w(i)=-2;
end
c=-1;
d=4;
for q=n:-1:1
    x(q)=q;
end
    
b(n)=x(n)*d;
sum=0;
for i=n-1:-1:2
    b(i)=a(i)*x(i)+w(i)*x(i+1);
end
   b(1)=a(1)*x(1)+w(1)*x(2)+c*x(n);

y(n)=b(n)/d;
for i=n-1:-1:2
    y(i)=(b(i)-w(i)*x(i+1))/a(i);
end
y(1)=(b(1)-w(1)*x(2)-c*x(n))/a(1);

norm(x-y)

wasttime=toc
