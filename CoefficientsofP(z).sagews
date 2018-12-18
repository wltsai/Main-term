# Numerical verification of a(n) appearing in P(z) the weight 0 weak Maass form for \Gamma_{0}(6).

def OK(s,n,c):G = DirichletGroup(c);e = G(1); return e.kloosterman_sum_numerical(80,s,n)

def K(s,n,c):
    if c==1:
                      return 1
    else:
                      return OK(s,n,c)

def I(n,s): return sum( (K(n,-inverse_mod(s,c),c))/(c*sqrt(s))*(bessel_J(3, 4*pi*sqrt(abs(n))/(c*sqrt(s))) ) for c in (1..1000) if gcd(c,s)==1 and mod(c,6/s)==0)

def I2(n,s): return sum( (K(n,-inverse_mod(s,c),c))/(c*sqrt(s))*bessel_I(3, 4*pi*sqrt(abs(n))/(c*sqrt(s))) for c in (1..1000) if gcd(c,s)==1 and mod(c,6/s)==0)

def I3(n,s): return sum( K(n,-inverse_mod(s,c),c)/(c^4*s^2) for c in (1..1000) if gcd(c,s)==1 and mod(c,6/s)==0)

def a(n):
    if n>0:
                     return 2*pi*sum(moebius(s)*I2(n,s) for s in (1,2,3,6))
    elif n==0:
                     return 4*pi^3/3*sum(moebius(s)*I3(n,s) for s in (1,2,3,6))
    elif n<0:
                     return 2*pi*sum(moebius(s)*I(n,s) for s in (1,2,3,6))


(a(0)).n() # Example for n = 0
1.59154943114814 - 4.12043597472043e-25*I ≈ 5/pi

(a(1)).n() # Example for n = 1
28.9999999891773 - 3.84570191387109e-24*I ≈ 29

(a(-1)).n() # Example for n = -1
-1.00000002025958 + 5.36458444868183e-25*I ≈ -1

(a(-2)).n() # Example for n = -2
-8.49876505942603e-8 + 1.03055054596403e-24*I ≈ 0









