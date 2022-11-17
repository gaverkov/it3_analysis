PLOT = sum([plot(x^k,(x,0,0.8)) for k in range(1,6)])
PLOT.save("powers.pdf")