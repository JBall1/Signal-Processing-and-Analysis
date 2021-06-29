%Joshua Ball
%R11330455
%Project 3 - Compute the fourier transform of x(t)= e^(-2t)*u(t), plot its
%respetive amplitude and phase.

%Knowing |X(w)| =(approx)= 1/w
T_0 = 4; %Choosen because X(4) = e^-8 wgucg is nearly 0 and N0 = T0=T = 254.6
N_0 = 256;%So doing some even rounding by a factor of 1/64 I chose 4 and 256.
T = T_0/N_0;%Basic equation for T
t = (0:T:T*(N_0-1))';%range for t
x = T*exp(-2*t); 
x(1) = T*(exp(-2*T_0)+1)/2;
X_r = fft(x); %Using fft command to solve this DFT
r = [-N_0/2:N_0/2-1]'; 
omega_r = r*2*pi/T_0;
omega = linspace (-pi/T,pi/T,4097); %limits for graph
X = 1./(j*omega+2);

%Plotting Amplitude
subplot (211);
stem(omega_r, fftshift (abs(X_r)));
xlabel ('\omega'); ylabel ('|X(\omega)|')
axis ([-0.01 40 -0.01 0.51]);

%plotting phase, the difference from amplitude being angle() instead of
%abs() command being utilized.
subplot (212);
stem(omega_r, fftshift (angle(X_r)*180/pi));
xlabel ('\omega'); ylabel ('\angle H[e^{j \omega}] [deg]');
