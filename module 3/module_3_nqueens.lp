1 {queen(R, 1..n)} 1 :- R=1..n.
:- queen(R1,C), queen(R2,C), R1!=R2.
:- queen(R1,C1), queen(R2,C2), R1!=R2, |R1-R2|=|C1-C2|.



