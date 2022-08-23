/*CRIAÇÃO DO BANCO DE DADOS*/
create database escola;
use escola;

/*CRIACAO DAS TABELAS*/
create table professores(
	id_professor int primary key auto_increment,
    nome varchar(100) not null,
    dt_nascimento date not null,
    cpf varchar(11) not null
);

create table turmas(
	id_turma int primary key auto_increment,
	curso varchar(100) not null,
    numero_sala int not null
);

create table alunos(
	id_aluno int primary key auto_increment,
	nome varchar(100) not null,
    dt_nascimento date not null,
    cpf varchar(11) not null,
    id_turma int not null,
    constraint fk_aluno_turma foreign key(id_turma) references turmas(id_turma)
);

create table aulas(
	id_aula int primary key auto_increment,
    materia varchar(50) not null,
    carga_horaria smallint not null,
    id_professor int not null,
    constraint fk_aulas_professor foreign key(id_professor) references professores(id_professor)
);

create table alunos_aulas(
	id_aluno int,
    id_aula int,
    primary key(id_aluno, id_aula),
    constraint fk_aluno_aula foreign key(id_aula) references aulas(id_aula),
    constraint fk_aula_aluno foreign key(id_aluno) references alunos(id_aluno)
);

create table professores_turmas(
	id_professor int,
    id_turma int,
    primary key(id_professor, id_turma),
    constraint fk_professor_turma foreign key(id_turma) references turmas(id_turma),
    constraint fk_turma_professor foreign key(id_professor) references professores(id_professor)
);

/*INSERINDO DADOS NAS TABELAS*/
insert into professores(nome, dt_nascimento, cpf)
	values("Juliano França", 19900523, "93485737218"), ("Edinei Francisco", 19920212, "38491748437");
    
insert into turmas(curso, numero_sala)
	values("Análise e Desenvolvimento de Sistemas", 13), ("Biopark Connect", 102);
    
insert into alunos(nome, dt_nascimento, cpf, id_turma)
	values("Pablo", 20030503, "48273491209", 1), ("Guilherme", 20030923, "38391274581", 2);
    
insert into aulas(materia, carga_horaria, id_professor)
	values("Programação Orientada a Objetos", 100, 1), ("Algoritmos", 120, 2);

insert into alunos_aulas(id_aluno, id_aula)
	values(1, 1), (2,2);

insert into professores_turmas(id_professor, id_turma)
	values(1, 1), (2, 2);

/*ATUALIZANDO DADOS NAS TABELAS*/
update professores
	set nome = "Adriano Costela"
		where id_professor = 1;
        
update turmas
	set numero_sala = 20
		where id_turma = 1;
	
update alunos
	set dt_nascimento = 20030808
		where id_aluno = 1;
	
update aulas
	set materia = "Algoritmos e Estrutura de Dados"
		where id_aula = 2;

/*DELETANDO DADOS NAS TABELAS*/
delete from alunos_aulas
	where id_aluno = 1;
    
delete from professores_turmas
	where id_professor = 1;

delete from aulas
	where id_aula = 1;

delete from professores
	where id_professor = 1;
    
delete from alunos
	where id_aluno = 1;

delete from turmas
	where id_turma = 1;

/*SELECT's PARA EXIBIÇÃO DAS TABELAS*/
select * from professores;
select * from turmas;
select * from alunos;
select * from aulas;
select * from alunos_aulas;
select * from professores_turmas;