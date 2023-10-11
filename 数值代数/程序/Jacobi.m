function [y,k]=Jacobi(A,b,Tol,N)
k=0;


n=length(b);
for i=1:n
    x(i)=1;
end
while k<=N
    for i=1:1:n
       sum=0;
        for j=1:1:n
            if j~=i
                 sum=sum+A(i,j)*x(j); 
            end
        end
        y(i)=(b(i)-sum)/A(i,i);
    end
    if norm(y-x)<Tol
        break;
    end
    k=k+1;
    for i=1:n
        x(i)=y(i);
    end
end
fprintf('The solution is :')
        y
        k