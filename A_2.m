
% effects of scaling on a discrete time signal

% domain
n = -10: 1: 70;

% i) y[n] = 5e^(-n/8)*(u[n]-u[n-10])

u = @(n) (1.*((n >= 0) & (n <= 70)));
y = @(n) (5.*(exp((-n) / 8)).*(u(n) - u(n-10)));

figure(6);
stem(n, y(n));
title('Figure 6: y[n]');
xlabel('n'); ylabel('y[n]');

% ii) y1[n] = y[3n]

y_2 = @(n) y(3.*n);

figure(7);
stem(n, y_2(n));
title('Figure 7: y_{1}[n]');
xlabel('n'); ylabel('y_{1}[n]');

% iii) y2[n] = y[n/3]

y_2 = @(n) y(n/3);

figure(8);
stem(n, y_2(n));
title('Figure 8: y_{2}[n]');
xlabel('n'); ylabel('y_{2}[n]');

% The effects on scaling for y1[n] and y2[n] is that y1[n] is y[n] compressed by a
% factor of 3; while y2[n] is expanded by a factor of 3.