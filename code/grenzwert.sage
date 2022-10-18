def a(n):
    return 5. + (-1)^n * 1.0 / n

PLOT=points([(n,a(n)) for n in range(1,21)],size=40)+line([(0,5),(21,5)],color='red')

PLOT.save("grenzwert.pdf")
