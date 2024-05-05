% AM Modülasyonu

% Taşıyıcı sinyal özellikleri
carrier_freq = 1000; % Taşıyıcı frekansı (Hz)
carrier_amplitude = 1; % Taşıyıcı genliği

% Mesaj sinyal özellikleri
message_freq = 100; % Mesaj frekansı (Hz)
message_amplitude = 0.5; % Mesaj genliği

% Zaman vektörü
t = 0:0.001:1; % 1 saniye boyunca örnekleme

% Taşıyıcı sinyal
carrier_signal = carrier_amplitude * sin(2 * pi * carrier_freq * t);

% Mesaj sinyali
message_signal = message_amplitude * sin(2 * pi * message_freq * t);

% AM modülasyonu
modulated_signal = (1 + message_signal) .* carrier_signal;

% Sinyalleri görselleştirme
subplot(3,1,1);
plot(t, carrier_signal);
title('Taşıyıcı Sinyal');

subplot(3,1,2);
plot(t, message_signal);
title('Mesaj Sinyali');

subplot(3,1,3);
plot(t, modulated_signal);
title('AM Modülasyonu');

xlabel('Zaman (s)');
