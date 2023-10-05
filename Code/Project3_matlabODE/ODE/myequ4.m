function dx=myequ4(t,x,a,b)
dx = [x(2); 1000*( 1 - a* x(1) ^ 2) * x(2) - b * x(1)];
end