from matplotlib.pyplot import *
import numpy as np
from random import uniform 

clf()

xvals=np.linspace(-5,5,num=200)
yvals=[exp(-(x+1)^2) + exp(-(x-1)^2) for x in xvals]

xticks(np.linspace(-5,5,num=11))
yticks([0,1])
plot(xvals,yvals,color='black')

axvline(x=0,color='grey',linestyle=':')
   
savefig('camel.pdf')
