move(1,A,B,_) :- write('Move from '), write(A), write(' to '), write(B), nl.
move(N,A,B,C) :-
    N>1, M is N-1,
    move(M,A,C,B),
    move(1,A,B,C),
    move(M,C,B,A).
