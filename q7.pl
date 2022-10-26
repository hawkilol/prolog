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
permutation([],[]).

%24
reverse2(L,R):- reverse2(L,[],R).
reverse2([],R,R).
reverse2([X|Xs], ACC,R):- reverse2(Xs,[X|ACC],R).

%25
%rev([a,b,c],R), R = [c,b,a].
rev([],[]).
rev([X|Xs],R):-rev(Xs,Xr), append(Xr,[X],R).

%26
%palindrome recursivo
palindrome(L):- append([P|M], [U], L), P=U, palindrome(M).
%palindrome([]).
%palindrome([_]). palindrome([]).
%
%27
palindrome1(X):- rev(X,Xr), X = Xr.
%28
metIguais([]).
metIguais(L):- append(M,M,L).

%29
subConjunto([X|Xs],Y):- select(X,Y,Ys), subConjunto(Xs,Ys).
subConjunto([],Y).


%30
intersecao([],X,[]).
intersecao([X|Xs],Y,[X|Is]):- member(X,Y),intersecao(Xs,Y,Is).
intersecao([X|Xs],Y,Is):- \+ member(X,Y), intersecao(Xs,Y,Is).

%31 bad
uniao([X|Xs],Y,[X|Us]):- \+ member(X,Y), uniao(Xs,Y,Us).
uniao([X|Xs],Y,Us):- member(X,Y), uniao(Xs,Y,Us).
uniao([],Y,Y).

%32
isOrdered([]).
isOrdered([_]).
isOrdered([X,Y|XYs]):- X=<Y, isOrdered([Y|XYs]).

%33
maxL([X],X):-!.
maxL([X|Xs],X):-maxL(Xs,M), X>M.
maxL([X|Xs],M):-maxL(Xs,M), X=<M.
%33.1
maxL2([X],X):-!.
maxL2([X|Xs],R):- maxL2(Xs,M),(X>M, R=X, !; X=<M, R=M).

maxL2([X|Xs],M):- maxL2(Xs,M), X=<M.
%34
maxLacc([X|Xs],M):- maxL3(Xs,X,M).
maxL3([],ACC,M):- M=ACC.
maxL3([X|Xs],ACC,M):- X>=ACC, maxL3(Xs,X,M).
maxL3([X|Xs],ACC,M):- X< ACC, maxL3(Xs,ACC,M).

%35
sortx(L,S):- permutation(L,S), isOrdered(S).

%36
insOrd(X,[],[X]).
insOrd(X,[Y|Ys],[X,Y|Ys]):- X<Y.
insOrd(X,[Y|Ys],[Y|XYs]):- X>=Y, insOrd(X,Ys,XYs).

%
gL(L,N):- !,findall(X,(between(1,N,I), X is random(1000)),L).

%38
insDir([X|Xs],Lo):- insDir3(Xs,[X],Lo).
insDir3([X|Xs],ACC,Lo):- insOrd(X,ACC,ACCx), insDir3(Xs,ACCx,Lo).
insDir3([],ACC, Lo):- Lo=ACC.
%39
particiona([X,Y|XYs],[X|Xs],[Y|Ys]):-particiona(XYs,Xs,Ys).
particiona([X],[X],[]).
particiona([],[],[]). 
%40
merge1([X|Xs],[Y|Ys],[X|XYs]):-X@<Y,!,merge1(Xs, [Y|Ys],XYs).
merge1([X|Xs],[Y|Ys],[Y|XYs]):-X@>=Y,!,merge1([X|Xs], Ys,XYs).
merge1([],Ys,Ys):-!.
merge1(Xs,[],Xs):-!.
%41
mergeSort([],[]):-!.
mergeSort([X],[X]):-!.
mergeSort(L,S):-particiona(L,X,Y),mergeSort(X,Xo),mergeSort(Y,Yo),merge1(Xo,Yo,S). 
%42

