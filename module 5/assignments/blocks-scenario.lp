%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%


% basic
% Initial state
%block(1..6).
%:- not on(1, 2, 0; 2, table, 0; 3, 4, 0; 4, table, 0; 5, 6, 0; 6, table, 0).
% Goal state
%:- not on(3, 2, m; 2, 1, m; 1, table, m; 6, 5, m; 5, 4, m; 4, table, m).
%  clingo blocks1.lp blocks-scenario.lp -c m=3 -c grippers=6
% ../../../../clingo.exe blocks1.lp blocks-scenario.lp -c m=3 -c grippers=6 0

% soln 1 (max 4)
% block(1..6).
% Initial state
% :- not on(1, 2, 0; 2, table, 0; 3, 4, 0; 4, table, 0; 5, 6, 0; 6, table, 0).
% Goal state
% :- not on(3, 2, m; 2, 1, m; 1, table, m; 6, 5, m; 5, 4, m; 4, table, m).
%../../../../clingo.exe blocks1.lp blocks-scenario.lp -c m=3 -c maxblocksontable=4 -c grippers=2 0


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
