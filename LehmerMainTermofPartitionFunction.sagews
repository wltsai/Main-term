# The function "LPMAIN(n)" is the Lehmer's main term by taking N = 3 that is given by D. H. Lehmer, "On the remainders and convergence of the series for the partition function", Trans. Amer. Math. Soc., 46:362–373, 1939.

def e(z): return exp(2*pi*I*z)
def A(c,n): return sum(e( 1/2*(dedekind_sum(d,c))-d*n/c) for d in (0..c-1) if gcd(d,c)==1)
def H(n): return Integer(pari(24*n-1).qfbhclassno())
def LPMAIN(n): return (2*pi*(24*n-1)^(-3/4)*sum( A(c,n)/c*bessel_I(3/2, (1/6*pi*sqrt(24*n-1))/(c)) for c in (1..3))).n(digits=90)  # 90 digits


LPMAIN(50) # Example for n = 50.

204226.042988836828481033928351010181289868104335308027216697759197686039754323107566620724 - 8.27838835147697981553753450077429247317550930117124985757189425268633452563719599557797500e-91*I

number_of_partitions(50) # Compare with the number of partitions for n = 50.

204226









