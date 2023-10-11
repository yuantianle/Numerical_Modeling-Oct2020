clear
tic
n=100000000
for i=2:n-1
    a(i,i)=-5;
    a(i,i-1)=1;
    a(i,i+1)=1;
end
a(1,2)=1;
a(n,n)=-5;
a(1,1)=-5;
a(n,n-1)=1;
for i=1:n
    r(i)=1;
end
b(1)=a(1,1)*r(1)+a(1,2)*r(2);
for i=2:n-1
    b(i)=a(i,i-1)*r(i-1)+a(i,i)*r(i)+a(i,i+1)*r(i+1);
end
b(n)=a(n,n-1)*r(n-1)+a(n,n)*r(n);
 

detA=1;
q=0;
for k=1:1:n-1
     s=0;
     for i=k:1:n
           if(abs(a(i,k))>s)
                 s = abs(a(i,k));
                 q=i;
           end
     end
     if(a(q,k)==0)
             return ;
     end
     if(q~=k)
           for j=k:1:n
                 temp = a(k,j);
                 a(k,j) = a(q,j);
                 a(q,j) = temp;
           end     
           temp = b(k);
           b(k)   = b(q);
           b(q)   =  temp;
           detA = -1*detA;
     end
      for i=k+1:1:n
                       a(i,k)=a(i,k)/a(k,k); 
                       for j=k+1:1:n
                                a(i,j)=a(i,j)-a(i,k)*a(k,j);
                       end
                     b(i)=b(i)-a(i,k)*b(k);
      end
  detA = detA*a(k,k);
end
  if(a(n,n)==0)
      return ;
  else
      detA  =detA *a(n,n);
  end
  a
 x(n)=b(n)/a(n,n);
   for i=n-1:-1:1
       sum=0;
       for j=i+1:1:n
           sum=sum+a(i,j)*x(j);
       end
       x(i)=(b(i)-sum)/a(i,i);
   end
   x
   norm(x-r)
wasttime=toc