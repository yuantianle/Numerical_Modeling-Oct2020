function [A,z,f]=matrix(n)
for i=1:n
    z(i)=1;
end
for i=1:n
    A(i,i)=-5;
end
for i=2:n
    A(i,i-1)=1;
end
for i=2:n-1
    A(i-1,i)=1;
end
f(1)=A(1,1)*z(1)+A(1,2)*z(2);
for i=2:n-1
    f(i)=A(i,i-1)*z(i-1)+A(i,i)*z(i)+A(i,i+1)*z(i+1);
end
f(n)=A(n,n-1)*z(n-1)+A(n,n)*z(n);