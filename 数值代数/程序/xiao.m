function x=xiao(a,b)
n=length(b);
l(1,1)=power(a(1,1),1/2);
for k=2:1:n
    for i=2:1:n
    l(i,1)=a(i,1)/l(1,1);
    end
    s=0;
    for j=1:1:k-1
        s=s+power(l(k,j),2);
    end
    l(k,k)=power(a(k,k)-s,1/2);
    for i=k+1:1:n
        p=0;
        for j=1:1:k-1
            p=p+l(i,j)*l(k,j);
        end
        l(i,k)=(a(i,k)-p)/l(k,k);
    end
end
 
y=[];
y(1)=b(1)/l(1,1);
for i=2:1:n
    q=0;
    for k=1:1:i-1
        q=q+l(i,k)*y(k);
    end
    y(i)=(b(i)-q)/l(i,i);
end
 
x=[];
x(n)=y(n)/l(n,n);
for i=n-1:-1:1
    r=0;
    for k=i+1:1:n
        r=r+l(k,i)*x(k);
    end
    x(i)=(y(i)-r)/l(i,i);
end
