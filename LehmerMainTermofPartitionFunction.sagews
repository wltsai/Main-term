# The function "LPMAIN(n)" is the Lehmer's main term by taking N = Hurwitz class number H(24*n-1) that is given by D. H. Lehmer, "On the remainders and convergence of the series for the partition function", Trans. Amer. Math. Soc., 46:362–373, 1939.

def e(z): return exp(2*pi*I*z)
def A(c,n): return sum(e( 1/2*(dedekind_sum(d,c))-d*n/c) for d in (0..c-1) if gcd(d,c)==1)
def H(n): return Integer(pari(24*n-1).qfbhclassno())
def LPMAIN(n): return (2*pi*(24*n-1)^(-3/4)*sum( A(c,n)/c*bessel_I(3/2, (1/6*pi*sqrt(24*n-1))/(c)) for c in (1..H(n)))).n(digits=90)  # 90 digits


LPMAIN(50) # Example for n = 50.

204225.999708594034345143403961532810014482067362232968026029798968764769210870753239853862 - 8.02842112064129300767555697736156200162824138937642414345743669007225975357875096384683563e-91*I

number_of_partitions(50) # Compare with the number of partitions for n = 50.

204226









