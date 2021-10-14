american(west).
american(north).
american(jack).
chinese(zhang).
avoidTax(jack).

missile(m1).
ak47(g1).
car(bmw1).

enemy(nono, america).
owns(nono, m1).

criminal(X) :- american(X), weapon(Y), sells(X, Y, Z), hostile(Z).

criminal(X) :- american(X), avoidTax(X).

sells(west, X, nono) :- missile(X), owns(nono, X).

sells(zhang, X, nono) :- ak47(X), owns(nonso, X).

sells(north, X, nono) :- car(X), owns(nono, X).

weapon(X) :- missile(X).

weapon(X) :- ak47(X).

hostile(X) :- enemy(X, america).