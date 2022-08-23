create database eleicao;

use eleicao;

create table cargo(
id_cargo int unique not null primary key,
nome_cargo enum('Prefeito','Vereador'),
salario float not null default'17000.00',
numero_vagas int unique not null
);

create table candidato(
id_candidato int unique not null primary key,
numero_candidato int unique not null,
nome varchar(40) unique not null,
id_cargo int not null,
id_partido int not null,
constraint fk_candidato_cargo foreign key(id_cargo) references cargo(id_cargo),
constraint fk_candidato_partido foreign key(id_partido) references partido(id_partido)
);

create table partido(
id_partido int unique not null primary key,
sigla char(5) unique not null,
nome varchar(40) unique not null,
numero int unique not null
);

create table eleitor(
id_eleitor int unique not null primary key,
titulo_eleitor varchar(30) unique not null,
zona_eleitoral char(5) not null,
sessao_eleitoral char(5) not null,
nome varchar(40) not null
);

create table voto(
id_voto int unique not null primary key,
titulo_eleitor varchar(30) unique not null,
id_candidato int unique not null,
constraint fk_voto_numero_candidato foreign key(id_candidato) references candidato(id_candidato)
);