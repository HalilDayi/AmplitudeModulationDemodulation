% Generating AM signal and demonstrating demodulation interactively in MATLAB
% Modulation signal
Fs = 1000; % Sampling frequency
t = 0:1/Fs:1; % Time vector
fc = 10; % Carrier frequency
Ac = 1; % Carrier amplitude
mt = sin(2*pi*5*t); % Modulation signal
AM = (1 + mt) .* Ac .* cos(2*pi*fc*t); % AM signal

% Rectification
AM_rectification = abs(AM);

% Filtering (Low-pass filter)
cutoff_freq = 15; % Cutoff frequency
[b, a] = butter(6, cutoff_freq/(Fs/2), 'low'); % Filter coefficients
AM_filtered = filter(b, a, AM_rectification);

% Visualizing the results
figure;
subplot(3, 1, 1);
plot(t, AM);
title('AM Signal');
subplot(3, 1, 2);
plot(t, AM_rectification);
title('Rectification');
subplot(3, 1, 3);
plot(t, AM_filtered);
title('Filtering');
