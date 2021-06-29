%Project 1
%Joshua Ball
%R11330455
%HOW TO: If you want to run a specifc plot, uncomment its respective
%subplot AND stem
%The initial run of the script will display part 1 of the project. 

%Part 1
%f[n]
n = linspace(-10,10);
subplot(2,2,1);
f1 = exp(-n/5).*cos((pi*n)/5).*heaviside(n);
stem(n,f1)
title('f[n]');
xlabel('n') 
ylabel('f[n]') 

%f[-2n]
subplot(2,2,2);
f2 = exp((-n*(-2))/5).*cos((pi*(n*-2))/5).*heaviside((n*-2));
stem(n,f2)
title('f[-2n]');
xlabel('n') 
ylabel('f[-2n]') 

%f[-2n+1]
subplot(2,2,3);
f3 = exp(((-n*(-2)+1))/5).*cos((pi*((n*-2)+1))/5).*heaviside((n*-2)+1);
stem(n,f3)
title('f[-2n+1]');
xlabel('n') 
ylabel('f[-2n+1]') 



%Part 2 - plot 1 

%y[n] – y[n-1] + y[n-2] = x[n]

%h[n] of the above system
%subplot(2,2,1);
n = 0:30;
a = [1,-1,1];
b = 1;
h = filter(b,a,n);
%stem(h)
title('h[n]');
xlabel('n') 
ylabel('h[n]') 
%System is marginally stable.


%Part 2 - plot 2
%Zero input reponse with input of xn = cos((2*pi*n)/6).*heaviside(n).
%subplot(2,2,2);
xn = cos((2*pi*n)/6).*heaviside(n);
yn = filter(b,a,xn);
%stem(yn)
title('Zero state response with input x[n]');
xlabel('n') 
ylabel('y[n]') 

%Part 2 - plot 2
%Based on example in book C3.4
%With initial conditions: y[-1] = 1 and y[-2] = 2
%subplot(2,2,3);
n_5 = (-2:30); y = [2;1;zeros(length(n)-2,1)];
for k = 1: length(n)-2
     y(k+2) = y(k+1)-y(k);
end
%stem(n,y,'k');
title('Zero input response with initial conditions');
xlabel('n') 
ylabel('Yo[n]') 




%Part 3 - plot 1
%discrete time convolution operation with:
%h[n] = (cos((pi*n)/3)+1/sqrt(3).*sin((pi*n)/3)).*heaviside(n) and 
%x[n] = cos((2*pi*n)/6).*heaviside(n)
%Note that: y[n] = h[n] * x[n]
n = 0:15;
subplot(2,2,1);
hn1 = (cos((pi*n)/3)+1/sqrt(3).*sin((pi*n)/3)).*heaviside(n);
xn1 = cos((2*pi*n)/6).*heaviside(n);
yn1 = conv(hn1,xn1);
stem(yn1)
title('Discrete Time Convolution of h[n] and x[n]');
xlabel('n') 
ylabel('Y[n]') 
