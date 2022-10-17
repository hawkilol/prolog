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

%20
remove1(X,[X|Xs], Xr):- remove1(X, Xs, Xr).

remove1(_,[],[]).
remove1(X,[Y|Xs], [Y|Xr]):- X\=Y, remove1(X,Xs,Xr).


%21
flatten1([],[]).
flatten1(X,[X]):- X\=[], X\=[_|_].
flatten1([X|Xs], F):- flatten1(X,F1), flatten1(Xs, F2), append(F1,F2,F).

%22

zipper([X|Ys], [Y|Ys], [X-Y|XYs]):- zipper(Xs,Ys,XYs).
zipper([],[],[]).

%23
permutation(Xs,[Z|Zs]):- select(Z,Xs,Ys), permutation(Ys,Zs).
permutaion([],[]).

%24
