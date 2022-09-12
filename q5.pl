%pot(Base,Expoente,Potencia).
pot(_,0,1).
pot(B,N,P):-
	N>0,
	M is N-1,
	pot(B,M,R),
	P is B*R.

