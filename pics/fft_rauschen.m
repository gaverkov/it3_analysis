load 'handel';
% y - handel , Fs - bit pers second

subplot(3,2,1);
plot(y,'b');

subplot(3,2,2);
plot(abs(fft(y)),'r')

z=y+0.2*rand(size(y));
subplot(3,2,3);
plot(z,'b')

subplot(3,2,4);
plot(abs(fft(z)),'r')

w=fft(z);
w(1:300)=0;
w(length(w)-299:length(w))=0;

u=real(ifft(w));
subplot(3,2,5);
plot(u,'b');

subplot(3,2,6);
plot(abs(fft(u)),'r')




