/*CRIAÇÃO DO BANCO DE DADOS*/
create database controle_livros;
use controle_livros;

/*CRIACAO DAS TABELAS*/
create table editoras(
	id_editora int primary key auto_increment,
    nome_editora varchar(100) not null,
    cnpj varchar(14) not null
);

create table autores(
	id_autor int primary key auto_increment,
    nome_autor varchar(100) not null,
    cpf_autor varchar(14) not null
);

create table categorias(
	id_categoria int primary key auto_increment,
    genero varchar(50) not null
);	

create table livros(
	id_livro int primary key auto_increment,
    nome_livro varchar(100) not null,
    qtd_paginas int not null,
    id_editora int not null,
    constraint fk_livro_editora foreign key(id_editora) references editoras(id_editora)
);

create table livros_autores(
	id_livro int,
    id_autor int,
    primary key(id_livro, id_autor),
    constraint fk_livro_autor foreign key(id_autor) references autores(id_autor),
    constraint fk_autor_livro foreign key(id_livro) references livros(id_livro)
);

create table livros_categorias(
	id_livro int,
    id_categoria int,
    primary key(id_livro, id_categoria),
    constraint fk_livro_categoria foreign key(id_categoria) references categorias(id_categoria),
    constraint fk_categoria_livro foreign key(id_livro) references livros(id_livro)
);

/*INSERINDO DADOS NAS TABELAS*/
insert into editoras(nome_editora, cnpj)
	values("Alta Books", "33475456792356"), ("Labrador", "58394810483475");

insert into autores(nome_autor, cpf_autor)
	values("Frederick P. Brooks Jr.", "38293047184"), ("Bruno Fraga", "43857264928");

insert into categorias(genero)
	values("Tecnologia"), ("Hacking");

insert into livros(nome_livro, qtd_paginas, id_editora)
	values("O Mítico Homem-Mês", 287, 1), ("Técnicas de Invasão", 293, 2);
    
insert into livros_autores(id_livro, id_autor)
	values(1, 1), (2, 2);
    
insert into livros_categorias(id_livro, id_categoria)
	values(1, 1), (2, 2);
    
/*ATUALIZANDO DADOS NAS TABELAS*/
update editoras
	set cnpj = "33474716792356"
		where id_editora = 1;
        
update autores
	set cpf_autor = "38293047912"
		where id_autor = 1;
        
update categorias
	set genero = "Tecnologia e Inovação"
		where id_categoria = 1;
        
update livros
	set qtd_paginas = 300
		where id_livro = 1;

/*DELETANDO DADOS NAS TABELAS*/
delete from livros_autores
	where id_livro = 1;
    
delete from livros_categorias
	where id_livro = 1;

delete from autores
	where id_autor = 1;

delete from livros
	where id_livro = 1;

delete from editoras
	where id_editora = 1;

delete from categorias
	where id_categoria = 1;

/*SELECT's PARA EXIBIÇÃO DAS TABELAS*/
select * from editoras;
select * from autores;
select * from categorias;
select * from livros;
select * from livros_autores;
select * from livros_categorias;