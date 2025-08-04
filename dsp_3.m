a=input("Enter the first sequence= ");
b=input("Enter the second sequence =");
c=conv(a,b);
M=length(c)-1;
N=0:1:M;
disp('o/p sequence');
disp(c);
subplot(3,1,1);
stem(a)
subplot(3,1,2);
stem(b)
subplot(3,1,3);
stem(N,c);
xlabel('time index n');
ylabel('Amplitude');