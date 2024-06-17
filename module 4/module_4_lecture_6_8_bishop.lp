1 {bishop(R,C):R=1..n,C=1..n} <= k.
:-bishop(R1, C1), bishop(R2, C2), R1!=R2, |R1-R2|=|C1-C2|.
#maximize{1,R,C : bishop(R,C)}.
#show maximize/1.