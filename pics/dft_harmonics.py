import matplotlib.pyplot as plt
import numpy as np
from math import *


n=16
J=range(n)

for k in J:
    plt.subplot(n,2,2*k+1)
    plt.plot(J,[cos(2*pi*j*k/n) for j in J],'-',color='blue')
    plt.plot(J,[cos(2*pi*j*k/n) for j in J],'.',color='blue')
    plt.ylabel(k)
    if k==n-1:
        plt.xticks(J)
    else:
        plt.xticks(J,n*[''])
    plt.yticks([-1,0,1],['','',''])
#    plt.axis("off")
    #plt.grid(True)
    
    plt.subplot(n,2,2*k+2)
    plt.plot(J,[sin(2*pi*j*k/n) for j in J],'-',color='red')
    plt.plot(J,[sin(2*pi*j*k/n) for j in J],'.',color='red')
    if k==n-1:
        plt.xticks(J)
    else:
        plt.xticks(J,n*[''])
    plt.yticks([-1,0,1],['','',''])
#    plt.axis("off")
    #plt.grid(True)


#fig, ax = plt.subplots()


#plt.show()
plt.savefig('dft_harmonics_{}.pdf'.format(n))
