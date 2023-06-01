 # Calcular el perímetro de la región encerrada entre las gráficas de las funciones f f(x) = sqrt(x-2)  y g(x) = x^2-6x+8.
 using SymPy, Plots, QuadGK
 @vars x real = true
 f(x) = sqrt(x - 2)
 g(x) = x^2 - 6x + 8
 
 # Calculo de los puntos de corte.
 a = N(solve(f(x)-g(x)))[1]
 b = N(solve(f(x)-g(x)))[2]
 
 plot(f(x), a, b, aspect_ratio = 1, label = "")
 plot!(g(x), a, b, fillrange = f, fillalpha = 0.3, aspect_ratio = 1, c = 1, label = "")
 
 # Perímetro
 # Calcular la longitud de las curvas para hallar el perímetro total
 
 longf = quadgk(sqrt(1+diff(f)^2), b, a, rtol=10^-15)[1] # Longitud de curva de f(x)
 longg = quadgk(sqrt(1+diff(g)^2), b, a, rtol=10^-15)[1] # Longitud de curva de g(x)
 
 Perímetro = - longf - longg

 # Sol: 7.904595068592413404067575523426005603990635741837343724265858566780703327976