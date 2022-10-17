remU([_],[]):-!.
remU([X|Xs],[X|Lu]):- remU(Xs, Lu).

remU1(L,Lu):- append(Lu,[U],L).

contiguos([X,X|_]):-!.
contiguos([X|Xs]):-contiguos(Xs).

contiguos1(L):- append(_,[X,X|_],L).

duplicados([X|Xs]):- member(X,Xs),!.
duplicados([_|Xs]):- duplicados(Xs).

trocaPU(Lpu,Lup):- append(P,[U],Lpu), append(U,[P], Lup).
