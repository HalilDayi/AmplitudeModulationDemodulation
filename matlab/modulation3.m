% Demodülasyon

% Alıcı tarafında taşıyıcı sinyalin aynısını kullanıyoruz
alici_c = sin(2*pi*fc*t);

% Demodülasyon işlemi: Modüle edilmiş sinyali alıcının taşıyıcı sinyaliyle çarpıyoruz
demod_sinyal = d .* alici_c;

% Düşük geçiren filtre uygulayarak demodüle edilmiş sinyali elde edelim
cutoff_freq = 500; % Kesim frekansı (örneğin, 500 Hz)
[b, a] = butter(6, cutoff_freq/(0.5*fc), 'low'); % Butterworth düşük geçiren filtresi katsayıları
demod_sinyal_filtreli = filtfilt(b, a, demod_sinyal); % Filtreleme işlemi

% Grafikleri çizelim
figure;
subplot(3,1,1);
plot(t, s);
title('Bilgi İşareti');
xlabel('Zaman (s)');
ylabel('Genlik');
grid on;

subplot(3,1,2);
plot(t, d);
title('Modüle Edilmiş İşaret');
xlabel('Zaman (s)');
ylabel('Genlik');
grid on;

subplot(3,1,3);
plot(t, demod_sinyal_filtreli);
title('Demodülasyon Sonucu');
xlabel('Zaman (s)');
ylabel('Genlik');
grid on;
