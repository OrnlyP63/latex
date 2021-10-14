owns(nono, m1).
owns(yesyes,m2).
american(west).
missile(m2).
missile(m1).
missile(m3).
enemy(nono, america).
enemy(yesyes, russia).


criminal(X) :- american(X), weapon(Y), sells(X, Y, Z), hostile(Z).

sells(west, X, nono) :- missile(X), owns(nono, X).

weapon(X) :- missile(X).

hostile(X) :- enemy(X, america).













