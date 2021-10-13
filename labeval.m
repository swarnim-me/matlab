clc
clear all
close all

x = [1 0 1 9 5 6 0 0 7];
subplot(2, 2, 1);
stem(x);

N = length(x);
X = zeros(1, N);

for k=1:N
	for n=1:N
		X(k) = X(k) + x(n) * exp(-j*2*pi*(k-1)*(n-1)/N);
	end
end
X
subplot(2, 2, 2);
stem(abs(X));

p = angle(X);
subplot(2, 2, 3);
stem(p);

Y = zeros(1, N);

for i=1:N
    for k=1:N
        Y(k) = Y(k) + (1/N) * X(i)*exp(j*pi*2*(i-1)*(k-1)/N);
    end
end
subplot(2, 2, 4);
stem(abs(Y));