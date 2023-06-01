# Calcular la coordenada x del centroide de la región encerrada entre las gráficas de las funciones f(x) = sqrt(x-2) y g(x) = x^2-6x+8
using SymPy, Plots
@vars x real = true
f(x) = sqrt(x - 2)
g(x) = x^2 - 6x + 8
# Calculo de los puntos de corte.

a, b = N(solve(f(x)-g(x)))
plot(f(x), a, b, aspect_ratio = 1, label = "")
plot!(g(x), a, b, fillrange = f, fillalpha = 0.3, aspect_ratio = 1, c = 1, label = "")

# Coordenada x del centroide.
cx = integrate(x*(f(x)-g(x)), a, b) / integrate(f(x)-g(x), a, b)

## sol: 3.259016994374947424102293417182819058860154589902881431067724311352630231410