import matplotlib.pyplot as plt

plt.clf() # clear plot

s=[0]
for k in range(1,50):
    s.append(s[-1]+1.0/k)

plt.bar(s,len(s)*[1],width=0.01)
plt.xticks([0,1,1+0.5],[r"$0$",r"$1$",r"$1+\frac{1}{2}$"])
plt.yticks([],[])
plt.savefig("harmonic.pdf")
