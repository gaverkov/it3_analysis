var('z')

CPLOT=complex_plot(100/(2-z)/(3-z),(-4,4),(-2,2),contoured=True,plot_points=500,zorder=0)
CIRCLE=circle((0,0),2,zorder=1)
POINTS=points([(2,0),(3,0)],color='black',size=40,zorder=2)
PLOT=CPLOT+CIRCLE+POINTS
PLOT.save("complex_plot_rational.pdf")

CPLOT=complex_plot(100/(1+z^2),(-1.2,1.2),(-1.2,1.2),contoured=True,plot_points=500,zorder=0)
CIRCLE=circle((0,0),1,zorder=1)
POINTS=points([(0,1),(0,-1)],color='black',size=40,zorder=2)
PLOT=CPLOT+CIRCLE+POINTS
PLOT.save("complex_plot_rational_2.pdf")
