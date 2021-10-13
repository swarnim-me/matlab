% Rectangular
fp =1500;
tw = 500;
fsample=8000;
tw=tw/fsample;
fc=fp +tw/2;
N=floor(0.9/tw);
A=zeros(1,N);
h=ones(1,N);
hd=ones(1,N);
for i=1:N;
    a(i)=(-(N-1)/2-1)+i;
end
rectangular = ones(1,N);
for i=1:N
    wc =2*pi*fc;
    h(i)=2*fc*sin(a(i)*wc)/(a(i)*wc);
    hd(i)=h(i)*rectangular(i);
end

subplot(2,1,1);
stem(a,hd);
title('LPF with rectangular window');
legend('101956007');
xlabel('t');
ylabel('hd');
[X2,w2]=freqz(hd,1,1024);
X2max=max(abs(X2));
subplot(2,1,2);
plot(w2/2*pi,20*log10(abs(X2)/X2max));
title('LPF with Rectangular Window frequency response');
xlabel('f');
legend('101956007');
ylabel('hd');








%triangular

fp =1500;
tw = 500;
fs=8000;
tw=tw/fs;
fc=fp +tw/2;
N=floor(0.9/tw);
A=[zeros(1,N)];
for i=1:N
    a(i)=(-(N-1)/2-1)+i;
end
tr=zeros(length(N-1));
for n=0:1:N-1
    if n<=(N-1)/2
        tr(n+1)=2*n/(N-1);
    elseif n>(N-1)/2 && n<=N-1
        tr(n+1)=2-(2*n/(N-1));
    end
end
       
h=ones(1,N);
hd=ones(1,N);
for i=1:N
    wc=2*pi*fc;
    h(i)=2*fc*sin(a(i)*wc)/(a(i)*wc);
    hd(i)=h(i)*tr(i);
end
subplot(2,1,1);
stem(a,hd);
title('LPF with triangular window');
legend('101956007');
xlabel('f');
ylabel('hd');
[X2,w2]=freqz(hd,1,1024);
X2max=max(abs(X2));
subplot(2,1,2);
plot(w2/2*pi,20*log10(abs(X2)/X2max));
title('LPF with triangular window response');
legend('101956007');
xlabel('f');
ylabel('hd');