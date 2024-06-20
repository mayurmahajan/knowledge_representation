%a(1,2; -5; -1,-7; -3,9; 1,2).
%b(N) :- N = #sum{X,Y : a(X,Y)}.

%p(a,1). p(b,1). p(c,2). p(a,1).
%q(N) :- N = #count{A,X : p(A,X)}.

%a(X) :- X = #sum{M : M=1..3, N=1..3}.

%a(X) :- X = #count{M,N : M=1..3, N=1..3}.


%p(1..2).
%q(1..2).
%{r(X,Y): q(X)} :- p(Y).

%{q} :- not p.


%{p(X)} :- q(X).


%a(a;b;c).
%b(1..2).
%1{f(X,Y) : b(Y)}1 :- a(X).
%:- b(Y), #count{X:f(X,Y)}=0.


