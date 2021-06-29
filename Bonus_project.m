%Joshua Ball
%R11330455
%Project 2
%Frquency response of C5.2 bandpass filter at:
%For the following values:
%a. |?| = 0.83
%b. |?| = 0.96
%c. |?| = 0.99

Omega = linspace(-pi,pi,4097); %range of omega
g_mag = [0.83 0.96 0.99]; %g magnitude, values we are testing
H = zeros(length(g_mag),length(Omega)); %setting them to H

%for loop utilizing formula 5.67
for m = 1:length(g_mag),
H(m,:) = freqz ( [1 0 -1], [1 -sqrt(2) *g_mag (m) g_mag (m) ^2], Omega);
end

%Plot 1
subplot(2,1,1); 
plot(Omega,abs(H(1,:)),'k-',...
Omega,abs(H(2,:)),'k--',Omega,abs(H(3,:)),'k-.');
axis tight; 
xlabel('\Omega'); 
ylabel('|H[e^(j \Omega)]|');
legend('(a) | \gammal| = 0.83','(b) | \gammal| = 0.96','(c) |\gammal| = 0.99',0)

%plot 2
subplot(2,1,2); 
plot(Omega,angle(H(1,:)),'k-',...
Omega,angle(H(2,:)),'k--',Omega,angle(H(3,:)),'k-.');
axis tight; 
xlabel('\Omega'); 
ylabel('\angle H[e^(j \Omega)] [rad]');
legend('(a) |\gamma| = 0.83','(b) |\gamma| = 0.96','(c) |\gamma | = 0.99',0)