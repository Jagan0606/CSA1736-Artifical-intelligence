h(a,3). h(b,2). h(c,1). h(d,0).

edge(a,b).
edge(a,c).
edge(c,d).

best_first(Start,Goal,Start) :- Start = Goal.
best_first(Start,Goal,Path) :-
    edge(Start,Next),
    best_first(Next,Goal,Rest),
    Path = [Start|Rest].
