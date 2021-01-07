

%node(Val, Ltree, Rtree)

treemember(X, node(X, L, R)).
treemember(X, node(Y, L, R)) :- treemember(X, L).
treemember(X, node(Y, L, R)) :- treemember(X, R).


p(X) :-  X = node(10, X1, X2), X1 = node(5, nil, X12), X2 = node(15, X21, nil), X12 = node(8, nil, nil), X21 = node(20, nil, nil).

%                    10
%                   / \
%                  5   15
%                 /\   /\
%              nil 8  20 nil
%                 /\  /\
%               n  n n  n

