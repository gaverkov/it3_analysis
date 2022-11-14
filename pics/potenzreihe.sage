from matplotlib.pyplot import *
import numpy as np
from random import uniform 

clf()

xvals=np.linspace(-1.5,1,num=200)
yvals=[0 for x in xvals]
for n in xrange(7):
    yvals=[s+x**n for s,x in zip(yvals,xvals)]
    if n in [2,4,6]:
        plot(xvals,yvals,label='S_{}(x)'.format(n))

xvals=np.linspace(-1.5,0.8,num=200)
yvals=[1./(1.-x) for x in xvals]

xticks([-1.5,-1.0,0.0,1.0])
yticks([-1,0,1])
plot(xvals,yvals,label='1/(1-x)',color='black')

axvline(x=-1,color='grey',linestyle=':')
axvline(x=1,color='grey',linestyle=':')

#plot(range(-N,N+1),[abs(i) for i in range(-N,N+1)],label='|x|')
#plot(data.keys(),data.values(),'o',label='Stuetzpunkte')
   
legend()
savefig('potenzreihe.pdf')
