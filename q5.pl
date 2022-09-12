%pot(Base,Expoente,Potencia).
pot(_,0,1).
pot(B,N,P):-
	N>0,
	M is N-1,
	pot(B,M,R),
	P is B*R.

%fat(Numero,Fatorial)

fat(0,1).
fat(N,F):-
	N>0,
	M is N-1,
	fat(M,R),
	F is N*R.

%4.1
pro2(_,0,0).
pro2(X,Y,Z):-
	Y>0,
	M is Y-1,
	pro2(X,M,R),
	Z is X+R.
%4.2
%incompleto
decToBin(0,1).
decToBin(X,Y):-
	X>0,
	M is X-1,
	decToBin(M,R),
	Y is mod(M,R).



