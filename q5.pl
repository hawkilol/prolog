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


%v2

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
	Z is X+R,
	write(Z).
%4.2

dec2Bin(D,B): - D2 is D+D, decToBin(D2,B).
decTobBin(0,0).
decToBin(1,1).
decToBin(D,B):-
	D>1,
	M is D // 2,
	decToBin(M,_),
	B is M mod 2,
	write(B).
	
%dToBin(0,0).
%dToBin(1,1).
%dToBin(N,F):-
%	N>1,
%   M is N // 2,
%	dToBin(M,R),
%	F is R mod 2,
%    write(F).

%dec2bin([0],0).
%dec2bin([1],1).
%dec2bin(N,L):- 
%    N > 1,
%    X is N mod 2,
%    Y is N // 2,  
%    dec2bin(Y,L1),
%    L = [L1|X].

%4.3
%estrada(Origem,Destino,Km)
estrada(a,b,25).
estrada(a,d,23).
estrada(b,c,19).
estrada(b,e,32).
estrada(c,d,14).
estrada(c,f,28).
estrada(d,f,30).
estrada(e,f,26).


acima(X,Y,D):- estrada(X,Y,D).
%acima(X,Y,D):- estrada(X,Z,D), (acima(Z,Y,D);acima(Z,Y,_)), estrada(Z,Y,D1), Q is D + D1, write(Q).
acima(X,Y,D):- estrada(X,Z,D), acima(Z,Y,_).

dist(A,B,D):- 
    acima(A,Z,D1), estrada(A,Z,D1),
    acima(Z,B,D2), estrada(Z,B,D2),
    D is D1 + D2,!; acima(A,B,D).
