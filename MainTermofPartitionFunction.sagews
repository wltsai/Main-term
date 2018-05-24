︠7e06ca3b-fbe0-40e9-bdca-41993b1ea61e︠
# The function "PMAIN(n)" is the main term appearing our main theorem.

def e(z): return exp(2*pi*I*z)
def CM(a,b,c): return -b/(2*a)+(sqrt(b^2-4*a*c))/(2*a)
def Form(n): return BinaryQF_reduced_representatives(n, primitive_only=True)
def Innerbesselsum(a,b,x,n,w): return x/(sqrt(2*a*w))*e(b/(2*a*w))*bessel_I(3/2, (pi*sqrt(n))/(a*w))

r_Infinity = matrix(ZZ, 2, [[1,0],[0,1]])
def r3(r): return matrix(ZZ, 2, [[1,0],[3,1]])*matrix(ZZ, 2, [[1,r],[0,1]]) # r=0,1
def r2(s): return matrix(ZZ, 2, [[1,1],[2,3]])*matrix(ZZ, 2, [[1,s],[0,1]]) # s=0,1,2
def r0(t): return matrix(ZZ, 2, [[0,-1],[1,0]])*matrix(ZZ, 2, [[1,t],[0,1]])# t=0,1,2,3,4,5

def Formtoscaling(a,b,c):
                        if mod(a,6) == 0 and mod(b,12) == 1:
                                  return r_Infinity
                        elif (mod(a,6) == 3 and mod(b,12) == 1) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 1 ) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 3 ) or                                  (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 5 ):
                                  return r3(0)
                        elif (mod(a,6) == 3 and mod(b,12) == 7) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 0 ) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 2 ) or                                  (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 4 ):
                                  return r3(1)
                        elif (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 0 ) or (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 3) or (mod(a,6) == 2 and mod(b,12) == 5 and                                  mod(c,6) == 0 ) or (mod(a,6) == 2 and mod(b,12) == 5 and mod(c,6) == 3 ) or (mod(a,6) == 4 and mod(b,12) == 5 and mod(c,6) == 0 ) or (mod(a,6) == 4 and                                  mod(b,12) == 5 and mod(c,6) ==3 ):
                                  return r2(0)
                        elif (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 2 ) or (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 5 ) or (mod(a,6) == 2 and mod(b,12) == 9 and                                  mod(c,6) == 1 ) or (mod(a,6) == 2 and mod(b,12) == 9 and mod(c,6) == 4 )  or (mod(a,6) == 4 and mod(b,12) == 1 and mod(c,6) == 0 ) or (mod(a,6) == 4 and                                mod(b,12) == 1 and mod(c,6) == 3 ):
                                  return r2(1)
                        elif (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 1 ) or (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 4 ) or (mod(a,6) == 2 and mod(b,12) == 1 and                                  mod(c,6) == 0 ) or  (mod(a,6) == 2 and mod(b,12) == 1 and mod(c,6) == 3 ) or (mod(a,6) == 4 and mod(b,12) == 9 and mod(c,6) == 2 ) or (mod(a,6) == 4 and                                mod(b,12) == 9 and mod(c,6) == 5 ):
                                  return r2(2)
                        elif mod(b,12) == 11 and mod(c,6) == 0:
                                  return r0(0)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 5) or (mod(a,6) == 1 and  mod(b,12) == 1 and mod(c,6) == 0) or (mod(a,6) == 2 and mod(b,12) == 3 and                                mod(c,6) == 1) or (mod(a,6) == 3 and  mod(b,12) == 5 and mod(c,6) == 2) or (mod(a,6) == 4 and  mod(b,12) == 7 and mod(c,6) == 3) or (mod(a,6) == 5 and                                  mod(b,12) == 9 and mod(c,6) == 4):
                                    return r0(1)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 4) or (mod(a,6) == 1 and  mod(b,12) == 3 and mod(c,6) == 2) or (mod(a,6) == 2 and mod(b,12) == 7 and                                mod(c,6) == 0) or (mod(a,6) == 3 and  mod(b,12) == 11 and mod(c,6) == 4) or (mod(a,6) == 4 and  mod(b,12) == 3 and mod(c,6) == 2) or (mod(a,6) == 5 and                                  mod(b,12) == 7 and mod(c,6) == 0):
                                    return r0(2)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 3) or (mod(a,6) == 1 and  mod(b,12) == 5 and mod(c,6) == 0) or (mod(a,6) == 2 and mod(b,12) == 11 and                                mod(c,6) == 3) or (mod(a,6) == 3 and  mod(b,12) == 5 and mod(c,6) == 0) or (mod(a,6) == 4 and  mod(b,12) == 11 and mod(c,6) == 3) or (mod(a,6) == 5 and                                  mod(b,12) == 5 and mod(c,6) == 0):
                                    return r0(3)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 2) or (mod(a,6) == 1 and  mod(b,12) == 7 and mod(c,6) == 0) or (mod(a,6) == 2 and mod(b,12) == 3 and                                mod(c,6) == 4) or (mod(a,6) == 3 and  mod(b,12) == 11 and mod(c,6) == 2) or (mod(a,6) == 4 and  mod(b,12) == 7 and mod(c,6) == 0) or (mod(a,6) == 5 and                                  mod(b,12) == 3 and mod(c,6) == 4):
                                    return r0(4)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 1) or (mod(a,6) == 1 and  mod(b,12) == 9 and mod(c,6) == 2) or (mod(a,6) == 2 and mod(b,12) == 7 and                                mod(c,6) == 3) or (mod(a,6) == 3 and  mod(b,12) == 5 and mod(c,6) == 4) or (mod(a,6) == 4 and  mod(b,12) == 3 and mod(c,6) == 5) or (mod(a,6) == 5 and                                  mod(b,12) == 1 and mod(c,6) == 0):
                                    return r0(5)
                        else:
                               return 'error'


