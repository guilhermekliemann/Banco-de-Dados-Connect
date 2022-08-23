create database clinica;

use clinica;

create table sala(
id_sala smallint unique not null primary key,
numero_sala int unique not null check(numero_sala>=1 and numero_sala<=50),
andar int unique not null check(andar<=12),
id_medico smallint unique not null,
constraint fk_sala_medico foreign key(id_medico) references medico(id_medico)
);

create table medico(
id_medico smallint unique not null primary key,
crm varchar(15) unique not null,
nome varchar(40) not null,
idade int check(idade>=23),
especialidade char(20) not null default'Ortopedia',
cpf varchar(15) unique not null,
data_de_admissao date not null
);

create table paciente(
id_paciente int unique not null primary key auto_increment,
rg varchar(15) unique not null,
nome varchar(40) not null,
data_nascimento date not null,
cidade char(30) not null default'Itabuna',
doenca varchar(40) not null,
plano_saude varchar(40) not null default'SUS'
);

create table funcionario(
id_funcionario int unique not null primary key,
matricula varchar(15) unique not null,
nome varchar(40) not null,
data_nascimento date not null,
data_admissao date not null,
cargo varchar(40) not null default'Assistente Médico',
salario float not null default'510.00'
);

create table consulta(
id_consulta int unique not null primary key,
codigo_consulta int unique not null,
data_horario datetime not null,
id_medico smallint unique not null,
id_paciente int unique not null,
constraint fk_consulta_medico foreign key(id_medico) references medico(id_medico),
constraint fk_consulta_paciente foreign key(id_paciente) references paciente(id_paciente)
);
