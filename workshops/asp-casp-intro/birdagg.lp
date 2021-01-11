
flies(X) :- bird(X), not ab(X).
ab(X) :- penguin(X).
bird(X) :- penguin(X).
penguin(tweety).
bird(tweety).
bird(sam).

-penguin(X) :- not penguin(X).  %CWA



