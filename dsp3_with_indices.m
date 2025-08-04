% Define sequences
x=input("Enter the first sequence= ");
nx=input("Enter the indices for first sequence ");% Indices for x 
y=input("Enter the second sequence =");
ny=input("Enter the indices for second sequence ");% Indices for h 
c=conv(x,y);
M=length(c)-1;
N=0:1:M;
disp('o/p sequence');
disp(c);
% Time indices for convolution result
nz = (nx(1) + ny(1)) : (nx(end) + ny(end)); 
subplot(4,1,1);
stem(nx,x)

subplot(4,1,2);
stem(ny,y)

subplot(4,1,3)
stem(nz,c);
xlabel('time index n');
ylabel('Amplitude');

subplot(4,1,4)
stem(N,c)
xlabel('time index n');
ylabel('Amplitude');

% Display
% disp('Convolution result y[n]:');
% disp(y);
% disp('Corresponding indices ny:');
% disp(ny);
