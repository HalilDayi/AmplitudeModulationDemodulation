fa=500;
fc=5000;
Ta=1/fa;
Tc=1/fc;
t=0:(Tc/50):5*Ta;
%Bilgi işaretinin oluşturulması
s=sin(2*pi*fa*t);
subplot(311);
plot(t,s); grid on;
title('Bilgi isareti'); xlabel('zaman');ylabel('genlik');
%Taşıyıcı işaretin oluşturulması
c=sin(2*pi*fc*t);
subplot(312);
plot(t,c); grid on;
title('Taşıyıcı işaret'); xlabel('zaman');ylabel('genlik');
%Modulasyonlu işaret
m=1;
d=(1+m*s).*c;
subplot(313);
plot(t,d); grid on;
title('Genlik Modülasyonu'); xlabel('zaman');ylabel('genlik');