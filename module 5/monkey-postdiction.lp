% Postdiction Query

% The monkey walked to location L3 and then pushed the box. Does
% it follow that the box was initially at L3?

:- not walk(l3,0).
:- not 1{pushBox(LL,1):location(LL)}.
:- loc(box,l3,0).