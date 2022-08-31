%Exercicio 1.4.
mulher(ana). %não é necessário mas a questão pede
homen(ivo). %não é necessário mas a questão pede

pai(ivo,eva).
pai(rai,noe).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(ary,gal).
mae(ana,eva).
mae(eva,noe).
mae(bia,clo).
mae(bia,rai).
mae(bia,ary).
mae(lia,gal).

homen(noe).
mulher(clo).
mulher(gal).
homen(X):- pai(X,_).
mulher(X):- mae(X,_).

gerou(X,Y):- pai(X,Y).
gerou(X,Y):- mae(X,Y).
filho(X,Y):- homen(X), gerou(Y,X).
filha(X,Y):- mulher(X), gerou(Y,X).

irmao(X,Y):- gerou(Z,X), pai(Z,Y), X\=Y. %irmao geral homen e mulher.

irmão(X,Y) :- homen(X), irmao(X,Y).
irma(X,Y) :- mulher(X), irmao(X,Y).

tio(X,Y) :- gerou(Z,Y), irmão(X,Z).
tia(X,Y) :- gerou(Z,Y), irma(X,Z).

primo(X,Y) :- tio(Z,Y), filho(X,Z).
prima(X,Y) :- tio(Z,Y), filha(X,Z).

avô(X,Y) :- gerou(Z,Y), pai(X,Z).
avó(X,Y) :- gerou(Z,Y), mae(X,Z).


feliz(X) :- gerou(X,_).
casal(X,Y) :- gerou(X,Z), gerou(Y,Z), X\=Y.


