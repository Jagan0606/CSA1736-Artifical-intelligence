fact(a).
fact(b).

rule([a,b],c).

forward :-
    fact(a), fact(b),
    assert(fact(c)).
