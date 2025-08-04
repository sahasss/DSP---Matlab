a=input("Enter the first sequence= ");
na=input("Enter the indices for first sequence ");% Indices for x 
b=input("Enter the second sequence =");
nb=input("Enter the indices for second sequence ");% Indices for h 
nz = (nx(1) + ny(1)) : (nx(end) + ny(end)); 


n1 = length(a);
n2 = length(b);
N = max(n1,n2);
x=[a zeros(1,N-n1)];

start_index = min(na(1), nb(1));
ny = start_index : (start_index + N - 1);
for i=1:N
    k=i;
    for j=1:n2
        H(i,j)=x(k)*b(j);
        k=k-1;
        if(k==0)
            k=N;
        end
    end
end
y=zeros(1,N);
m=H';
for j=1:N
    for i=1:n2
        y(j)=m(i,j)+y(j);
    end
end
subplot(3,1,1);
stem(na,a)
xlabel('Time index n');
ylabel('Amplitude');

subplot(3,1,2);
stem(nb,b)
xlabel('Time index n');
ylabel('Amplitude');

subplot(3,1,3);
stem(ny,y);
xlabel('Time index n');
ylabel('Amplitude');

disp(y)