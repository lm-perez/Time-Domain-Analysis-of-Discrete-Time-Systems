%Part A

%3)

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

%ii) The functions y2[n] and y3(t) are not the same because in discrete-time signals, 
%when they are being compressed, zeros are added in between existing points from the 
%original function. In y2[n], 2 zeros in between each points from y[n] were added; 
%however, in y3(t), since it is a continous time signal, the function includes all the signals possible with the time expansion. 