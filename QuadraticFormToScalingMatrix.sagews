# the following function is related to the quadratic form [a,b,c] and the corresponding scaling matrix which is given M. Dewar and R. Murty, "A derivation of the Hardy-Ramanujan formula from an arithmetic formula", Proc. Amer. Math. Soc., 141 (2012), 1903-1911.

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









