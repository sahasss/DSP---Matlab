clear all
clc
syms s
AP = 0.9 ; %Gain at passband edge frequency
AS = 0.24 ; %Gain at stopband edge frequency
PEF_D = 0.25 * pi ; %Passband edge digital frequency
SEF_D = 0.5 * pi ; %Stopband edge digital frequency
T = 1 ; %Sampling time
alpha_P = -20 * log10(AP) %Passband attenuation in dB
alpha_S =-20*log10 (AS) %stopband attenuation in dB
PEF_A = PEF_D/T
SEF_A = SEF_D/T
[N,CF] = cheb1ord(PEF_A, SEF_A, alpha_P, alpha_S,'s')
%Order and cutoff frequency
[Bn, An] = cheby1(N, alpha_P,1, 's') ; %Normalised transfer function
display('Normalised Transfer Function is,')
Hsn = tf(Bn, An)
[B,A] = cheby1(N, alpha_P, CF,'s') ; %Unnormalised transfer function
display('Unnormalised Transfer Function is,')
Hs = tf(B,A)
[num,den] = impinvar(B,A,1/T) ; %Digital transfer function
display('Digital Transfer Function is,')
Hz = tf (num, den, T)
w = 0: pi/16 : pi ;
display('Frequency Response is,')
Hw = freqz(num,den, w) % Frequency response
display('Magnitude Response is,')
Hw_mag = abs(Hw) % Magnitude response
plot(w/pi, Hw_mag) ; grid ;
title("Magnitude Response of Chebyshev 3rd Order Lowpass Filter");
xlabel("Normalised frequency    - 23BEE1119");
ylabel("Magnitude");