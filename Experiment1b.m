clc;
clear all
close all

t = -50:0.001:50;
d1 = input('Enter duty cycle-->');
f1 = input('Enter frequency -->');
y = square(2*pi*f1*t*d1);
plot(t,y);
ylim([-2 2]);
xlabel('Time(t) -->');
ylabel('Amplitude of square wave');
title('Square wave - 101956007');