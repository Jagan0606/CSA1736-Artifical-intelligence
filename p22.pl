% facts
bird(sparrow).
bird(ostrich).
bird(penguin).

can_fly(X) :- bird(X), \+ cannot_fly(X).
cannot_fly(ostrich).
cannot_fly(penguin).

% example: override / exceptional rule
can_fly(sparrow).
