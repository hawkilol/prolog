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

%exerc3
membro(X,L):- append(_,[X|_],L).




