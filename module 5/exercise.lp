boolean(t;f).

% sorts and object declarations
object(jack;car).
location(home;work).

:- not loc(jack, home, 0).
:- not loc(car, home, 0).
go(work,0).

% effect and precondition of go
loc(jack,L,T+1) :- go(L,T).
{loc(car,L,T+1)} :- go(L,T), loc(car,L1,T), loc(jack,L1,T), T=0..m-1.
:- go(L,T), loc(jack,L,T).

% fluents are exogenous initially 
1{loc(O,LL,0):location(LL)}1 :- object(O).

% uniqueness and existence of fluent values
:- not 1{loc(O,LL,T)}1, object(O), T=1..m.

% actions are exogenous
{go(L,T)} :- location(L), T=0..m-1.

% fluents are inertial
{loc(O,L,T+1)} :- loc(O,L,T), T=0..m-1.