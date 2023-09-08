function fftFor()

Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 10000000;                 % Length of signal
t = (0:L-1)*T;                % Time vector

% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); 
y = x + 2*randn(size(t));     % Sinusoids plus noise

NFFT = 2^nextpow2(L);         % Next power of 2 from length of y

for i = 1 : 8
    Y(i, :) = fft(y,NFFT)/L;
end