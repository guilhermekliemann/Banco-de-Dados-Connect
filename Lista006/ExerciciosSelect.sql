/*1*/
SELECT nome FROM estilo
	ORDER BY nome ASC;
    
/*2*/
SELECT nome FROM autor
	ORDER BY nome DESC;
    
/*3*/
SELECT nome, telefone FROM editora;

/*4*/
SELECT nome FROM editora;

/*5*/
SELECT nome FROM estilo
	ORDER BY nome DESC;
    
/*6*/
SELECT * FROM estilo
	WHERE id_estilo = 3;
    
/*7*/
SELECT * FROM autor
	WHERE id_autor = 1;
    
/*8*/
SELECT * FROM editora
	WHERE id_editora = 4;
    
/*9*/
SELECT livro.titulo, editora.nome 
	FROM livro, editora
		WHERE livro.id_editora = editora.id_editora;

/*10*/
SELECT livro.titulo, editora.nome 
	FROM livro, editora
		WHERE livro.id_editora = editora.id_editora
		AND editora.nome LIKE 'A%';
    
/*11*/
SELECT livro.titulo, editora.nome, estilo.nome, autor.nome
	FROM livro, editora, estilo, autor
		WHERE livro.id_editora = editora.id_editora
		AND livro.id_estilo = estilo.id_estilo
		AND livro.id_autor = autor.id_autor;
  
/*12*/
SELECT livro.titulo, editora.nome
	FROM livro, editora
		WHERE livro.id_editora = editora.id_editora 
		AND editora.telefone = "123345";
	
/*13*/
SELECT livro.titulo, autor.nome 
	FROM livro, autor
		WHERE livro.id_autor = autor.id_autor 
		AND autor.idade = 35;

/*14*/
SELECT livro.titulo, autor.nome, editora.nome 
	FROM livro, autor, editora
		WHERE livro.id_autor = autor.id_autor
		AND livro.id_editora = editora.id_editora
		AND autor.nome = "Dan Brown";
    
/*15*/
SELECT livro.titulo, autor.nome, editora.nome 
	FROM livro, autor, editora
		WHERE livro.id_autor = autor.id_autor
		AND livro.id_editora = editora.id_editora
		AND autor.nome = "Dan Brown"
		AND autor.idade = 35;
                
/*16*/
SELECT livro.titulo, autor.nome, editora.nome 
	FROM livro, autor, editora
		WHERE livro.id_autor = autor.id_autor
		AND livro.id_editora = editora.id_editora
		AND (autor.nome = "Dan Brown" OR editora.telefone = "123345");
                
/*17*/
SELECT livro.titulo, estilo.nome
	FROM livro, estilo
		WHERE livro.id_estilo = estilo.id_estilo
		AND estilo.nome = "Romance";

/*18*/
SELECT livro.titulo, estilo.nome, editora.nome
	FROM livro, estilo, editora
		WHERE livro.id_estilo = estilo.id_estilo
        AND editora.nome = "Globo";
        
/*19*/
SELECT livro.titulo, editora.nome, autor.nome
	FROM livro, editora, autor
		WHERE livro.id_editora = editora.id_editora
        AND livro.id_autor = autor.id_autor;
    