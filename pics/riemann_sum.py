import matplotlib.pyplot as plt
from math import *

f = lambda x : exp(-x**2)

plt.clf()

I=[i/3. for i in range(-6,6)]
F=[f(x+1./6.) for x in I]

plt.xticks(list(range(-2,3)))
plt.yticks([0,1])


plt.bar(I,F,width=0.333,align='edge',color='yellow',edgecolor='black')

plt.plot([x+1./6 for x in I],F,'o')

I=[i/30. for i in range(-60,60)]
F=[f(x) for x in I]

plt.plot(I,F,color='blue',linewidth=2)

plt.savefig('riemann_sum.pdf')
