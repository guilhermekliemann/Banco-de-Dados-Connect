create database lista002;

use lista002;

create table alunos(
codigo int,
nome varchar(50),
telefone varchar(50),
cidade varchar(50)
);

desc alunos;

create table alunos2(
codigo int,
nome varchar(200),
telefone varchar(50),
cidade varchar(100)
);

create table funcionarios(
nome varchar(200),
endereco varchar(200),
telefone varchar(50),
cidade varchar(30),
estado varchar(40),
cep varchar(40),
rg varchar(20),
cpf char(11),
salario int
);

create table fornecedores(
nome varchar(200),
endereco varchar(200),
telefone varchar(50),
cidade varchar(30),
estado varchar(40),
cep varchar(40),
cnpj varchar(20),
email varchar(100)
);

create table livros(
codigo int,
nome varchar(200),
categoria varchar(50),
resumo varchar(300),
precocusto int,
precovenda int
);

desc alunos2;

desc funcionarios;

desc fornecedores;

desc livros;

create table estoque(
codigo int,
nomedoproduto varchar(100),
categoria varchar(100),
quantidade int,
fornecedor varchar(100)
);

create table notas(
codigo int,
nomedoaluno varchar(200),
bimestre varchar(30)
);

create table caixa(
codigo int,
data varchar(30),
descricao varchar(300),
debito varchar(20),
credito varchar(20)
);

create table contasAPagar(
codigo int,
data_conta varchar(20),
descricao varchar(300),
valor int,
data_pagamento varchar(20)
);

create table contasAReceber(
codigo int,
data_conta varchar(20),
descricao varchar(300),
valor int,
data_recebimento varchar(20)
);

create table filmes(
codigo int,
nome varchar(100),
sinopse varchar(200),
categoria varchar(40),
diretor varchar(100)
);

create table cds(
codigo int,
nome varchar(100),
cantor varchar(100),
ano varchar(10),
quantidademusica int
);

drop table alunos2;

desc alunos2;

drop table livros;

drop table contasAPagar;

drop table contasAReceber;

drop table filmes;

desc livros;

desc contasAPagar;

desc contasAReceber;

desc filmes;

alter table alunos rename to super_alunos;

desc super_alunos;

alter table estoque rename to produtos;

alter table notas rename to aprovados;

alter table aprovados rename to notas;

#tabela dinheiro nao existe
#drop table dinheiro;

drop table notas;

alter table super_alunos rename to alunos;

alter table alunos rename to estudantes;

alter table estudantes rename to super_estudantes;

desc super_estudantes;

drop table super_estudantes;

desc super_estudantes;

desc alunos;

create table alunos(
codigo int,
nome varchar(50),
telefone varchar(50),
cidade varchar(50)
);

alter table alunos add estado varchar(30);

alter table caixa add observacao varchar(100);

alter table alunos add cpf varchar(20);

desc caixa;

alter table caixa add saldo int;






























