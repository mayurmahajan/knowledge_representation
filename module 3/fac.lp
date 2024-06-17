%fib(0,0).
%fib(1,1).
%fib(N+2,F1+F2):-fib(N,F1),fib(N+1,F2),N=0..(n-2).

%fac(0) :-1.
%fac(N+1) :- (N+1)*fib(N),N=0..(n-1).


fac(0, 1).
fac(N+1,(N+1)*F):-fac(N,F),N=0..(n-1).
%fac(F):-fac(N,F).
%#show fac/1.