clc
clear all
close all
t = linspace(-10, 10);
x = [1, 0, 1, 9, 5, 6, 0, 0, 7];
N = length(x);
X = zeros(1,N);

for i=1:N
    for k=1:N
        X(i) = X(i) + x(k)*exp(-j*2*pi*(i-1)*(k-1)/N);
    end
end
X

subplot(2,2,1);
stem(x);
xlabel('Time');
ylabel('Amplitude');
grid
title('Input Sequence');

subplot(2,2,2);
stem(abs(X));
xlabel('Time');
ylabel('Amplitude');
grid
title('Absolute DFT Sequence');

Y = zeros(1, N);

for i=1:N
    for k=1:N
        Y(k) = Y(k) + (1/N) * X(i)*exp(j*pi*2*(i-1)*(k-1)/N);
    end
end

Y

subplot(2,2,3);
stem(angle(X));
xlabel('Frequency');
ylabel('Angle');
axis([-5, 5, -5, 5]);
grid
title('Phase response');

subplot(2,2,4);
stem(abs(Y));
xlabel('Frequency');
ylabel('Amplitude');
grid
title('IDFT');
