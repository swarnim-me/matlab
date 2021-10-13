clc;
clear all;
close all;
x = input('ENTER SEQUENCE 1  ');
h = input('ENTER SEQUENCE 2  ');

m = length(x);
n = length(h);
N = m + n - 1;

X = [x, zeros(1, N - m)];
H = [h, zeros(1, N - n)];

for i = 1:N
    y(i) = 0;
    for j = 1:m
        if(i-j+1>0)
            y(i) = y(i) + X(j)*H(i-j + 1);
        end
    end
end

b = length(y);
M = max(m, n);

X1 = [y(1 : M)];
H1 = [y(M + 1 : b)];

a = length(H1);
H1 = [H1, zeros(1, M - a)];

Z = X1 + H1

subplot(4,1,1)
stem(x)
ylabel('value of xn');
xlabel('n');
title('input 1-101956007')
grid on;

subplot(4,1,2)
stem(h)
ylabel('value of hn');
xlabel('n');
title('input 2-101956007')
grid on;

subplot(4,1,4)
stem(y)
ylabel('value of Y');
xlabel('n');
title('Circular convolution-101956007')
grid on;

subplot(4,1,3)
stem(Z)
ylabel('value of Z');
xlabel('n');
title('Linear convolution-101956007')
grid on;