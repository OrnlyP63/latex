owns(nono, m1).

missile(m1).
ak47(g1).
car(bmw1).

american(west).
american(jack).
american(north).
chinese(zhang).
enemy(nono, america).
avoidTax(jack).



criminal(X) :- american(X), weapon(Y), sells(X, Y, Z), hostile(Z).

criminal(X) :- american(X), avoidTax(X).

sells(west, X, nono) :- missile(X), owns(nono, X).

sells(zhang, X, nono) :- ak47(X), owns(nono, X).

sells(north, X, nono) :- car(X), owns(nono, X).


weapon(X) :- missile(X).

weapon(X) :- ak47(X).

hostile(X) :- enemy(X, america).














