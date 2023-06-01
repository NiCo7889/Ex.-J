using SymPy
f(x) = 1/sqrt(x + 1)
Δx = 2/50
x_i = 2:Δx:4
areas_inf = [f(i-1)*Δx for i in x_i]
sum_inf = sum(areas_inf)

## sol: 1.1957302472331612