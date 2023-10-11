function [a,b]=matrix2(n)
for i=1:n
    for j=1:n
        a(i,j)=1/(i+j-1);

    end
    x(i)=1;
end
a=vpa(a,3);
x=x'
b=a*x;
for i=1:n
    b(i)=round(b(i),-3)
end
