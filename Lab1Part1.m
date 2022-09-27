tone =466.16;
sample=8000;
amplitude=.5;
SNR=10;

%generate signal
t=0.1:1/sample:1.0;
s=amplitude*sin(2*pi*tone*t);
%sound(s);

%plot signal
figure(1);
plot(t,s);
title('A# waveform');
xlabel('time');
ylabel('A#');


%create noise 
var=cov(s);
var_noise=var/(10^(SNR/10));
noise=sqrt(var_noise)*randn(length(s),1);
%sound(noise);

%plot noise
figure(2);
plot(t,noise);
title('Noise signal with SNR of 5');
xlabel('time');
ylabel('noise(dB)')

%add noise
m=s+noise';
%sound(m);

%plot new waveform 
plot(t,m);
title('A# waveform with 10 SNR Interference');
xlabel('time');
ylabel('A# with Interference');