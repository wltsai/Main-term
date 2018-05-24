# The function "PMAIN(n)" is the main term appearing in our main theorem.

def PMAIN(n): return (2*pi*((24*n-1)^(-1))*(sum(Ep(sqrt(u))*PINNER(n,u) for u in divisors(24*n-1) if u.is_square()) )).n(digits=90) # 90 digits
︡
PMAIN(50) # Example for n = 50
︡
204226.014644736855230387266050473350821324455600994647831454362676477205968246798650681414 + 0.0485221191485643572100253698932548947893122683465239126197976234121803343500578646516168863*I

number_of_partitions(50) # Compare with the number of partitions for n = 50
︡
204226








