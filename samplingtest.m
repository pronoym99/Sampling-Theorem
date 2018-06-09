%Define properties for modulating signal
fm=0.02;
t=-100:0.1:100;            
subplot(2,2,1);
plot(t,sin(2*pi*fm*t));
title('Modulating Signal')
xlabel('Time')
ylabel('Amplitude')

%Plot various cases 

%Case 1: fs<2fm
n=-2:2;
subplot(2,2,2);
stem(n,sin(2*pi*n));    %fm/fs=1
hold on;
subplot(2,2,2);
plot(n,sin(2*pi*n));
title('Case 1: f_s < 2f_m')
xlabel('Time')
ylabel('Amplitude')

%Case 2: fs=2fm
n=-4:4;
subplot(2,2,3);
stem(n,sin(0.5*pi*n));  %fm/fs=0.5   
hold on;
subplot(2,2,3);
plot(n,sin(0.5*pi*n));
title('Case 2: f_s = 2f_m')
xlabel('Time')
ylabel('Amplitude')

%Case 3: fs>2fm
n=-10:10;
subplot(2,2,4);
stem(n,sin(.25*pi*n)); %fm/fs=0.25 
hold on;
subplot(2,2,4);
plot(n,sin(.25*pi*n));
title('Case 3: f_s > 2f_m')
xlabel('Time')
ylabel('Amplitude')

