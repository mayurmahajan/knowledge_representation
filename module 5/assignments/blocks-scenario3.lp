%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%

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


%  ../../../../clingo.exe blocks4.lp blocks-scenario4.lp -c mm=4 -c grippers=10 0

