%program 34
clc 
clear 
close all 
  
[file, p] = uigetfile('*.wav'); 
[x, Fs] = audioread([p file]); 
T = 1/Fs;                   % Sampling period        
L = length(x);              % Length of signal 
t = (0:L-1)*T;              % Time vector 
  
player = audioplayer(x, Fs); 
play(player); 
  
figure 
plot(t,x), grid on 
title('Signal x') 
xlabel('t (milliseconds)') 
ylabel('x(t)') 
  
X = fft(x); 
f = Fs*(0:(L/2))/L; 
P2 = abs(X/L); 
P1 = P2(1:L/2+1); 
figure 
plot(f,P1)  
title('Single-Sided Amplitude Spectrum of signal') 
  
hd = lowpassl(); 
y = filter(hd, x); 
figure, 
plot(t,y), title('Filtered signal'); 
Y = fft(y); 
f = Fs*(0:(L/2))/L; 
P2 = abs(Y/L); 
P1 = P2(1:L/2+1); 
figure 
plot(f,P1), title('freq plot of filtered signal'); 
[file p ] = uiputfile('*.wav'); 
audiowrite([p file],y,Fs) 