N = 25
a(n) = 2^n/factorial(big(n+1))
an = [a(n) for n=0:N]
An = cumsum(an)

# sol: 3.194528049465325113608577917850804644029176553174943696229501571806028715222361