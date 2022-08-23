create database revendedora_carros;

use revendedora_carros;

create table automovel(
id_automovel int unique not null primary key,
id_nacional_renavam int unique not null,
placa varchar(7) unique not null,
marca varchar(20) not null,
modelo varchar(30) not null,
ano_fabricacao year not null,
ano_modelo year not null,
cor varchar(20) not null,
motor varchar(30) not null,
numero_portas int not null,
tipo_combustivel varchar(20) not null,
preco float not null
);

create table clientes(
id_cliente int unique not null primary key auto_increment,
nome varchar(30) not null,
sobrenome varchar(30) not null,
telefone varchar(20) not null,
rua varchar(50) not null,
numero int not null,
complemento varchar(20) not null,
bairro varchar(20) not null,
cidade varchar(30) not null,
estado varchar(30) not null,
cep varchar(10) not null
);

create table vendedores(
id_vendedor int unique not null primary key auto_increment,
nome varchar(30) not null,
sobrenome varchar(30) not null,
telefone varchar(20) not null,
rua varchar(50) not null,
numero int not null,
complemento varchar(20) not null,
bairro varchar(20) not null,
cidade varchar(30) not null,
estado varchar(30) not null,
cep varchar(10) not null,
data_admissao date not null,
salario_fixo float not null
);

create table negocio(
id_negocio int unique not null primary key auto_increment,
data_venda date not null,
preco_venda float not null,
id_automovel int unique not null,
id_cliente int unique not null,
id_vendedor int unique not null,
constraint fk_negocio_automovel foreign key(id_automovel) references automovel(id_automovel),
constraint fk_negocio_cliente foreign key(id_cliente) references clientes(id_cliente),
constraint fk_negocio_vendedor foreign key(id_vendedor) references vendedores(id_vendedor)
);