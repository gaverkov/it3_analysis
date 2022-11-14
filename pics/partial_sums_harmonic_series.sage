def sums(a,R):
    return [sum([a(k) for k in range(1,n+1)]) for n in R]

N=50 

x=SR('x')
PLOT=plot(1+log(x), (x,1,N),color='blue')
PLOT+=plot(log(x), (x,1,N),color='blue')

R=range(1,N+1)

for k,s in zip(R, sums( lambda k : 1.0/k , R )):
    PLOT+=line([(k,0),(k,s)],color='red')
    
show(PLOT)
PLOT.save('partial_sums_harmonic_series.pdf')
