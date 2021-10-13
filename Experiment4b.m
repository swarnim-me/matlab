clc; % clear screen
clear all; % clear work space
close all; % close all figure windows
xn = input('enter the first sequence x(n) = ');
hn = input('enter the second sequence h(n) = ');
l1 = length(xn); % length of first sequence
l2 = length(hn); % length of second sequence
N = l1+l2-1; % length of output
xn = [xn,zeros(1,l2-1)]; % add zeros to make length of xn and hn equal
hn = [hn,zeros(1,l1-1)]; % add zeros to make length of xn and hn equal
for n=0:N-1; %function for linear convolution in time domain
    y(n+1) = 0;
    for k=0:N-1;
        i = mod((n-k),N);
        if i<0
            i = i+N;
        end
        y(n+1) = y(n+1)+hn(k+1)*xn(i+1);
    end
end
disp('Linear Convolution using Circular Convolution = ');
disp(y); % display output
subplot(2,2,1); %Graphical display of first input sequence
stem(xn);
xlabel('n');
ylabel('x(n)');
title('Plot of x1(n)-101956007');
subplot(2,2,2); %Graphical display of second input sequence
stem(hn);
xlabel('n');
ylabel('(h(n)');
title('Plot of x2(n)-101956007');
subplot(2,2,3); %Graphical display of output sequence stem(y);
stem(y);
xlabel('n');
ylabel('y(n)');
title('Linear Convolution Output-101956007');