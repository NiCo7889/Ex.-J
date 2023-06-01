using SymPy, Plots
@vars x real=true
f(x) = exp(-x/2)
plot(f, 0, 2, fillrange=0, fillalpha=0.3)
v=integrate(PI*(f(x))^2, 0, 2)
N(v)

# Sol: 2.716424322002156910023521022070500843147628991384504076807168819903312299808018