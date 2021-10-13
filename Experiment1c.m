clc
clear all;
close all;
t = -10:0.1:10;
n = -10:0.1:10;

A = input('Enter the amplitude for the function-->');
f = input('Enter the frequency for the function-->');
p = input('Enter the phase difference-->');

y = A*sin(2*pi*f*t + p);
subplot(2,1,1);
plot(t,y);
title('sine wave - 101956007');
xlabel('Time');
ylabel('Amplitude');
ylim([-2 2]);

subplot(2,1,2);
stem(n,y);
title('Sine wave - 101956007');
ylabel('Amplitude');
xlabel('n');
ylim([-2 2]);