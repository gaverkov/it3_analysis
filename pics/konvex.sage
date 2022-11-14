from numpy import linspace 

var('x')
f(x)=e^x
a=-1
b=3
PLOT = plot(f,(x,a,b),thickness = 3,zorder=1)
PLOT.save("konvex.pdf")

for n in [1,2]:
    DER_PLOT = plot(f,(x,a,b),thickness = 3,zorder = 1)
    for c in linspace(a,b,7):
        DER_PLOT +=point((c,f(c)),color='blue',size=40,zorder=1)
        t(x) = taylor(f,x,c,n)
        DER_PLOT += plot(t,(x,a,b),color='orange', zorder =0,thickness=2)
        DER_PLOT.save("konvex_{}.pdf".format(n))
