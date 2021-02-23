%Part A

%1)
% shifting and time reversal transformations on a discrete time signal

% domain
n = -25 : 1 : 25;

% i) delta[n-3]
delta = @(n) (1.*(n > 2) & (n < 4));

figure(1);
stem(n, delta(n));
title('Figure 1: \delta[n-3]');
xlabel('n'); ylabel('\delta[n-3]');
% ii) u[n+1]

% u[n] before shift
u = @(n) (1.*((n >= 0) & (n <= 25)));
% u[n+1]
u_shift = @(n) (1.*((n >= -1) & (n <= 25)));

figure(2);
stem(n, u_shift(n));
title('Figure 2: u_{shift}[n+1]');
xlabel('n'); ylabel('u_{shift}[n-3]');
% iii) x[n] = cos(pi*n/5)*u[n]

x = @(n) cos((pi.*n) / 5).*u(n);

figure(3);
stem(n, x(n));
title('Figure 3: x[n] = cos(\pi*n/5)*u(n)');
xlabel('n'); ylabel('x[n]');
% iv) x1[n] = x[n-3]

x_2 = @(n) x(n-3);

figure(4);
stem(n, x_2(n));
title('Figure 4: x_{1}[n] = x[n-3]');
xlabel('n'); ylabel('x_{1}[n]');
% v) x2[n] = x[-n]

x_2 = @(n) x(n);

figure(5);
stem(n, x(-n));
title('Figure 5: x_{2}[n] = x[-n]');
xlabel('n'); ylabel('x_{2}[n]');

%The function x1[n] is a transformation of x[n] shifted to the right by three; whereas x2[n] is a time reversal of x[n].