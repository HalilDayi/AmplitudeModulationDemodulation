% Ses sinyali oluşturma
Fs = 1000; % Örnekleme frekansı (Hz)
t = 0:1/Fs:1; % 1 saniye boyunca örnekleme
f1 = 5; % Temel frekans (Hz)
f2 = 20; % İkinci harmonik frekans (Hz)
message_signal = sin(2*pi*f1*t) + sin(2*pi*f2*t); % Sinüzoidal ses sinyali

% Taşıyıcı sinyal oluşturma
carrier_freq = 100; % Taşıyıcı frekansı (Hz)
carrier_amplitude = 1; % Taşıyıcı genliği
carrier_signal = carrier_amplitude * cos(2*pi*carrier_freq*t); % Sinüzoidal taşıyıcı sinyal

% AM modülasyonu
modulated_signal = (1 + 0.5*message_signal) .* carrier_signal; % AM modülasyonu

% AM demodülasyonu
demodulated_signal = abs(modulated_signal) - 1; % Doğrultma işlemi
[b, a] = butter(6, 0.05); % Düşükgeçiren filtre
filtered_signal = filter(b, a, demodulated_signal); % Filtreleme

% Sinyalleri görselleştirme
figure;
subplot(4,1,1);
plot(t, message_signal);
title('Orijinal Ses Sinyali');
xlabel('Zaman (s)');
ylabel('Genlik');
ylim([-2 2]);

subplot(4,1,2);
plot(t, carrier_signal);
title('Taşıyıcı Sinyal');
xlabel('Zaman (s)');
ylabel('Genlik');
ylim([-2 2]);

subplot(4,1,3);
plot(t, modulated_signal);
title('AM Modülasyonu');
xlabel('Zaman (s)');
ylabel('Genlik');
ylim([-2 2]);

subplot(4,1,4);
plot(t, filtered_signal);
title('AM Demodülasyonu');
xlabel('Zaman (s)');
ylabel('Genlik');
ylim([-2 2]);
