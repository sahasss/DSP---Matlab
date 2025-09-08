clear all;
alphap=0.4;
alphas=30;
fp=400;
fs=800;
F=2000;
omp=2*fp/F; oms=2*fs/F;
%find cutoff freq and order of filter
[n,wn]=buttord(omp,oms,alphap,alphas)
%system func
[b,a]=butter(n,wn,'HIGH')
w=0:0.1:pi;
[h,om]=freqz(b,a,w);
m=20*log(abs(h));
an=angle(h);
subplot(2,1,1),plot(om/pi,m);
grid;
ylabel('Gain in dB');
xlabel('Normalized frequency');
subplot(2,1,2),plot(om/pi,an);
grid;
ylabel('Phase in Radians');
xlabel('Normalized frequency');
