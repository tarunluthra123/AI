% Tarun Luthra
% 2018 CSC 1023

combo(A,B,C,D):-
    or(A,B,T1), not(B,T2), nand(T1,T2,D), nor(T1,T2,C).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

not(0,1).
not(1,0). 

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

nand(A,B,C):-
    and(A,B,R),not(R,C).

nor(A,B,C):-
    or(A,B,R),not(R,C).