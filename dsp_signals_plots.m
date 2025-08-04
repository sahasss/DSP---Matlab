 % %unit step response
 % a = input('Enter the desired length of the sequence=');
 % b = input('Enter the sampling period=');
 % x = 0:a-1;
 % y=cos(2*pi*b*x);
 % stem(x,y);
 % xlabel('Time index');
 % ylabel('Amplitude');
 % title('Generation of unit step sequence');
 % 
 % %unit ramp response
 % 
 % a = input('Enter the desired length of the sequence=');
 % b = input('Enter the sampling period=');
 % x1 = 0:a-1;
 % y1=x1;
 % stem(x1,y1);
 % xlabel('Time index');
 % ylabel('Amplitude');
 % title('Generation of ramp sequence');

 %sinusoid
 
 % a = input('Enter the desired length of the sequence=');
 % b = input('Enter the sampling period=');
 % x3 = 0:1:a-1;
 % y3 =sin((2/b)*pi*x3);
 % stem(x3,y3);
 % xlabel('Time index');
 % ylabel('Amplitude');
 % title('Generation of sinusoid sequence');

 
 %impulse
 
 % a  = input('Enter the desired length of the sequence=');
 % b  = input('Enter the sampling period=');
 % x3 = 0:a-1;
 % y3 = [cos(2*pi*b) zeros(1,a-1)];
 % stem(x3,y3);
 % xlabel('Time index');
 % ylabel('Amplitude');
 % title('Generation of impulse sequence');


 %parabolic

 a = input('Enter the desired length of the sequence=');
 b = input('Enter the sampling period=');
 x3 = 0:a-1;
 y3 = x3.^2;
 stem(x3,y3);
 xlabel('Time index');
 ylabel('Amplitude');
 title('Generation of pa sequence');









