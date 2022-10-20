def a(n):
    return n + 2*(-1)^n * 1.0 

PLOT=points([(n,a(n)) for n in range(1,21)],size=40)

PLOT.save("gegen_unendlich.pdf")