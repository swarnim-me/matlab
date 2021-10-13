clc;
clear all;
close all;

x = [1, 2, 6, 3];
h = [7, 4, 5];

n = length(x);
m = length(h);

X = [x zeros(1, m)]
H = [h zeros(1, n)]

Y = [];
length = n+m-1;
for i=1:length
    Y(i)=0;
    for j=1:max(n,m)
        if(i-j+1>0)
            Y(i) = Y(i) + X(j) * H(i-j+1);
        end
    end
end
Y
conv(x,h);
