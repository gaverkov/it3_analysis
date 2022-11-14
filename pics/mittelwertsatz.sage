var('x')
f(x) = exp(x) - 3 * x^2 + 2*x
a=-1
b=4
k = (f(b)-f(a))/(b-a)
secant = f(a)+k*(x-a)
PLOT=plot(f,(x,a,b),thickness = 5,zorder=1)
PLOT += sum([ plot(secant+2*s,(x,a,b),color='orange',thickness=3,zorder=0) for s in range(-6,2)])
PLOT += plot(secant, (x,a,b),thickness = 3, color = 'red',zorder=0)
PLOT.save("mittelwertsatz.pdf")

PLOT2 = plot(f-secant,(x,a,b),thickness = 5,zorder=1)
PLOT2 += sum([ plot(2*s,(x,a,b),color='orange',thickness=3,zorder=0) for s in range(-6,2)])
PLOT2 += plot(0, (x,a,b),thickness = 3, color = 'red',zorder=0)
PLOT2.save("mittelwertsatz2.pdf")
