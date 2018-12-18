︠67d6b60e-7949-4c8f-b6df-68e6905d0a6es︠
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
                     return 2*pi*sum(moebius(s)*I2(n,s) for s in (1,2,3,6) )
    elif n==0:
                     return 4*pi^3/3*sum(moebius(s)*I3(n,s) for s in (1,2,3,6) )
    elif n<0:
                     return 2*pi*sum(moebius(s)*I(n,s) for s in (1,2,3,6) )


︡abcd8a78-327b-4955-8300-46fec5a96443︡{"done":true}︡
︠914a4399-4e5e-4273-91fc-7433f6080919︠

︡7c3b7ec4-5731-43d8-abd4-6fbf285c3e7c︡
︠fdeaee2f-17e1-4c1b-9a5d-7f8d988332fds︠
(a(0)).n()
︡d6adeb43-89da-479e-9295-5b9b3be325de︡{"stdout":"1.59154943114814 - 4.12043597472043e-25*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠5fbea966-17c4-4d2f-9587-aeb2b3db41b8s︠
(a(1)).n()
︡d0ef1435-60db-413e-acb2-735d8dd5ede1︡{"stdout":"28.9999999891773 - 3.84570191387109e-24*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠73418687-3373-4354-8eeb-9eaaa69a5b80s︠
(a(-1)).n()
︡f31be5c7-b2ac-4ad2-ad2f-9c184607e94b︡{"stdout":"-1.00000002025958 + 5.36458444868183e-25*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠796c76f0-2ac4-40fb-b533-0de02855eaf7s︠
(a(-2)).n()
︡067da078-13a5-4b51-b34c-5642c9cb04db︡{"stdout":"-8.49876505942603e-8 + 1.03055054596403e-24*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠36841c0d-1496-4625-8b28-7c8fb59b2736︠

(a(-3)).n()
︡d550aa19-00df-4f2f-be82-97fc45703843︡{"stdout":"-1.95953375747848e-9 + 8.35257754597411e-26*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠8ba97cea-845c-4e4a-801e-9ae0ea6e7e6as︠

(a(-4)).n()
︡1b53c398-9da5-4851-bb67-ceb1edfd75fb︡{"stdout":"-1.87286200520526e-7 - 8.70708991247972e-25*I"}︡{"stdout":"\n"}︡{"done":true}︡
︠c529aa25-fadf-496f-97f0-9686a9be952c︠









