% Prediction Query
% Initially, the monkey is at L1, the bananas are at L2, and the box
% is at L3. The monkey walks to L3 and then pushes the box to
% L2. Does it follow that in the resulting state the monkey, the
% bananas and the box are at the same location?

:- not loc(monkey,l1,0).
:- not loc(bananas,l2,0).
:- not loc(box,l3,0).
:- not walk(l3,0).
:- not pushBox(l2,1).
:- #count{LL:loc(monkey,LL,2),
loc(bananas,LL,2),
loc(box,LL,2)}=1