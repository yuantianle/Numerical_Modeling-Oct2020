clear
N=20;
k=0;
a=[5,1,-1,-2;2,8,1,3;1,-2,-4,-1;-1,3,2,7];
b=[-2,-6,6,12];
ToL=0.0000005;
n=length(b);
for i=1:n
    y(i)=1;
end
while k<=N
for i=1:n
    x(i)=y(i);
end
for i=1:n
    sum=0;
    for j=1:i-1
        sum=sum+a(i,j)*y(j);
    end
    total=0;
    for j=i+1:n
        total=total+a(i,j)*x(j);
    end

y(i)=(b(i)-(sum+total))/a(i,i);
end
if norm(y-x)<ToL
        break;
    end
    k=k+1;
end
    fprintf('The solution is :')
        y
        k
        norm(x-y)
