clc
clear all
N=input('Enter the length of sequence=');
M=input('Enter the length of FFT=');
u=input('Enter the sequence=');
U=ifft(u,M);
t=0:1:N-1;
subplot(3,1,1);
stem(t,u);
title('Original time domain sequence');
xlabel('Time Index');
ylabel('Amplitude');
subplot(3,1,2);
k=0:1:M-1;
stem(k,abs(U));
title('Magnitude of the idft sample');
xlabel('frequency of the index k');
ylabel('magnitude');
subplot(3,1,3);
stem(k,angle(U))
title('Phase of the dft3 samples');
xlabel('Frequency index k');
ylabel('Phase');
disp('Magnitude of IDFT');
disp(abs(U));
disp('Phase of IDFT');
disp(angle(U));
disp('The sequence x(n) =')
disp(U);