%Arguments of predicates are called TERMS
%Term: 1. constants (numbers, strings, atoms)
%      2. variables (X, A, B, Y)
%      3. structures    == struct name + field names   node(value, lptr, rptr)
%
%Structure is of the form f(t1, t2, ..., tn)
%where f is the structure name (functor) and t1, ..., tn are terms
%student('John Doe', 19, '223 Main St', 'Richardson', 'TX')
%terms always occur as arguments of predicates
%
%simplest term: structure with one argument
%simulate unary numbers  0 1  11   111   1111
%zero  represented by constant 0
%s(X) is successor of X i.e., X+1
%0 s(0)  s(s(0))  s(s(s(0)))

    
num(0).
num(s(X)) :- num(X).

plus(0, X, X).
plus(s(X), Y, s(Z)) :- plus(X,Y,Z).

times(0, _, 0).
times(s(X), Y, Z) :- times(X,Y,A), plus(A,Y,Z).



