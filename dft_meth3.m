x=input('Sequence for N pt dft=');
N = length(x);
X= zeros(N,1);
for k=0:N-1
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-1j*pi*2*n*k/N);
    end
end
t=0:N-1;
subplot(3,1,1);
stem(t,x);
xlabel('Time(s)');
ylabel('Amplitude')
subplot(3,1,2);
stem(t,abs(X));
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequencydomain-Magnitude response');
subplot(3,1,3);
stem(t,angle(X));
xlabel('Frequncy');
ylabel('Phase');
title('Frequency domain- Phase response');
disp(X);
abs(X)
angle(X)
