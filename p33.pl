vowel(a). vowel(e). vowel(i). vowel(o). vowel(u).

count([],0).
count([H|T],N) :-
    count(T,N1),
    (vowel(H) -> N is N1+1 ; N = N1).
