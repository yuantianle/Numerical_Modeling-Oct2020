function [a,b,c]=transform(A,n)
b(1)=A(1,1);
c(1)=A(2,1);
for i=2:n-1
    a(i)=A(i,i-1);
    b(i)=A(i,i);
    c(i)=A(i,i+1);
end
a(n)=A(n,n-1);
b(n)=A(n,n);