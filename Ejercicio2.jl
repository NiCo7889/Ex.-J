### Lo he hecho con chat, no estoy seguro

x = 1/2
n = 100
S_n = 0.0

for k = 1:n
    S_n += ((-1)^(k+1) * x^k) / k
end

println("La suma parcial de orden 100 es: ", round(S_n, digits=10))

## dudoso: 0.4054651081