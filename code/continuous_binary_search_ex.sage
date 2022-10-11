f = lambda x : sin(x)+1 - x
a = 0.0
b=5.0

x=SR('x')
print("Nullstelle dieser Funktion wird numerisch ermittelt:")
PLOT=plot(f, (x,a,b))
show(PLOT)

print("Approximation einer Nullstelle mit Hilfe der binaeren Suche: ",zero_through_binary_search(f, a, b))
