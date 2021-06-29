%Joshua Ball
%R11330455
%Project 2
%Frquency response of y[n+1]-0.5 y[n]=x[n]

%Setup
Omega = linspace(-pi,pi,400);%sets up omega range
H = tf([1 0],[1 -.5], -1);%Transfers the difference equation into a transfer function
H_Omega = squeeze(freqresp(H,Omega));

%plot of the amplitude
subplot (2,1,1); 
stem (Omega, abs(H_Omega), 'k'); 
axis tight;
xlabel ('\Omega'); 
ylabel('|H[e^{j \Omega}]|');
%plot of the phase
subplot (2,1,2); 
stem (Omega, angle (H_Omega) * 180/pi, 'k'); 
axis tight;
xlabel ('\Omega'); 
ylabel ('\angle H[e^{j \Omega}] [deg]');