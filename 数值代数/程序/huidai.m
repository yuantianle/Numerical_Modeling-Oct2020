function x=huidai(a)
n=length(a)-1;
for i=n:-1:1
    s=0;
    if i==n
        x(i)=(a(n,n+1)-s)/a(n,n);
    else
        for j=n:-1:i
            s=s+a(i,j)*x(j);
        end
        x(i)=(a(i,n+1)-s)/a(i,i);
    end
end