%1)
%E = summation{|x(n)|^2}
%P = E/length of vector
%code for functions of energy and power are at the bottom of code

%2)
u = @(t) 1.0*(t>=0);
x = @(n) 3*n.*(u(n+3) - u(n-4));
t=[-3:3];

ENERGY(x(t))
POWER(x(t))
disp("The energy of the signal is 252J and the power of the signal is 36W");


%MATLAB Functions for 1)

function [energy] = ENERGY(a)
   e = abs(a).^2;
   energy = sum(e);
end

function [power] = POWER(a)
   power = ENERGY(a)/length(a);
end