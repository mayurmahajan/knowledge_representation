% planning query (find shortest sequence of action that will allow monkey to have banana)

% initial condition
:- not loc(monkey,l1,0).
:- not loc(bananas,l2,0).
:- not loc(box,l3,0).
:- not hasBananas(f,0).

% goal
:- not hasBananas(t,m).