using SymPy

# Definir la variable
@vars x

# Definir las funciones
f = 3*exp(-2*x)/(1+exp(-x))^3
g = 1/2*exp(-abs(x)/2)
h = 2/(pi*(x^2+4))
j = x/(1+x^2)^2

# Lista de funciones
functions = [f, g, h, j]

# Verificar las condiciones para cada función
for (i, func) in enumerate(functions)
    # Verificar si la función es no negativa
    non_negative = simplify(func >= 0)

    # Verificar si la integral de la función es 1
    integral = integrate(func, (x, -oo, oo))

    println("Función $i: ")
    println("No negativa: $non_negative")
    println("Integral: $integral")
    println("\n")
end

### sol: A) Ninguna es correcta  (Pero marcala como dudosa)