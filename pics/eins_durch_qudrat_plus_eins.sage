from matplotlib.pyplot import *
import numpy as np
from random import uniform 

clf()
#axes().set_aspect(0.3)

bd=1.1

xvals=np.linspace(-bd,bd,num=200)
yvals=[0 for x in xvals]
for n in xrange(8):
    yvals=[s+(-x^2)**n for s,x in zip(yvals,xvals)]
    if n in [4,5,6,7]:
        plot(xvals,yvals,label='S_{}(x)'.format(2*n))

xvals=np.linspace(-bd,bd,num=200)
yvals=[1./(1.+x^2) for x in xvals]

xticks([-1.0,0.0,1.0])
yticks([0,1])
plot(xvals,yvals,label='1/(1+x^2)',color='black')

axvline(x=-1,color='grey',linestyle=':')
axvline(x=1,color='grey',linestyle=':')

#plot(range(-N,N+1),[abs(i) for i in range(-N,N+1)],label='|x|')
#plot(data.keys(),data.values(),'o',label='Stuetzpunkte')
   
legend()

savefig('eins_durch_quadrat_plus_eins.pdf')
