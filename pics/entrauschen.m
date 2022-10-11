x=1:8000;

Fs = 8000;

Frequenz = 440 ; % Kammerton (A, 440 Hz)

omega = Frequenz* 2*pi / 8000;

y=sin(omega*x);

z=y+0.5*rand(size(y));

w = z;

for i=1:length(w)
    if abs(w(i)) > 5; 
        w(i)=0;
    end
end

u=abs(ifft(w));


    