def Width(a,b,c):
                if (Formtoscaling(a,b,c) == r_Infinity):
                        return (1,1)
                for r in [0..1]:
                     if Formtoscaling(a,b,c) == r3(r):
                                 return (r,2)
                for s in [0..2]:
                     if Formtoscaling(a,b,c) == r2(s):
                                 return (s,3)
                for t in [0..5]:
                     if Formtoscaling(a,b,c) == r0(t):
                                 return (t,6)
                else:
                                 return 'error'

def Zeta(a,b):
                if b==1:
                    return 1
                elif b==2:
                    return e(3*a/6)
                elif b==3:
                    return e((3-2*a)/6)
                else:
                     return e(-a/6)


def Ep(n):
                if (mod(n,12) == 1) or (mod(n,12) == -1):
                    return 1
                else:
                    return -1



def PINNER(n,u): return ((24*n-1)/u)^(1/4)*sum( Innerbesselsum( Form((1-24*n)/u)[i][0] , Form((1-24*n)/u)[i][1], Zeta(Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[0],Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[1]),(24*n-1)/u, Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[1] ) for i in (0..len(Form((1-24*n)/u))-1))


def PMAIN(n): return (2*pi*((24*n-1)^(-1))*(sum(Ep(sqrt(u))*PINNER(n,u) for u in divisors(24*n-1) if u.is_square()) )).n(digits=90) # 90 digits
︡da4b5eac-f9cb-40db-8197-16f5ae2160c8︡{"done":true}︡
︠b2a9523e-06bd-465c-9f62-7279844199e9︠
PMAIN(50) # Example for n = 50
︡83503a45-6548-4208-970e-c2f907710fe6︡{"stdout":"204226.014644736855230387266050473350821324455600994647831454362676477205968246798650681414 + 0.0485221191485643572100253698932548947893122683465239126197976234121803343500578646516168863*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠23637ad2-4638-45da-82e0-8c02dd669e16︠
number_of_partitions(50) # Compare with the number of partitions for n = 50
︡ad0a3892-e578-45ed-84bc-6b165d57cd1c︡{"stdout":"204226\n"}︡{"done":true}︡
︠6f00ef2b-8446-45f6-86c6-7f7c54d52176︠









