mother_child(trude, sally).
mother_child(mary, mike).
father_child(tom, sally).
father_child(tom, erica).
father_child(mike, tom).

parent_child(X,Y) :- father_child(X, Y).
parent_child(X,Y) :- mother_child(X, Y).
sibling(X,Y)	:- parent_child(Z, X), parent_child(Z, Y).
ancestor(X,Y)	:- parent_child(X,Y).
ancestor(X,Z)	:- ancestor(X,Y), parent_child(Y,Z).



