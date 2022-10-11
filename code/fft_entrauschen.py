from math import *
import sounddevice as sd
import matplotlib.pyplot as plt
from numpy.fft import fft, ifft
import numpy as np

rate=48000 # in frames per second
length=1 # in seconds

def s(nu,length,rate=48000):
    return np.array([sin(2*pi*nu*i/rate) for i in range(int(length*rate))])


noisy=s(440,0.5)+2*np.random.uniform(-1,1,int(0.5*48000))

x=noisy

sd.play(x,rate,blocking=True)

plt.plot(x[:400],'r')
plt.show()

y=fft(x)
plt.plot(np.abs(y),'b')
plt.show()

plt.plot(np.abs(y[0:250]),'k')
plt.show()


y_clean=[ (v if abs(v)>3000 else 0) for v in y ]

plt.plot(np.abs(y_clean[0:250]),'k')
plt.show()


plt.plot(np.abs(y_clean),'b')
plt.show()


x_clean=np.real(ifft(y_clean))

plt.plot(x_clean[:400],'r')
plt.show()

sd.play(x_clean,rate,blocking=True)
