% Modulation Index
h = 60;
% Time Period of Simulation
t = linspace(0, 0.2, 100000);
% Message Signal
Msg_amplitude = 14;
Msg_freq = 200;
Msg_signal = Msg_amplitude * cos(2 * pi * Msg_freq * t);

figure;
subplot(4, 1, 1);
plot(t(1:10000), Msg_signal(1:10000));
title('Message Signal');
xlabel('Time(t)');
ylabel('Amplitude');

% Carrier Signal
Carrier_amplitude = Msg_amplitude / h;
Carrier_freq = 2000;
Carrier_signal = Carrier_amplitude * cos(2 * pi * Carrier_freq * t);
subplot(4, 1, 2);
plot(t(1:10000), Carrier_signal(1:10000));
title('Carrier Signal');
xlabel('Time(t)');
ylabel('Amplitude');

% Modulated Signal
% ammod(input message signal, carrier signal frequency, sampling frequency, initial phase, carrier amplitude)
Modulated_signal = ammod(Msg_signal, Carrier_freq, 100000, 0, Carrier_amplitude);
subplot(4, 1, 3);
plot(t(1:10000), Modulated_signal(1:10000));
title('Modulated Signal');
xlabel('Time(t)');
ylabel('Amplitude');