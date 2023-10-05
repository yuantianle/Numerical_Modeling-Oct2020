function dx=myequ3(t,x)
dx = [x(2); 1000*( 1 - x(1) ^ 2) * x(2) - x(1)];
end