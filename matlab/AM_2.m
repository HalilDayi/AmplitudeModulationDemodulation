% Frequencies of Signals
Msg_freq = 500;
Carrier_freq = 5000;
Msg_T = 1 / Msg_freq;
Carrier_T = 1 / Carrier_freq;
t = 0:(Carrier_T / 50):5*Msg_T;

% Create Message Signal
Msg_signal = sin(2 * pi * Msg_freq * t);
subplot(3, 1, 1);
plot(t, Msg_signal); grid on;
title('Message Signal'); xlabel('Time'); ylabel('Amplitude');

% Create Carrier Signal;
Carrier_signal = sin(2 * pi * Carrier_freq * t);
subplot(3, 1, 2);
plot(t, Carrier_signal); grid on;
title('Carrier Signal'); xlabel('Time'); ylabel('Amplitude');

% Create Amplitude Modulation Signal
modulation = 1;
Modulation_signal = (1 + modulation * Msg_signal).* Carrier_signal;
subplot(3, 1, 3);
plot(t, Modulation_signal); grid on;
title('Amplitude Modulation'); xlabel('Time'); ylabel('Amplitude');