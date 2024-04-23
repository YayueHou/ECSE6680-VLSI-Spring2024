function [a,g,b,c]=synandrealNTF()

% Demonstrate synthesizeNTF
if exist('LiveDemo','var') == 0
    LiveDemo=0;
end
J = sqrt(-1);
format compact;

clc
fprintf(1,'\t\tNTF Synthesis-- 3th-order modulator\n\n');
echo on
order = 3;
R = 128;
opt = 1;
H = synthesizeNTF(order,R,opt);
echo off

figure(1); clf
plotPZ(H)
title('NTF poles and zeros')

figure(2); clf
f = [linspace(0,0.75/R,100) linspace(0.75/R,0.5,100)];
z = exp(J*2*pi*f);
magH = dbv(evalTF(H,z));
subplot(211);
plot(f,magH);
axis([0 0.5 -100 10]);
grid on;
xlabel('Normalized frequency (1\rightarrow f_s)');
ylabel('dB')
title('NTF Magnitude Response')

fstart = 0.01;
f = linspace(fstart,1.2,200)/(2*R); 
z = exp(J*2*pi*f);
magH = dbv(evalTF(H,z));
subplot(212);
semilogx(f*2*R,magH);
axis([fstart 1.2 -100 -30]);
grid on
sigma_H = dbv(rmsGain(H,0,0.5/R));
hold on;
semilogx([fstart 1], sigma_H*[1 1]);
plot([fstart 1], sigma_H*[1 1],'o');
text( 0.15, sigma_H+5, sprintf('rms gain = %5.0fdB',sigma_H));
xlabel('Normalized frequency (1\rightarrow f_B)');
ylabel('dB')

fprintf(1,'\t\t\tDiscrete-Time Simulation\n');


echo on
N = 8192*8;
fB = ceil(N/(2*R)); f=floor(2/3*fB);
u = 0.5*sin(2*pi*f/N*[0:N-1]);	% half-scale sine-wave input
v = simulateDSM(u,H); 
echo off;

figure(3); clf;
t = 0:fB;
stairs(t, u(t+1),'r');
hold on;
stairs(t,v(t+1),'g');
axis([0 fB -1.2 1.2]);
xlabel('Sample Number');
ylabel('u, v');
title('Modulator Input & Output');


echo on
spec = fft(v.*hann(N))/(N/4);
echo off;
figure(4); clf;
plot(linspace(0,0.5,N/2), dbv(spec(1:N/2)))
axis([0 0.5 -120 0]);
text(0.25, -90, sprintf('BW=%7.5f',1.5/N));
grid on;
xlabel('Normalized Frequency')
ylabel('dBFS')
title('Output Spectrum');



echo on
snr = calculateSNR(spec(3:fB),f-2);
echo off;
text_handle = text(0.25,-110, sprintf('SNR = %4.1fdB @ OSR=%d\n',snr,R));


echo on
[snr_pred,amp_pred] = predictSNR(H,R);
[snr,amp] = simulateSNR(H,R);
echo off
figure(5); clf;
plot(amp_pred,snr_pred,'-',amp,snr,'og');hold on;
plot(amp,snr,'-',amp,snr,'og');hold on;
ampmax=find(abs(snr-max(snr))<=1e-7);
ampmax=amp(ampmax);
grid on;
figureMagic([-120 10], 10, 1, [0 120], 10, 1);
xlabel('Input Level (dBFS)');
ylabel('SNR (dB)');
title('SNR curve- theory and simulation');
text(-49,15,sprintf('peak SNR = %4.1fdB\n(OSR=%d)',max(snr),R));
text(-49,30,sprintf('max amp = %4.1fdB\n(OSR=%d)',ampmax,R));



[a,g,b,c] = realizeNTF(H);
ABCD=stuffABCD(a,g,b,c);
b = [b(1) zeros(1,length(b)-1)];	% Use a single feed-in for the input
echo off
fprintf(1,'\nUnscaled modulator\n');
fprintf(1,'   DAC feedback coefficients = ');
for i=1:order
    fprintf(1,' %.6f',a(i));
end
fprintf(1,'\n   resonator feedback coefficients = ');
for i=1:order/2
    fprintf(1,' %.6f',g(i));
end
fprintf(1,'\n');
