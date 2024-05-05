% AM Demodülasyonu

% Demodülasyon
demodulated_signal = abs(modulated_signal) - 1;

% Düşükgeçiren filtre
cutoff_freq = 50; % Kesim frekansı (Hz)
[b, a] = butter(6, cutoff_freq / (0.5 * 1000)); % 6. dereceden Butterworth düşükgeçiren filtre katsayıları

% Filtreleme
filtered_signal = filter(b, a, demodulated_signal);

% Sinyalleri görselleştirme
figure;
subplot(2,1,1);
plot(t, demodulated_signal);
title('Demodüle Edilmiş Sinyal');

subplot(2,1,2);
plot(t, filtered_signal);
title('Düşükgeçiren Filtrelenmiş Sinyal');

xlabel('Zaman (s)');
