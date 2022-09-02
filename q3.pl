%exercicio 2.5
%prog 2.1
%pais(Nome, Area, Populacao).

pais(brasil, 9, 130).
pais(china, 12, 1800).
pais(eua, 9, 230).
pais(india, 3, 450).

dens(P,D):- pais(P,A,POP), D is POP/A . %P == nome do pais, D == densidade
%a): dens(NomePais, Densidade).
%b): dens(india, DensidadeIndia), dens(china, DensidadeChina), DensidadeIndia > DensidadeChina. dens(india, DensidadeIndia), dens(china, DensidadeChina), DensidadeIndia > DensidadeChina. pais(india, _, PopulacaoIndia), pais(china, _, PopulacaoChina), PopulacaoIndia > PopulacaoChina.

%prog 2.2
%func(Codigo, nome, salario).
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).

func(4, leo, 2500.35).
func(5, clo, 1800.00).
func(6, gil, 1100.00).

%a): func(CodigoFunc, NomeFunc, Salario), Salario >= 1500.00, Salario =<3000.00.
%b): func(CodigoFunc, NomeFunc, Salario), \+(dep(CodigoFunc, _)), Salario < 1200.00.
%c): func(CodigoFunc, NomeFunc, Salario), dep(CodigoFunc, NomeDep), Salario > 1700.00.

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

filme('A volta dos que nao foram', drama, 2022, 240).%filme extra para testar a data

%Retorna o ano atual.
year(Year):- get_time(Stamp),stamp_date_time(Stamp, DateTime, local),
  date_time_value(year, DateTime, Year).

filme_long(Titulo):- filme(Titulo,_,_,Duracao), Duracao > 150.
filme_lancamento(Titulo):- filme(Titulo,_,Ano,_), year(Year), Year - Ano < 1.

%2.4
%pessoa(Nome, Sexo, Idade, Altura, Peso).
pessoa(ana, fem, 23, 1.55, 56.0).
pessoa(bia, fem, 19, 1.71, 61.3).
pessoa(ivo, masc, 22, 1.80, 70.5).
pessoa(lia, fem, 17, 1.85, 57.3).
pessoa(eva, fem, 28, 1.75, 68.7).
pessoa(ary, masc, 25, 1.72, 68.0).
%fem 0, masc 1; para checar a =:= do sexo por 0 ou 1 e não por 'string'.
sexo(fem, 0).
sexo(masc, 1).

mulher_antiga(Nome):- pessoa(Nome,Sexo,Idade,_,_),
  sexo(Sexo, SexoCheck), SexoCheck =:= 0 , Idade > 20.

mulher_alta_leve(Nome):- pessoa(Nome,_,_,Altura,Peso),Altura >= 1.70, Peso < 65.0.

casal_masc_alto(NomeM, NomeF):- pessoa(NomeM,SexoM,_,AlturaM,_),
    sexo(SexoM, SexoCheck), SexoCheck =:= 1,
    pessoa(NomeF,SexoF,_,AlturaF,_), sexo(SexoF, SexoCheck2),
    SexoCheck2 =:= 0, AlturaM > AlturaF.

mulher_modelo(Nome):- pessoa(Nome,Sexo,Idade,Altura,Peso),
    sexo(Sexo, SexoCheck), SexoCheck =:= 0,
    Altura > 1.70, Idade < 25, Peso =< 62.1*Altura-44.7.

