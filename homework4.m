%Joshua Ball
%R11330455 
%3304 - Matlab HW1
x = linspace(0,10);

subplot(2,2,1);
fig_1 = exp(-.1*x); %figure 3.10 signal
stem(x,fig_1);
title('A discrete-time signal.[Different]');
xlabel('n') 
ylabel('x[n]') 

subplot(2,2,2);
fig_2 = exp(-.1*x+2*pi); %increased frequency by 2 pi
stem(x,fig_2);
title('Example signal with frequency increase by 2 pi.[Same]');
xlabel('n') 
ylabel('x1[n]') 

subplot(2,2,3);
fig_3 = exp(-.1*x+(12*pi)); %increased frequency by 12 pi
stem(x,fig_3);
title('Example signal with frequency increase by 12 pi.[Same]');
xlabel('n') 
ylabel('x2[n]') 

subplot(2,2,4);
fig_4 = exp(-.1*x + pi); %increased frequency by pi
stem(x,fig_4);
title('Example signal with frequency increase by pi.[Same]');
xlabel('n') 
ylabel('x3[n]') 
