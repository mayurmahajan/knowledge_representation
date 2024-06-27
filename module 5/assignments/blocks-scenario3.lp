%%%%%%%%%%%%%%%%%%%
% File: blocks-scenario.lp
%%%%%%%%%%%%%%%%%%%

% File: blocks-scenario.lp

% blocks declaration
block(z).
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
:- not on(z, table, 0).
:- not on(l, z, 0).
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
:- not on(e, j, m).
:- not on(a, e, m).
:- not on(n, a, m).
:- not on(i, d, m).
:- not on(h, i, m).
:- not on(z, h, m).
:- not on(o, z, m).
:- not on(k, g, m).
:- not on(c, k, m).
:- not on(b, c, m).
:- not on(l, b, m).


%  ../../../../clingo.exe blocks4.lp blocks-scenario4.lp -c m=4 -c grippers=10 0

