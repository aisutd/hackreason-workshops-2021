mother(lisa, sarah).
mother(lisa, abe).
mother(nancy, john).
mother(mary, jill).
mother(sarah,susan).
mother(susan, jack).
mother(susan, phil).
father(tony, sarah).
father(tony, abe).
father(abe, john).
father(john, jill).
father(bill, susan).
father(rob, jack).
father(rob, phil).
father(jack, jim).


%father, mother, parent, anc are non-deterministic relations

parent(X,Y) :- mother(X,Y).
parent(X,Y) :- father(X,Y).

gp(X,Y) :- parent(X,Z), parent(Z, Y).
ggp(X,Y) :- parent(X,Z), gp(Z,Y). 
% Z == logical variable
gggp(X,Y) :- parent(X,Z), ggp(Z,Y).

anc(X,Y) :- parent(X,Y).
anc(X,Y) :- parent(X,Z), anc(Z,Y).

 

