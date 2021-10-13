% for hamming
 clc;
clear all;
close all;
ws1= 0.51*pi;
wp1= 0.47*pi;
tr_width1= abs(ws1-wp1);
wc1= (wp1+ws1)/2;
 M1= ceil(6.2*pi/tr_width1)+1;
 if(rem(M1,2)==0)
     M1=M1+1;
 end
 t1= 0:1:(M1-1);
w_n1= 0.54-0.46.*cos((2*pi*t1)/(M1-1));
 n1= -(M1-1)/2:(M1-1)/2;
fc1= wc1/(2*pi);
 hd1= -2*fc1*(sinc(2*fc1*n1));
  hd1((M1-1)/2+1)= 1-2*fc1;
 h1= hd1.*w_n1;      %Multiplication of window function and desired frequency
 [HW1,WW1]= freqz(h1,1);
 subplot(2,2,1)
 stem(t1,w_n1);
 title('Window function hamming');
 xlabel('n');
 legend('101956007')
 ylabel('w(n)');
 grid on
 subplot(2,2,2)
 plot(WW1/pi, abs(HW1));
 legend('101956007')
 title('High pass filter');
 xlabel('normalised frequency');
 ylabel('magnitude response of HPF');
 grid on

 % for hanning
clc;
clear all;
%close all;
wp=0.47*pi;
ws=0.51*pi;
tr_width=abs(ws-wp);
wc=(wp+ws)/2;
M=ceil(6.2*pi/tr_width)+1;
if (rem(M,2)==0)
    M=M+1;
end
%hanning window function
w_n=(hann(M));
n=-(M-1)/2:(M-1)/2;
fc=wc/(2*pi);
hd=-2*fc*(sinc(2*fc*n));
hd((M-1)/2+1)=1-2*fc;
h=hd.*w_n';

[HW,WW]=freqz(h,1);

subplot(2,2,3);
stem(n,w_n);
title('window function (hanning)')
legend('101956007')
xlabel('\bfn');
ylabel('\bfw(n)');
subplot(2,2,4);
plot(WW./pi,abs(HW));
title('High Pass Filter(hanning)');
legend('101956007')
xlabel('Normalized Frequency');