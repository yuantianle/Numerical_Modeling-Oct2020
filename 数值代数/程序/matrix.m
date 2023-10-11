function [a,b]=matrix(n)
for i=1:n
    for j=1:n
        a(i,j)=1/(i+j-1);
    end
    x(i)=1;
end
x=x'
b=a*x
