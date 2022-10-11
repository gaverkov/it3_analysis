import matplotlib.pyplot as plt
import numpy as np
from math import *

deg2rad = lambda x : x * pi / 180 
rad2deg = lambda x : x * 180/pi

x=np.linspace(0,2*pi,num=200)

plt.plot(x,np.sin(x),linewidth=3)
plt.xticks([0,pi,2*pi],[r'$0$',r'$\pi$',r'$2\pi$'] )
plt.yticks([-1,0,1])
plt.xlabel('Radianten')

sax=plt.axes().secondary_xaxis('top',functions=(rad2deg,deg2rad))
sax.set_xticks([0,180,360])
sax.set_xlabel('Grade')

plt.grid(True)
