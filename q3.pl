%prog 2.1
%pais(Nome, Area, Populacao).
pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(india, 3, 450).

dens(P,D):- pais(P,A,POP), D is POP/A . %P == nome do pais, D == densidade
%a): dens(NomePais, Densidade).
%b): dens(india, DensidadeIndia), dens(china, DensidadeChina), DensidadeIndia > DensidadeChina. dens(india, DensidadeIndia), dens(china, DensidadeChina), DensidadeIndia > DensidadeChina. pais(india, _, PopulacaoIndia), pais(china, _, PopulacaoChina), PopulacaoIndia > PopulacaoChina.
%c): func(CodigoFunc, NomeFunc, Salario), dep(CodigoFunc, NomeDep), Salario > 1700.00.

%prog 2.2
%func(Codigo, nome, salario).
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).

%a): func(CodigoFunc, NomeFunc, Salario), Salario >= 1500.00, Salario =<3000.00.
%b): func(CodigoFunc, NomeFunc, Salario), \+(dep(CodigoFunc, _)), Salario < 1200.00.

%dep(Codigo, Nome)
dep(1, ary).
dep(3, rai).
dep(3, eva).


%prog 2.3
%filme(Titulo, Genero, Ano, Duracao).
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspence, 2001, 108).
filme('A cor pupura', drama, 1985, 152).
filme('Copacabana', comedia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

%v2

%prog 2.1
%pais(Nome, Area, Populacao).
pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(india, 3, 450).

dens(P,D):- pais(P,A,POP), D is POP/A . %P == nome do pais, D == densidade

%prog 2.2
%func(Codigo, nome, salario).
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).

func(4, leo, 2500.35).
func(5, clo, 1800.00).
func(6, gil, 1100.00).

%dep(Codigo, Nome)
dep(1, ary).
dep(3, rai).
dep(3, eva).

dep(4, lia).
dep(4, noe).
dep(5, eli).

%prog 2.3
%filme(Titulo, Genero, Ano, Duracao).
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspence, 2001, 108).
filme('A cor pupura', drama, 1985, 152).
filme('Copacabana', comedia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

filmelong(FilmeNome).
filmelancamento().

