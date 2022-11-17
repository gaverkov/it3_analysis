var('x')
a=-4
b=4

def taylor_plot(k):
    T(x)=taylor(cos(x),x,0,k)
    return plot(T(x),(x,a,b),color='blue',zorder=0)

COS_PLOT = plot(cos(x),(x,a,b),color='red',zorder=1,thickness=3)

PLOT = COS_PLOT + sum([taylor_plot(k) for k in range(2,10,2)])
PLOT.save("taylor_cos.pdf")
