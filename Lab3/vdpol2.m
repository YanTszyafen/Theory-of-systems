function xdot=vdpol2(t,x)
xdot=[x(2)+sin(2*t);-4.*x(1)-3.*x(2)+sin(2*t)];
end