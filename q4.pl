%prog 3.1
d(0).
d(1).
b([A,B,C]):- d(A), d(B), d(C).
bin([A,B,C]):- d(A), d(B), d(C).

%prog 3.3
f(X,0):- X< 5, !.
f(X,1):- X>=5, X=<9, !.
f(X,2):- X>9.

%prog 3.4
if(Condition,Then,Else):- Condition, !, Then.
if(_,_,Else):- Else.
%pro 3.5

bin2([A,B,C]):- d(A), d(B), d(C), write([A,B,C]), nl, fail.



%3.1
joga(ana,volei).
joga(bia,tenis).
joga(ivo,basquete).
joga(eva,volei).
joga(leo,tenis).

%a) ?- joga(P,X), joga(leo,X), P\=leo.
%b) ?- joga(leo,X), joga(P,X), P\=leo. melhor ninja, menos reps e sem fail e redo.

%3.2
num(N, positivo):- N>0.
num(0,nulo).
num(N,negativo):- N<0.
%Retrocesso desnecessario

%Corte pula o retrocesso desnecessario:
num2(N, positivo):- N>0,!.
num2(N,negativo):- N<0, !.
num2(0,nulo).

num3(N, positivo):- N>0, !.
num3(N, nulo):- N =:= 0, !.
num3(N,negativo):- N<0.
%macaco do futuro lembra de dar o trace!.

%3.3
%trace?
falha :- (1=1).
falha :- (1=2).

%b) uma vez que ela sempre falha.

%3.4
animal(cão).
animal(canário).
animal(cobra).
animal(morcego).
animal(gaivota).
voa(canário).
voa(morcego).
voa(gaivota).
dif(X,X) :- !, fail.
dif(_,_).


pássaro(X) :- animal(X), voa(X), dif(X,morcego).
%trace para pássaro(X).
