from math import *
import sounddevice as sd
import matplotlib.pyplot as plt
from numpy.fft import fft
import numpy as np

rate=48000 # in frames per second
length=1 # in seconds

def s(nu,length,rate=48000):
    return np.array([sin(2*pi*nu*i/rate) for i in range(int(length*rate))])


kammerton=s(440,0.5) # 440 Hz Kammerton 
dial=s(425,0.5) # 425 Hz - dial tone EU
hinweis=np.concatenate([s(950,0.3),s(1400,0.3),s(1800,0.3)])
combi=s(440,0.5)+0.3*s(500,0.5)

#sd.play(combi,rate,blocking=True)

plt.plot(combi[:2000])

plt.xticks(range(0,2001,500))
plt.yticks([-1,0,1])
plt.xlabel("Frame-Indizes")

sax=plt.axes().secondary_xaxis('top',functions=(lambda x : x/rate,lambda x : x*rate))
sax.set_xticks([0,0.01,0.02,0.03,0.04,0.05])
sax.set_xlabel("Zeit in Sekunden")

plt.grid(True)

plt.savefig("combi_signal.pdf")
plt.show()

plt.plot(np.abs(fft(combi))[0:1000])
plt.yticks([0,4000,8000,12000])

sax=plt.axes().secondary_xaxis('top',functions=(lambda x : 2*x,lambda x : x/2))
sax.set_xticks([0,440,1000,2000])
sax.set_xlabel("Frequenzen in Hz")