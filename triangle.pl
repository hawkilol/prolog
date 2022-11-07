%quase igual
qigual(X,Y):- XYerro is abs(X-Y), XYerro<0.0001.

dist(ponto(X1,Y1), ponto(X2,Y2), D):- D is sqrt((X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2)).

%eh_triangulo(ponto(2,2), ponto(3,3), ponto(4,2)).



%Usam pontos e convertem para distancias
%eh_triangulo(X,Y,Z):- X<Y+Z, Y<X+Z, Z<X+Y.
eh_triangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    X<Y+Z, Y<X+Z, Z<X+Y.

%eh_isoceles(X,Y,Z):- X=Y; X=Z; Y=Z.
eh_isoceles(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    eh_triangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)),
    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    X==Y; Y==Z; Z==X.

%eh_equilatero(X,Y,Z):- X=Y=Z.
eh_equilatero(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    eh_triangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)),
    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    X=:=Y, Y=:=Z.

eh_quase_equilatero(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    eh_triangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)),

    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    qigual(X,Y), qigual(Y,Z).


%eh_escaleno(X,Y,Z):- X<>Y, Y<>Z, X<>Z.
eh_escaleno(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    eh_triangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)),
    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    not(eh_equilatero(X,Y,Z)), not(eh_isoceles(X,Y,Z)).


%usam só distancias (arestas)
eh_triangulo1(X,Y,Z):-
    X<Y+Z, Y<X+Z, Z<X+Y.

eh_isoceles1(X,Y,Z):-
    eh_triangulo1(X,Y,Z),
    X==Y; Y==Z; Z==X.

eh_equilatero1(X,Y,Z):-
    eh_triangulo1(X,Y,Z),
    X=:=Y, Y=:=Z.

eh_escaleno1(X,Y,Z):-
    eh_triangulo1(X,Y,Z),
    not(eh_equilatero1(X,Y,Z)), not(eh_isoceles1(X,Y,Z)).


%det(M,D):- det1(M,0,D).
%det3([[A1,A2,A3],[B1,B2,B3],[C1,C2,C3]]):- .
%det31(A,B,C,Det):- A = [A1,A2,A3], B = [B1,B2,B3], C = [C1,C2,C3],
 %   D = ((A1*B2*C3+A2*B3*C1+A3*B1*C2) - (A3*B2*C1 + A1*B3*C2 + A2*B1*C3)),
  %  write(A1),
   % Det is 1.


% Digitar X:10. <enter>
ler(X,Y,Z):- write('X:'),read(X),nl,
             write('Y:'),read(Y),nl,
	         write('Z:'),read(Z),nl.
p:-ler(X,Y,Z),
   write('valores lidos:'),
   write((X,Y,Z)),nl.

ladoTri:- ler(X,Y,Z),
    write('valores lidos:'),
	write((X,Y,Z)),nl,
    ladoCheck(X,Y,Z).


ladoCheck(X,Y,Z):- eh_triangulo1(X,Y,Z), writeln("Eh um triangulo").
ladoCheck(X,Y,Z):- not(eh_triangulo1(X,Y,Z)), writeln("Nao eh um triangulo"),!.
ladoCheck(X,Y,Z):- eh_equilatero1(X,Y,Z), writeln("Eh equilatero").
ladoCheck(X,Y,Z):- eh_isoceles1(X,Y,Z), writeln("Eh isoceles"),!.
ladoCheck(X,Y,Z):- eh_escaleno1(X,Y,Z), writeln("Eh escaleno").

%triCheck(X,Y,Z):- eh_triangulo(X,Y,Z), writeln("Eh um triangulo").
%triCheck(X,Y,Z):- not(eh_triangulo(X,Y,Z)), writeln("Nao eh um triangulo").
%triCheck(X,Y,Z):- eh_isoceles(X,Y,Z), writeln("Eh isoceles").
%triCheck(X,Y,Z):- eh_equilatero(X,Y,Z), writeln("Eh equilatero").
%triCheck(X,Y,Z):- eh_escaleno(X,Y,Z), writeln("Eh escaleno").


%Det para a matriz completa 3x3
%M = [[1,9,5],
%      [3,7,8],
%      [10,4,2]],  det3(M, Det).

det3([[A1,A2,A3],[B1,B2,B3],[C1,C2,C3]],Det):-
    Det is ((A1*B2*C3+A2*B3*C1+A3*B1*C2) - (A3*B2*C1 + A1*B3*C2 + A2*B1*C3)).

%Det para a matriz com 1 na ultima coluna.
det2([A1,A2],[B1,B2],[C1,C2], Det):-
    Det is ((A1*B2*1+A2*1*C1+1*B1*C2) - (1*B2*C1 + A1*1*C2 + A2*B1*1)).

%Area triangulo é /2 da area do retangulo.
areaTri([X1,X2],[Y1,Y2],[Z1,Z2],A):- det2([X1,X2],[Y1,Y2],[Z1,Z2],Det), A is abs(Det/2).
%X=[0,0], Y=[0,2], Z= [2,0] ,areaTri(X,Y,Z,A).




%%para comparação

%================================/================================

% tri.pl
% Digitar X:10. <enter>
ler(X,Y,Z):- write('X:'),read(X),nl,
             write('Y:'),read(Y),nl,
	         write('Z:'),read(Z),nl.
p:-ler(X,Y,Z),
   write('valores lidos:'),
   write((X,Y,Z)),nl.


%% area de um triangulo por tres pontos
%% usando algebra linear
%% [P1,P2,P3]= [[a,b],[c,d],[e,f]]
%% [[a,b],[c,d],[e,f]]=abs((a*d-b*c+(c*f-d*e)+(e*b-f*a))/2)

calcArea3([A,B,C],Res):-
    mult(A,B,R1),mult(B,C,R2),mult(C,A,R3),
    Res=abs((R1+R2+R3)/2).
mult(A,B,R):- A=[Xa,Ya], B=[Xb,Yb],R=Xa*Yb-Ya*Xb.
p:- L = [[1, 2], [3, 4], [5, 6]],
        calcArea3(L,R), write(L:R),nl,
        XX is R, write(XX).

p2:- L = [[a,b], [c,d], [e,f]],
calcArea3(L,R), write(L=R).
/*
|    p.
[[1,2],[3,4],[5,6]]:1*4-2*3+(3*6-4*5)+(5*2-6*1)
0
true
*/

/*
" vértices A (4 , 0), B (0 , 0) e C (0 , 6) é 12.
 A (1, 3), B (2, 5) e C (-2,4) eh 7/2
 "A (0, 0), B (0, -8) e C (-5, 0) eh 20

 % ?- calcArea3([[0,0],[0,-8],[-5,0]],A), A1 is A.
 % ?- calcArea3([[1,3],[2,5],[-2,4]],A), A1 is A.
*/
