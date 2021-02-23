
% CT signal: z(t) = 5*e^(-t/8)*(u(t)-u(t-10))
% where t = -10 : 0.1 : 70

t = -10 : 0.1 : 70;

u = @(t) (1.*((t >= 0) & (t <= 70)));
z = @(t) (5.*(exp((-t) / 8)).*(u(t) - u(t-10)));
% stem(t, z(t));

% i) y3(t) = z(t/3)

y_3 = @(t) z(t/3);

figure(9);
stem(t, y_3(t));
title('Figure 9: y_{3}(t)');
xlabel('t'); ylabel('y_{3}(t)');

% ii) explain
% The functions y2[n] and y3(t) are not the same because the frequency
% sampling is different at every 0.1 interval, as shown in Figure 9, in 
% comparison to at every integer value, as shown in Figure 8.
