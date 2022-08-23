/*INSERINDO DADOS NAS TABELAS*/
insert into instrutores(nome, email, valor_hora, certificados)
	values("Eduardo", "eduardo@gmail.com", 30, "Engenharia Elétrica"),
		  ("Francisco", "francisco@gmail.com", 20, "Engenharia Civil"),
		  ("Matheus", "matheus@gmail.com", 25, "Arquitetura"),
          ("Guilherme", "guilherme@gmail.com", 35, "Ciência da Computação"),
          ("Rafael", "rafael@gmail.com", 100, "Medicina");
          
insert into cursos(nome, requisito, carga_horaria, preco)
	values("Engenharia Elétrica", "Ensino Médio Completo", 2000, 800),
		  ("Engenharia Civil", "Ensino Médio Completo", 3000, 1000),
          ("Arquitetura", "Ensino Médio Completo", 1500, 500),
          ("Análise e Desenvolvimento de Sistemas", "Ensino Médio Completo", 1000, 400),
          ("Medicina", "Ensino Médio Completo", 4000, 2500);
    
insert into alunos(cpf, nome, email, fone, data_nascimento)
	values("15926498712", "João", "joao@gmail.com", "45992445566", 20010908),
		  ("54396852631", "Marcos", "marcos@gmail.com", "45998220011", 20021109),
          ("15796385215", "Pablo", "pablo@gmail.com", "45999234576", 20020514),
          ("15423698563", "Artur", "artur@gmail.com", "45998156523", 20031222),
          ("52639874102", "Jhonatan", "jhonatan@gmail.com", "45999156248", 20030120);

insert into turmas(instrutores_id, cursos_id, data_inicio, data_final, carga_horaria)
	values(1, 1, 20220205, 20261109, 2000),
		  (2, 2, 20220205, 20251109, 3000),
          (3, 3, 20220205, 20251109, 1500),
          (4, 4, 20220205, 20241109, 1000),
          (5, 5, 20220205, 20271109, 4000);

insert into matriculas(turmas_id, alunos_id, data_matricula)
	values(1, 1, 20210822),
		  (2, 2, 20220103),
          (3, 3, 20211006),
          (4, 4, 20220103),
          (5, 5, 20211220);

/*ATUALIZANDO DADOS NAS TABELAS*/
update instrutores
	set nome = "Fernando"
		where id = 1;

update instrutores
	set email = "fernando@gmail.com"
		where nome = "Fernando";
        
update cursos
	set nome = "Arquitetura e Urbanismo"
		where id = 3;
        
update cursos
	set preco = 1000
		where nome = "Arquitetura e Urbanismo";
	
update turmas
	set instrutores_id = 2
		where id = 1;
	
update turmas
	set instrutores_id = 1
		where id = 2;

/*DELETANDO DADOS NAS TABELAS*/
delete from matriculas 
	where id = 1;
    
delete from matriculas
	where id = 2;
    
delete from turmas
	where id = 1;
    
delete from turmas
	where id = 2;

delete from alunos
	where id = 1;

delete from alunos
	where id = 2;
    
delete from cursos
	where id = 1;

delete from cursos
	where id = 2;

delete from instrutores
	where id = 1;

delete from instrutores
	where id = 2;

/*SELECT's PARA EXIBIÇÃO DAS TABELAS*/
select * from instrutores;
select * from cursos;
select * from alunos;
select * from turmas;
select * from matriculas;