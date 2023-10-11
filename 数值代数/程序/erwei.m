function w=erwei(n)
tic
a(n,n)=0;
a(1,n)=-1;
a(n,n)=4;
for p=1:n-1
    a(p,p)=5;
    a(p,p+1)=-2;
end
for q=n:-1:1
    x(q)=q;
end
    
b(n)=x(n)*a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:1:n
        sum=sum+a(i,j)*x(j);
    end
    b(i)=a(i,i)*x(i)+sum;
end

y(n)=b(n)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:1:n
        sum=sum+a(i,j)*y(j);
    end
    y(i)=(b(i)-sum)/a(i,i);
end

norm(x-y)
wasttime=toc
