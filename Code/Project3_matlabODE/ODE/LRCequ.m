function dx=LRCequ(t,x)
dx = [x(2); 10*cos(100*t)-20*x(2)-x(1)/50];
end