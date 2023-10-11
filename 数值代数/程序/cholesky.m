function x=cholesky(a,b)
n=length(b);
l=0;
l(1,1)=sqrt(a(1,1));
for i=2:1:n
    l(i,1)=a(i,1)/l(1,1);
end
for j=2:1:n
        sum=0;
        for k=1:j-1
            sum=sum+l(j,k)^2;
        end
        l(j,j)=sqrt(a(j,j)-sum);
        for i=j+1:n
            sum=0;
            for k=1:j-1
                sum=sum+l(i,k)*l(j,k);
            end
            l(i,j)=(a(i,j)-sum)/l(j,j);
        end
end
y=0;
y(1)=b(1)/l(1,1);
for i=2:n
    sum=0;
    for k=1:i-1
        sum=sum+l(i,k)*y(k);
    end
    y(i)=(b(i)-sum)/l(i,i);
end
 x(n)=y(n)/l(n,n);
 for i=n-1:-1:1
     sum=0;
     for k=i+1:n
         sum=sum+l(k,i)*x(k);
     end
     x(i)=(y(i)-sum)/l(i,i);
 end
 
 
