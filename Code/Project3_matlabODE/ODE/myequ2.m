function dx=myequ2(t,x)
%dx = [x(2); (1-x(1)^2)*x(2)-x(1)];
dx = [x(2); x(1) - 2 * t / x(1)];
end