clc
clear all;
close all;

t1 = -10:0.001:10;
ut = t1>=0;
subplot(3,2,1);
plot(t1, ut);
ylim([-1 2]);
xlabel('Time(t) -->');
ylabel('Amplitude of u(t) -->');
title('Unit step - 101956007');

n1 = -10:1:10;
un = n1>=0;
subplot(3,2,2);
stem(n1, un);
ylim([-1 2])
xlabel('Interval[n] -->');
ylabel('Amplitude of u[n] -->');
title('Unit step - 101956007');

t2 = -1:0.01:1;
ui = [zeros(1, 100), ones(1,1), zeros(1, 100)];
subplot(3,2,3);
plot(t2, ui);
ylim([-1 2]);
xlabel('Time(t) --> ');
ylabel('Amplitude of impulse (t)  -->');
title('Unit Impulse - 101956007');

n2 = -10:1:10;
uni = [zeros(1, 10), ones(1,1), zeros(1,10)];
subplot(3, 2, 4);
stem(n2, uni);
ylim([-1 2]);
xlabel('Interval[n] -->');
ylabel('Amplitude of impulse [n] -->');
title('Unit impulse - 101956007');

t3 = -100:1:100;
sc = sign(t3);
subplot(3,2,5);
plot(t3, sc);
ylim([-2 2]);
xlabel('Time(t) -->');
ylabel('Amplitude of signum(t) -->');
title('Signum - 101956007');

n3 = -10:1:10;
sd = sign(n3);
subplot(3,2,6);
stem(n3,sd);
ylim([-2 2]);
xlabel('Interval[n] -->');
ylabel('Amplitude of signum[n] -->');
title('Signum - 101956007');