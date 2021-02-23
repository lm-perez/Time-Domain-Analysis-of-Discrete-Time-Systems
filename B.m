%1)
x = @(n) n;
y0 = 2000;
y = @(x, yn) x + yn*1.02;

h = zeros(12);
h(1) = y0;

for t = 2:12    
    h(t) = y(x(t), h(t-1));
end

%2)
for t = 2:12    
    h(t) = y(x(0), h(t-1));
end
figure
stem(h)
title('Figure B.1: No Deposit Made in a Year ');
xlabel('months');
ylabel("Account Balance");
grid;


%3)
for t = 2:12    
    h(t) = y(x(t*100), h(t-1));
end
figure
stem(h)
title('Figure B.2: $100 Deposit Made each Month');
xlabel('months');
ylabel("Account Balance");
grid;
