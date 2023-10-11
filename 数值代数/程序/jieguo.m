clear
for i=1:100
    [a,b]=matrix(10*i);
    x=cholesky(a,b)
end
for j=1:100
    [c,d]=matrix2(10*i);
    y=cholesky(c,d)
end