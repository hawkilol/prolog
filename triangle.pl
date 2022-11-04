%ponto(X,Y).
%errado-> dist(ponto(X1,Y1), ponto(X2,Y2), D):- D is (X1-Y1)*(X1-Y1)+(X2-Y2)*(X2-Y2).
dist(ponto(X1,Y1), ponto(X2,Y2), D):- D is (X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2).

%eh_triangulo(X,Y,Z):- X<Y+Z, Y<X+Z, Z<X+Y.
eh_triangulo(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    X<Y+Z, Y<X+Z, Z<X+Y.

%eh_isoceles(X,Y,Z):- X=Y; X=Z; Y=Z.
eh_isoceles(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):-
    dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    X==Y; y==Z; Z==X.
    
%eh_equilatero(X,Y,Z):- X=Y=Z.
eh_equilatero(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):- dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    X=:=Y, Y=:=Z.


%eh_escaleno(X,Y,Z):- X<>Y, Y<>Z, X<>Z.
eh_escaleno(ponto(X1,Y1),ponto(X2,Y2),ponto(X3,Y3)):- dist(ponto(X1,Y1),ponto(X2,Y2),X), dist(ponto(X2,Y2),ponto(X3,Y3),Y),
    dist(ponto(X3,Y3),ponto(X1,Y1),Z),
    not(eh_equilatero(X,Y,Z)), not(eh_isoceles(X,Y,Z)).



