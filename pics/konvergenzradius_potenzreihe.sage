def psum(n,x):
    return sum([x^k for k in range(n+1)])

var('x,y')

def myplot(n):
    return plot( log(psum(n,x)) , (x,-1.5,1.5), fill=False,plot_points=150)

PLOT=sum([myplot(n) for n in range(100,200,5)])+line([(1,0),(1,80)],color='red')+line([(-1,0),(-1,80)],color='red')
PLOT.save("konvergenzradius_potenzreihe.pdf")
