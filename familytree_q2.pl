homen(ivo).
homen(gil).
homen(rai).
homen(ary).
homen(noe).
pai(ivo,eva).
pai(rai,noe).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(ary,gal).
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).
mae(ana,eva).
mae(eva,noe).
mae(bia,clo).
mae(bia,rai).
mae(bia,ary).
mae(lia,gal).

gerou(X,Y):- pai(X,Y); mae(X,Y).
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

feliz(X) :- gerou(X,Y).
casal(X,Y) :- gerou(X,Z), gerou(Y,Z).


%v2


homen(ivo).
homen(gil).
homen(rai).
homen(ary).
homen(noe).
pai(ivo,eva).
pai(rai,noe).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(ary,gal).
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).
mae(ana,eva).
mae(eva,noe).
mae(bia,clo).
mae(bia,rai).
mae(bia,ary).
mae(lia,gal).

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

feliz(X) :- gerou(X,Y).
casal(X,Y) :- pai(X,Z), mae(Y,Z).


