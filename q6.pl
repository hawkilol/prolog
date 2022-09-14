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

%5.1
ultimo(L,[X]).

%ultimo(L,[X|Y]):- ultimo(Y, U).

ultimo(L,[X|Y]):- ultimo(Y, U), exibe(X).

exibe1([]):- nl.
exibe1([X|Y]):- write(X), exibe1(Y), exibe1([X|Y]).

tam([],0).
tam([X|Y],T):- tam(Y,T1), T is 1+T1.

min([X],X).
min([X|Y],X):- min(Y,M), X > M.
min([X|Y],M):- min(Y,M), X < M.
