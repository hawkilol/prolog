%5.1
%exibe(L)
exibe([]):- nl.
exibe([X|Y]):- write(X), exibe(Y).
%5.2
%membro(X,L)
membro(X,[X|_]).
membro(X,[_|Y]):- membro(X,Y).
%5.3
%anexa(A,B,C)
anexa([],B,B).
anexa([X|A],B, [X|C]):- anexa(A,B,C).

%aux
append([], B, B).
append([X|A], B, [X|C]):- anexa(A, [B], C).

%5.1
ultimo(L,[X]).

%ultimo(L,[X|Y]):- ultimo(Y, U).

ultimo(L,[X|Y]):- ultimo(Y,U), ultimo(U,[_|U]), write(L).

exibe1([]):- nl.
exibe1([X|Y]):- write(X), exibe1(Y), exibe1([X|Y]).

tam([],0).
tam([X|Y],T):- tam(Y,T1), T is 1+T1.

min([X],X).
min([X|Y],X):- min(Y,M), X <= M.
min([X|Y],M):- min(Y,M), X > M.

%v2
%5.3
%5.1
%ultimo(L,U)
ultimo(L,[X]).

%ultimo(L,[X|Y]):- ultimo(Y, U).

ultimo(L,[X|Y]):- ultimo(Y,U),
    ultimo(U,[_|U]), write(L).

%5.2
%tam(L,N)
tam([],0).
tam([X|Y],T):- tam(Y,T1), T is 1+T1.
%append([], B, B).
%append([X|A], B, [X|C]):- anexa(A, [B], C).

%5.3
%soma(L,S)
soma([],0).
soma([X|Y],S):- soma(Y,S1), S is S1 + X.

%sim
%5.4
%min
min([X],X).
min([X|Y],X):- min(Y,M), X <= M.
min([X|Y],M):- min(Y,M), X > M.
%max

%5.5
%anexa(A,B,C):
anexa([], B, B).
anexa([X|A], B, [X|C]):- anexa(A, B, C).

%5.6
inv([],[]).
inv([X],[X]).
inv([X|Y], YX):- inv(Y,Y1), anexa(Y1,[X],YX).

%5.7
d(0,zero).
d(1,um).
d(2,dois).

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
%anexa([], B, B).
%anexa([X|A], B, [X|C]):- anexa(A, B, C).

%rota(A,B,R)
rota(A,B,[A,B]):- estrada(A,B,_).
rota(A,B,R):- estrada(A, C,_), rota(C,B,R1), R = [A|R1].
%5.3
%append([], B, B).
%append([X|A], B, [X|C]):- anexa(A, [B], C).

%5.3
%soma(L,S)
soma([],0).
soma([X|Y],S):- soma(Y,S1), S is S1 + X.

%sim
%5.4
%max
%5.5
%anexa(A,B,C):
anexa([], B, B).
anexa([X|A], B, [X|C]):- anexa(A, B, C).

%5.6
inv([],[]).
inv([X],[X]).
inv([X|Y], YX):- inv(Y,Y1), anexa(Y1,[X],YX).

%5.7
d(0,zero).
d(1,um).
d(2,dois).

txt([X|Y], [Xt|Yb]):- d(X, Xt), txt(Y,Yb).
txt([],[]).

%v2
