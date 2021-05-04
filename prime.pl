% Tarun Luthra
% 2018 CSC 1023
% Prime factorization of a given positive integer number. prime_factors(N, L) succeeds if the L is the list of prime factors of N.

prime_factors(N,L):- 
    N >0,prime_factors(N,2,L).

% prime_factors(N,F,L) succeeds if L is the list of prime factors of N such that N does not have a prime factor less than K. 

prime_factors(1,F,[]):-
    !.
prime_factors(N,F,[F|L]):- % N is multiple of F
    R is N // F, N =:= R * F, !, 
    prime_factors(R,F,L).
prime_factors(N,F,L) :- 
    next_factor(N,F,NF), 
    prime_factors(N,NF,L).        % N is not multiple of F

% next_factor(N,F,NF) succeeds if F does not divide N and NF is the next larger candidate to be a factor of N.

next_factor(N,2,3):-
    !.
next_factor(N,F,NF) :-
    F *F < N,!, 
    NF is F + 2.  next_factor(N,_,N).                                 