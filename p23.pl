% sample facts
parent(john, mary).
parent(linda, mary).
parent(mary, susan).
parent(mary, bob).

male(john). female(linda). female(mary). female(susan). male(bob).

father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).
sibling(X,Y) :-
    parent(P,X), parent(P,Y), X \= Y.

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).
