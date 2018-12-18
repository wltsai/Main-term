︠# The function "PMAIN(n)" is the main term appearing in our main theorem.

def e(z): return exp(2*pi*I*z)
def CM(a,b,c): return -b/(2*a)+(sqrt(b^2-4*a*c))/(2*a)
def Form(n): return BinaryQF_reduced_representatives(n, primitive_only=True)


r_Infinity = matrix(ZZ, 2, [[1,0],[0,1]])
def r3(r): return matrix(ZZ, 2, [[1,0],[3,1]])*matrix(ZZ, 2, [[1,r],[0,1]]) # r=0,1
def r2(s): return matrix(ZZ, 2, [[1,1],[2,3]])*matrix(ZZ, 2, [[1,s],[0,1]]) # s=0,1,2
def r0(t): return matrix(ZZ, 2, [[0,-1],[1,0]])*matrix(ZZ, 2, [[1,t],[0,1]])# t=0,1,2,3,4,5

def Formtoscaling(a,b,c):
                        if mod(a,6) == 0 and mod(b,12) == 1:
                                  return r_Infinity
                        elif (mod(a,6) == 3 and mod(b,12) == 1) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 1 ) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 3 ) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 5 ):
                                  return r3(0)
                        elif (mod(a,6) == 3 and mod(b,12) == 7) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 0 ) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 2 ) or (mod(a,6) == 0 and mod(b,12) == 7 and mod(c,6) == 4 ):
                                  return r3(1)
                        elif (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 0 ) or (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 3) or (mod(a,6) == 2 and mod(b,12) == 5 and  mod(c,6) == 0 ) or (mod(a,6) == 2 and mod(b,12) == 5 and mod(c,6) == 3 ) or (mod(a,6) == 4 and mod(b,12) == 5 and mod(c,6) == 0 ) or (mod(a,6) == 4 and  mod(b,12) == 5 and mod(c,6) ==3 ):
                                  return r2(0)
                        elif (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 2 ) or (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 5 ) or (mod(a,6) == 2 and mod(b,12) == 9 and mod(c,6) == 1 ) or (mod(a,6) == 2 and mod(b,12) == 9 and mod(c,6) == 4 )  or (mod(a,6) == 4 and mod(b,12) == 1 and mod(c,6) == 0 ) or (mod(a,6) == 4 and  mod(b,12) == 1 and mod(c,6) == 3 ):
                                  return r2(1)
                        elif (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 1 ) or (mod(a,6) == 0 and mod(b,12) == 5 and mod(c,6) == 4 ) or (mod(a,6) == 2 and mod(b,12) == 1 and mod(c,6) == 0 ) or  (mod(a,6) == 2 and mod(b,12) == 1 and mod(c,6) == 3 ) or (mod(a,6) == 4 and mod(b,12) == 9 and mod(c,6) == 2 ) or (mod(a,6) == 4 and  mod(b,12) == 9 and mod(c,6) == 5 ):
                                  return r2(2)
                        elif mod(b,12) == 11 and mod(c,6) == 0:
                                  return r0(0)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 5) or (mod(a,6) == 1 and  mod(b,12) == 1 and mod(c,6) == 0) or (mod(a,6) == 2 and mod(b,12) == 3 and mod(c,6) == 1) or (mod(a,6) == 3 and  mod(b,12) == 5 and mod(c,6) == 2) or (mod(a,6) == 4 and  mod(b,12) == 7 and mod(c,6) == 3) or (mod(a,6) == 5 and  mod(b,12) == 9 and mod(c,6) == 4):
                                    return r0(1)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 4) or (mod(a,6) == 1 and  mod(b,12) == 3 and mod(c,6) == 2) or (mod(a,6) == 2 and mod(b,12) == 7 and mod(c,6) == 0) or (mod(a,6) == 3 and  mod(b,12) == 11 and mod(c,6) == 4) or (mod(a,6) == 4 and  mod(b,12) == 3 and mod(c,6) == 2) or (mod(a,6) == 5 and  mod(b,12) == 7 and mod(c,6) == 0):
                                    return r0(2)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 3) or (mod(a,6) == 1 and  mod(b,12) == 5 and mod(c,6) == 0) or (mod(a,6) == 2 and mod(b,12) == 11 and mod(c,6) == 3) or (mod(a,6) == 3 and  mod(b,12) == 5 and mod(c,6) == 0) or (mod(a,6) == 4 and  mod(b,12) == 11 and mod(c,6) == 3) or (mod(a,6) == 5 and  mod(b,12) == 5 and mod(c,6) == 0):
                                    return r0(3)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 2) or (mod(a,6) == 1 and  mod(b,12) == 7 and mod(c,6) == 0) or (mod(a,6) == 2 and mod(b,12) == 3 and mod(c,6) == 4) or (mod(a,6) == 3 and  mod(b,12) == 11 and mod(c,6) == 2) or (mod(a,6) == 4 and  mod(b,12) == 7 and mod(c,6) == 0) or (mod(a,6) == 5 and  mod(b,12) == 3 and mod(c,6) == 4):
                                    return r0(4)
                        elif (mod(a,6) == 0 and  mod(b,12) == 11 and mod(c,6) == 1) or (mod(a,6) == 1 and  mod(b,12) == 9 and mod(c,6) == 2) or (mod(a,6) == 2 and mod(b,12) == 7 and mod(c,6) == 3) or (mod(a,6) == 3 and  mod(b,12) == 5 and mod(c,6) == 4) or (mod(a,6) == 4 and  mod(b,12) == 3 and mod(c,6) == 5) or (mod(a,6) == 5 and  mod(b,12) == 1 and mod(c,6) == 0):
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



def PINNER(n,u): return  sum( e(-1/(Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[1])*CM(Form((1-24*n)/u)[i][0] , Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2]))*Zeta(Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[0],Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[1])*(1-1/(2*pi)*(2*(Form((1-24*n)/u)[i][0])*sqrt(u)/(sqrt(24*n-1)))*Width(Form((1-24*n)/u)[i][0],Form((1-24*n)/u)[i][1],Form((1-24*n)/u)[i][2])[1]) for i in (0..len(Form((1-24*n)/u))-1))


def PMAIN(n): return (2*pi*((24*n-1)^(-1))*(sum(Ep(sqrt(u))*PINNER(n,u) for u in divisors(24*n-1) if u.is_square()) )).n(digits=90) # 90 digits

PMAIN(50) # Example for n = 50.

204226.015614912156488493437751423786894974139650800321020871915541968108471339213273166839 + 0.0481257332311375138085430129867699012567554089493264665776955969331801173531261130809674894*I

number_of_partitions(50) # Compare with the number of partitions for n = 50.

204226

abs(PMAIN(50)-number_of_partitions(50)).n(digits=6) # |PMAIN(50)-number_of_partitions(50)|

0.0505956





