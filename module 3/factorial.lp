fac(0,1).
fac(n,n*F) :- fac(F, fac(n-1)), n>=0.