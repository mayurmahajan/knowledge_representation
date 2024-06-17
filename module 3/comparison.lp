
%C is warm if
%	the temperature in C is T1,
%	the temperature in Austin is T2,
%	and T1 > T2.


warm(C) :- t(C,T1), t(austin,T2), T1>T2.
t(austin,88). t(dallas,95). t(houston,90). t(san_antonio,85).
#show warm/1.