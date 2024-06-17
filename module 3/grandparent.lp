% Facts
parent(alice, bob).
parent(bob, carol).
parent(carol, dave).

% Rule for grandparent
grandparent(G, C) :- parent(G, P), parent(P, C).

% Show directive
#show grandparent/2.
