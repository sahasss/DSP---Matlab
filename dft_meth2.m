clc
clear all
N=input('Enter the sequence=');
M=input('Enter the length of FFT=');
u=input('Enter the sequence=');
U=fft(u,M);
t=0:1:N-1;
subplot(3,1,1);
stem(t,u);
title('Original time domain sequence');
xlabel('Time Index');
ylabel('Amplitude');
subplot(3,1,2);
k=0:1:M-1;
stem(k,abs(U));
title('Magnitude of the dft sample');
xlabel('frequency of the index k');
ylabel('magnitude');
subplot(3,1,3);
stem(k,angle(U))
title('Phase of the dft3 samples');
xlabel('Frequency index k');
ylabel('Phase');
disp('Magnitude of DFT');
disp(abs(U));
disp('Phase of DFT');
disp(angle(U));