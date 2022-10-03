%rega a)
%usando a regra de fatoração, simplifique a clausula abaixo, indicando qual regra é utilizada em cada passo.
%pega3(E,L):- L= [B|A], A = [Y|Ys], Ys = [Z|D], Z = E.
%pega3(E,[B|[Y|[Z|D]]]):- Z = E.
%pega3(E[B,Y,Z|D]):- Z = E.
pega3(E,[B,Y,E|D]):- E =x E.
pega3(E,[B,Y,E|D]).
pega3(E,[_,_,E|J]).
%exerc2
sum([],0).
sum([X|Xs],X+S):- sum(Xs,S).
sumAcc(L,S):- sum3(L,_,S). %?
sum3([],Acc,Res):- Res = Acc.
sum3([X|X]).

append1([],Bs,Bs).
append1([A|As],Bs,[A|AsBs]):- append(As,Bs,AsBs).

%%%
%exerc3

membro(X,L):- append(_,[X|_],L).
%1
CompAcc(L,C):- comp3(L,O,C).
comp3([X|X1],Acc,C):- comp3(X1,Acc+1,C).
comp3([],Acc,C):- C = Acc.
%2
sum([],_).
sum([X|X1],S+X):- sum(X,S).

sumAcc(L,S):- sum3(L,O,S).
sum3([X|X1],Acc,S):- sum3(X1, Acc+X, S).
sum3([], Acc, S):- S = Acc.

%3
membro(X,[X|_]).
membro(X,[_|X1]):- membro(X,X1).

%4
append([],B1,B2).
appned([A|A1],B1,[A|A1B1]):- append(A1,B1,A2B2).

%5
membro2(X,L):- append(_,[X|_],L).

%6 
prefix(P,L):- append(P,_,L).
sufix(S,L):- append(_,S,L).
sublist(S,L):- prefix(P,L), sufix(S,P).

%%%%%
%v2

%1
CompAcc(L,C):- comp3(L,O,C).
comp3([X|X1],Acc,C):- comp3(X1,Acc+1,C).
comp3([],Acc,C):- C = Acc.
%2
sum([],_).
sum([X|X1],S+X):- sum(X1,S).

sumAcc(L,S):- sum3(L,0,S).
sum3([X|X1],Acc,S):- sum3(X1, Acc+X, S).
sum3([], Acc, S):- S = Acc.

%3
membro(X,[X|_]).
membro(X,[_|X1]):- membro(X,X1).

%4
%append([],B1,B2).
append1([A|A1],B1,[A|A1B1]):- append1(A1,B1,A1B1).

%5
membro2(X,L):- append(_,[X|_],L).

%6
prefix(P,L):- append(P,_,L).
sufix(S,L):- append(_,S,L).
sublist(S,L):- prefix(P,L), sufix(S,P).

%7
%select1(X,[X|Xs],Xs).
%select1(X,[Y|Xs],[Y|Zs]):- select1().

%8
%ultimo1(L,U):-L=[X|Xs],Xs=[],U=X,!.
%ultimo1(L,U):- L=[X|Xs],X\= [], ultimo1([Xs,U],U),!.
ultimo1([U],U):-!.
ultimo1([_|Xs],U):- ultimo(Xs,U).

%8 append
ultimo(L,U):-append(_,[U],L).

%9
remU([U],[]):-!.
remU([X|Xs],[X|Zs]):- remU(Xs,Zs).

%15
contigus1(L):- append(_,[X,X|_],L).
%
contigus2([X,X|_]).
%contigus2(L):- L = [X|Xs], contigus2()...
%16




