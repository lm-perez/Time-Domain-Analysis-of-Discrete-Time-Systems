%Part C

%1) and 2)

% apply max filter on x[n]
% length of input (n = ) to 45)
% plot for N = 4, N = 8, N = 12
% x[n] = cos(pi*n/5) + delta[n-20] - delta[n-35]
% delta = @(n) (1.*(n > 2) & (n < 4));

 n = (0 : 45);
 x = @(n)cos(pi*n/5) + ((n-20) == 0) - ((n-35) == 0);
 
 % N = 4
 y_1 = max_filter(x(n),4);
 
 % plot for input
 figure(1);
 subplot(2,1,1);
 stem(n,x(n));
 title('Input: x[n] = cos(\pi*n/5) + \delta[n-20] - \delta[n-35]');
 grid; xlabel('n'); ylabel('x[n]');
 
 % N = 4 plot
 subplot(2,1,2);
 stem(n,y_1);
 title('4-Point Filter (N = 4)');
 grid; xlabel('n'); ylabel('y_{1}[n]');
 
 % N = 8
 y_2 = max_filter(x(n),8);
 
 % plot for input
 figure(2);
 subplot(2,1,1);
 stem(n,x(n));
 title('Input: x[n] = cos(\pi*n/5) + \delta[n-20] - \delta[n-35]');
 grid; xlabel('n'); ylabel('x[n]');
 
 % N = 8 plot
 subplot(2,1,2);
 stem(n,y_2);
 title('8-Point Filter (N = 8)');
 grid; xlabel('n'); ylabel('y_{2}[n]');
 
 % N = 12
 y_3 = max_filter(x(n),12);
 
 % plot for input
 figure(3);
 subplot(2,1,1);
 stem(n,x(n));
 title('Input: x[n] = cos(\pi*n/5) + \delta[n-20] - \delta[n-35]');
 grid; xlabel('n'); ylabel('x[n]');
 
 % N = 12 plot
 subplot(2,1,2);
 stem(n,y_3);
 title('12-Point Filter (N = 12)');
 grid; xlabel('n'); ylabel('y_{3}[n]');
 
function y = max_filter(x,N);

x_1 = [zeros(1, N-1) x]; % pads the input vector with N-1 zeros
y_1 = zeros(1, length(x_1)); 

for n = N : length(x_1)
    y_1(n) = max(x_1(n - (N-1) : n));
end

y = y_1(N : end);

end