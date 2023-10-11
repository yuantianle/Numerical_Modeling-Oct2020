function x=Gauss(A,b)
a=[A,b];
x=[];
n=length(a)-1;
for k=1:n
    for i=k+1:n
        c=a(i,k)/a(k,k);
        for j=k:n+1
            a(i,j)=a(i,j)-c*a(k,j);
        end
    end
end
x=huidai(a)