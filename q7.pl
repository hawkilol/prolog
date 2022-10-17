remU([_],[]):-!.
remU([X|Xs],[X|Lu]):- remU(Xs, Lu).

remU1(L,Lu):- append(Lu,[U],L).

contiguos([X,X|_]):-!.
contiguos([X|Xs]):-contiguos(Xs).

contiguos1(L):- append(_,[X,X|_],L).

duplicados([X|Xs]):- member(X,Xs),!.
duplicados([_|Xs]):- duplicados(Xs).

trocaPU(Lpu,Lup):- append([P|M],[U],Lpu), append([U|M],[P], Lup).

remDupl([X|Xs],Xd):- member(X,Xs), remDupl(Xs,Xd).
remDupl([X|Xs],[X|Xd]):- remDupl(Xs,Xd).
remDupl([],[]).
remDupl1([X|Xs], Xd):- member(X,Xs), select(X,Xs,Xd),
    remDupl1(Xs,Xd).

remDupl1([X|Xs], [X|Xd]):- remDupl1(Xs, Xd).
remDupl1([],[]).

remove1(X,[X|Xs], Xr):- remove1(X, Xs, Xr).

remove1(_,[],[]).
remove1(X,[Y|Xs], [Y|Xr]):- X\=Y, remove1(X,Xs,Xr).
