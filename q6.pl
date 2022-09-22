%5.1
%exibe(L)
exibe([]):- nl.
exibe([X|Y]):- write(X), exibe(Y).
%5.2
%membro(X,L)
membro(X,[X|_]).
membro(X,[_|Y]):- membro(X,Y).
%5.3
%anexa(A,B,C):
anexa([], B, B).
anexa([X|A], B, [X|C]):- anexa(A, B, C),!.


%Exe 5.3
%5.1
%ultimo(L,U)
ultimo([L],L).

ultimo([_|U],L):- ultimo(U, L),!.

%5.2
%tam(L,N)
tam([],0).
tam([_|Y],T):- tam(Y,T1), T is 1+T1.


%5.3
%soma(L,S)
soma([],0).
soma([X|Y],S):- soma(Y,S1), S is S1 + X.

%sim
%5.4
%min
min([X],X).
min([X|Y],X):- min(Y,M), X =< M,!.
min([X|Y],M):- min(Y,M), X > M,!.
%max
max([X],X).
max([X|Y],X):- min(Y,M), X >= M,!.
max([X|Y],M):- min(Y,M), X < M, !.

%5.5
%anexa(A,B,C):
%anexa([], B, B).
%anexa([X|A], B, [X|C]):- anexa(A, B, C),!.


%append([], B, B).
%append([X|A], B, [X|C]):- anexa(A, [B], C).

inv([],[]).
%inv([X],[X]).
inv([X|Y], YX):- inv(Y,Y1), anexa(Y1,[X],YX).

%5.6
%sim
sim([]).
sim([X|Y]):- inv([X|Y],XI), [X|Y] == XI.


%5.7
d(0,zero).
d(1,um).
d(2,dois).
d(3,tres).
d(4,quatro).
d(5,cinco).
d(6,seis).
d(7,sete).
d(8,oito).
d(9,nove).


txt([X|Y], [Xt|Yb]):- d(X, Xt), txt(Y,Yb).
txt([],[]).

%5.8
%estrada(Origem,Destino,Numero)

estrada(a,b,1).
estrada(a,d,2).
estrada(b,c,3).
estrada(c,d,4).
estrada(b,e,5).
estrada(c,f,6).
estrada(d,f,7).
estrada(e,f,8).

%rota(A,B,R)
rota(A,B,[A,B]):- estrada(A,B,_).
rota(A,B,R):- estrada(A, C,_), rota(C,B,R1), R = [A|R1].
%5.9
%retangulo(A,B,C,D).
dist(ponto(X1,Y1), ponto(X2,Y2), D):- D is (X1-Y1)*(X1-Y1)+(X2 - Y2)*(X2 - Y2).
vertical(linha(ponto(X,_), ponto(X,_))).
horizontal(linha(ponto(_,Y), ponto(_,Y))).
%retangulo(A,B,C,D):- vertical(linha(A,B)), horizontal(linha(A,C));horizontal(linha(A,D)).
retangulo(A,B,C,D).
%retangulo(ponto(1,1), ponto(1,2), ponto(2,2), ponto(2,1)).

regular(retangulo(A,B,C,D)):- vertical(linha(A,B)), horizontal(linha(A,C)); horizontal(linha(A,D)).

quadrado(retangulo(A,B,C,D)):-regular(retangulo(A,B,C,D)),
    dist(A,B,AB), dist(C,D,CD), AB =:= CD,
    dist(A,D,AD), dist(B,C,BC), AD =:= BC.

