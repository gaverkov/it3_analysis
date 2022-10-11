import matplotlib.pyplot as plt
import numpy as np
from math import *

f = lambda x : 1./x
YTICKS=[[1,1/2,1/3,1/4,1/5],[r'$1$',r'$\frac{1}{2}$',r'$\frac{1}{3}$',r'$\frac{1}{4}$',r'$\frac{1}{5}$']]

# ======================================= UPPER BOUND: PLOT GENERATION ======================================= 

plt.clf()


I=[i for i in range(0,5)]
F=[f(x+1) for x in I]

plt.xticks(range(0,6))
plt.yticks(*YTICKS)


plt.bar(I,F,width=1.0,align='edge',color=['m','r','g','b','y'],edgecolor='black')


I=np.linspace(1,5,num=50)
F=[f(x) for x in I]

plt.plot(I,F,color='black',linewidth=3)

plt.savefig('harmonic_number_upper.pdf')

# ======================================= LOWER BOUND: PLOT GENERATION ======================================= 


plt.clf()

I=[i for i in range(1,6)]
F=[f(x) for x in I]

plt.xticks(range(1,7))
plt.yticks(*YTICKS)


plt.bar(I,F,width=1.0,align='edge',color=['m','r','g','b','y'],edgecolor='black')

I=np.linspace(1,6,num=50)
F=[f(x) for x in I]

plt.plot(I,F,color='black',linewidth=3)


plt.savefig('harmonic_number_lower.pdf')
