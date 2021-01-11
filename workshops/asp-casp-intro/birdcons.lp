
flies(X) :- bird(X), not ab(X).
ab(X) :- not -penguin(X).               %*********
penguin(tweety).
bird(tweety).
bird(sam).

-penguin(X) :- -bird(X).                %********



