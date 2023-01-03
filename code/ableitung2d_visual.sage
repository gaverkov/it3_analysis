import itertools
from numpy import linspace 

def product_zerlegung_dict(A,B):
    D={}
    for a1,a2 in zip(A[:-1],A[1:]):
        for b1,b2 in zip(B[:-1],B[1:]):
            a = 0.5*(a1+a2)
            b = 0.5*(b1+b2)
            D[(a,b)] = [(a1,b1), (a2,b1), (a2,b2), (a1,b2)]
    return D

def lin_approx_of_2d_transform(F,Zerl_dict,Vars):
    F = [f.function(*Vars) for f in F]
    J = jacobian(F,Vars)
    F = vector(F)
    D = {}
    for k,P in Zerl_dict.items():
        D[tuple(F(*k))] = [F(*k) + J(*k)*(vector(p)-vector(k)) for p in P]
    return D

def plot_zerl_dict(D):
    G = Graphics()
    for k,P in D.items():
        G += point(k,color='black',size=10,zorder=1)
        G += polygon(P,color='orange',edgecolor='brown',zorder=0)
    return G

var('x,y')

zerl_dict = product_zerlegung_dict(linspace(0.,3.,4),linspace(0.,3.0,4))

my_movie = [] 

for t in linspace(0.,1.,200):
    F = [ (1-t)*x + t*(4*x + x^3  + y + y^2),(1-t)*y + t *( -x + 4*y +  x^3*y)]
    my_movie.append(plot_zerl_dict(lin_approx_of_2d_transform(F,zerl_dict,[x,y])))

animate(my_movie,axes=False) #.save("ableitung_2d_approx_coarse.gif")