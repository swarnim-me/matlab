clc
clear all
N = 25;
n=0:N-1;

for i=1:length(n)
    if(n(i)>=0)
        y(i) = 1;
    else 
        y(i) = 0;
    end
end
subplot(2,2,1);
plot(n,y);
title('Rectangular window');
xlabel('Time-->');
ylabel('Amplitude-->');
xlim([0,N-1]);

for i=1:length(n)
    h(i) = 0.54 -0.46*cos((2*pi*i)/(N-1));
end
subplot(2,2,2);
plot(n,h);
title('Hamming window');
xlabel('Time-->');
ylabel('Amplitude-->');
ylim([0,1]);
xlim([0,N-1]);
for i=1:length(n)
    hn(i) = 0.5*( 1-cos((2*pi*i)/(N-1)));
end
subplot(2,2,3);
plot(n,hn);
title('Hanning window');
xlabel('Time-->');
ylabel('Amplitude-->');
ylim([0,1]);
xlim([0,N-1]);
for i=1:length(n)
    bm(i) = 0.42 - (0.5*cos((2*pi*i)/(N-1))) + (0.08*cos((4*pi*i)/(N-1)));
end
subplot(2,2,4);
plot(n,bm);
title('Blackman window');
ylim([0,1]);
xlim([0,N-1]);
xlabel('Time-->');
ylabel('Amplitude-->');

p=1024;
xaxis = 0:1/p:(p-1)/p;
yf=fft(y,p);
fyaxis = abs(yf/max(yf));
q = 20*log10(fyaxis);
figure;
subplot(2,2,1);
plot(xaxis,fftshift(q));
title('Rectangular window');
xlabel('Freq-->');
ylabel('Amplitude-->');
ylim([-80,0]);

hf=fft(h,p);
fhaxis = abs(hf/max(hf));
qh = 20*log10(fhaxis);
subplot(2,2,2);
plot(xaxis,fftshift(qh));
title('Hamming window');
xlabel('Freq-->');
ylabel('Amplitude-->');
ylim([-80,0]);

hnf=fft(hn,p);
fhnaxis = abs(hnf/max(hnf));
qhn = 20*log10(fhnaxis);
subplot(2,2,3);
plot(xaxis,fftshift(qhn));
title('Hanning window');
xlabel('Freq-->');
ylabel('Amplitude-->');
ylim([-80,0]);

bmf=fft(bm,p);
fbmaxis = abs(bmf/max(bmf));
qbm = 20*log10(fbmaxis);
subplot(2,2,4);
plot(xaxis,fftshift(qbm));
title('Blackman window');
xlabel('Freq-->');
ylabel('Amplitude-->');
ylim([-80,0]);