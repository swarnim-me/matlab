clc; % clear screen
clear all; % clear work space
close all; % close all figure windows
xn = input('enter the first sequence x(n) = '); % first sequence
hn = input('enter the second sequence h(n) = '); % second sequence
N = max(length(xn),length(hn)); % length of convolution
Xk = fft(xn,N); % N point DFT of first sequence
Hk = fft(hn,N); % N point DFT of second sequence
Yk = Xk.*Hk; % multiplication of two DFTs
yn = ifft(Yk,N); % Inverse DFT of the product
disp('Circular convolution of x(n) and h(n) =');
disp(yn); % Display the output
subplot(2,2,1); % graphical display of the first sequence
stem(xn);
xlabel('n');
ylabel('x(n)');
title('plot of x(n)-101956007');
subplot(2,2,2); % graphical display of the second sequence
stem(hn);
xlabel('n');
ylabel('h(n)');
title('plot of h(n)-101956007');
subplot(2,2,3); % graphical display of the output sequence
stem(yn);
xlabel('n');
ylabel('y(n)');
title('Circular convolution Output-101956007'); 