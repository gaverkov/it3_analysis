import matplotlib.pyplot as plt
import numpy as np

plt.clf()
plt.axes().set_aspect("equal")

def toPeriod(x):
    T=2*np.pi
    return T*(x/T-np.floor(x/T))

x=np.linspace(-4*np.pi,4*np.pi,num=300)

f=toPeriod(x)-np.pi
plt.fill_between(x,0*f,f,color='cyan')


y=0*x
for k in range(1,11):
    y-=2.0/k*np.sin(k*x)
        
plt.plot(x,y,color='r',linewidth=1.5)
#plt.plot([1, 2, 3, 4])



plt.xticks([2*np.pi*i for i in [-2,-1,0,1,2]],[r'$-4\pi$',r'$-2\pi$',r'$0$',r'$2\pi$',r'$4\pi$'])
plt.yticks([-np.pi,0,np.pi],[r'$-\pi$',r'$0$',r'$\pi$'])

plt.savefig("fourier.pdf")
