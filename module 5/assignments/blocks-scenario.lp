%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%


% basic
% Initial state
% block(1..6).
% :- not on(1, 2, 0; 2, table, 0; 3, 4, 0; 4, table, 0; 5, 6, 0; 6, table, 0).
% Goal state
% :- not on(3, 2, m; 2, 1, m; 1, table, m; 6, 5, m; 5, 4, m; 4, table, m).
%  clingo blocks1.lp blocks-scenario.lp -c m=3 -c grippers=6
% ../../../../clingo.exe blocks1.lp blocks-scenario.lp -c m=3 -c grippers=6 0

% soln 1 (max 4)
% block(1..6).
% Initial state
% :- not on(1, 2, 0; 2, table, 0; 3, 4, 0; 4, table, 0; 5, 6, 0; 6, table, 0).
% Goal state
% :- not on(3, 2, m; 2, 1, m; 1, table, m; 6, 5, m; 5, 4, m; 4, table, m).
% ../../../../clingo.exe blocks1.lp blocks-scenario.lp -c m=3 -c maxblocksontable=4 -c grippers=6 0


% soln 2
% doesnt need blocks-scenario.lp
%  ../../../../clingo.exe blocks2.lp -c m=0 -c grippers=6 0

% soln 3
% loc(m)=table, loc(l)=m, loc(a)=l, loc(b)=a, loc(c)=b,
% loc(o)=table, loc(n)=o, loc(d)=n, loc(e)=d, loc(j)=e,
% loc(k)=j, loc(f)=table, loc(g)=f, loc(h)=g, loc(i)=h

% In maxstep:
% loc(e)=j, loc(a)= e, loc(n)=a, loc(i)=d, loc(h)=i,
% loc(m)=h, loc(o)= m, loc(k)=g, loc(c)=k, loc(b)=c,
% loc(l)=b.


% File: blocks-scenario.lp

% blocks declaration
block(m).
block(l).
block(a).
block(b).
block(c).
block(o).
block(n).
block(d).
block(e).
block(j).
block(k).
block(f).
block(g).
block(h).
block(i).

% initial state
:- not on(m, table, 0).
:- not on(l, m, 0).
:- not on(a, l, 0).
:- not on(b, a, 0).
:- not on(c, b, 0).
:- not on(o, table, 0).
:- not on(n, o, 0).
:- not on(d, n, 0).
:- not on(e, d, 0).
:- not on(j, e, 0).
:- not on(k, j, 0).
:- not on(f, table, 0).
:- not on(g, f, 0).
:- not on(h, g, 0).
:- not on(i, h, 0).

% goal state
:- not on(e, j, mm).
:- not on(a, e, mm).
:- not on(n, a, mm).
:- not on(i, d, mm).
:- not on(h, i, mm).
:- not on(m, h, mm).
:- not on(o, m, mm).
:- not on(k, g, mm).
:- not on(c, k, mm).
:- not on(b, c, mm).
:- not on(l, b, mm).


%  ../../../../clingo.exe blocks3.lp blocks-scenario.lp -c mm=14 -c grippers=1 0

