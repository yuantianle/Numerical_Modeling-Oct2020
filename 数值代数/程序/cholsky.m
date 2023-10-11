function  x= cholsky(a,b)
%--------- 计算L的第 1列--------------
n=length(b);
l(1,1)=a(1,1)^(1/2);
for i=2:1:n
    l(i,1)=a(i,1)/l(1,1);
end
%--------- 计算L的第 1列--------------
%--------- 计算L的第 2,3，。。，n列--------------
    for k=2:1:n
    sum=0;
    for j=1:1:(k-1)
        sum=sum+l(k,j)^2;
    end
    l(k,k)=(a(k,k)-sum)^(1/2);
    
    for i=(k+1):1:n
        sum=0;
       for j=1:1:(k-1)
           sum = sum+l(i,j)*l(k,j);
       end
      l(i,k) =( a(i,k) - sum)/l(k,k);
    end
end
%--------- 计算L的第 2,3，。。，n列--------------
%-----------解下三角方程组Ly=b-----------------
y(1)=b(1)/l(1,1);
for i=2:1:n
    sum=0;
    for k=1:1:(i-1)
       sum=sum+l(i,k)*y(k);
    end
    y(i)=(b(i)-sum)/l(i,i);
end
%-----------解下三角方程组Ly=b-----------------
%-----------解上三角方程组L’ x=y-----------------
x(n)=y(n)/l(n,n);
for i=n-1:-1:1
    sum=0;
    for k=(i+1):1:n
       sum=sum+l(k,i)*x(k);
    end
    x(i)=(y(i)-sum)/l(i,i);
end


