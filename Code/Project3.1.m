n1 = 10;
n2 = 50;
n3 = 80;
n4 = 100;
n5 = 200;
x = [n1,n2,n3,n4,n5];
y = [constant(n1),constant(n2),constant(n3),constant(n4),constant(n5)];
semilogy(x,y,’*-’);
xlabel (’n’)
ylabel(’Time Constant’);
function stiffness = constant(n)
L = 1;
h = L/n;
K = 0.1;
b = diag(repmat([-2],1,(n-2)))+diag(repmat([1],1,(n-3)),1)+diag(repmat([1],1,
(n-3)),-1);
A = K/h^2.*b;
Emax = abs(max(eig(A)));
Emin = abs(min(eig(A)));
stiffness = Emax/Emin;
end