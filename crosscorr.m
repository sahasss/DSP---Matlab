% x=input('Enter the first sequence')
% y=xcorr(x,x);
% figure
% subplot(3,1,1)
% stem(x)
% subplot(3,1,2)
% stem(fliplr(y))
% title('Autocorrelation of the Sequence');
% subplot(3,1,3)
% stem(y)

x=input('Enter the first sequence');
h=input('Enter the second sequence');
y=xcorr(x,h);
figure
subplot(4,1,1)
stem(x)
subplot(4,1,2)
stem(y)
subplot(4,1,3)
stem(fliplr(y))
subplot(4,1,4)
stem(y)
title('Cross-Correlation of the Sequences');