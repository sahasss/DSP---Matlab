clc; clear all; close all; syms n wo

%first signal
a=n+1;
disp('The input equation is ')
disp(a)
b=ztrans(a);
disp('The z-transform is ')
disp(b)
c=iztrans(b);
disp('The inverse z- transform is')
disp(c)

%second signal
a1=cos(wo*n);
disp('The input equation is')
disp(a1)
b1=ztrans(a1);
disp('The z-transform is ')
disp(b1)
c1=iztrans(b1);
disp('The inverse z-transform is')
disp(c1)