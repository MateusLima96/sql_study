SELECT nome, telefone 
from clientes
WHERE ID = (
  	SELECT idcliente 
    from pedidos 
    WHERE datahorapedido= '2023-01-02 08:15:00');


SELECT * from pedidos;

SELECT nome FROM clientes WHERE id IN
(SELECT idcliente 
    from pedidos 
    WHERE strftime('%m', datahorapedido) = '01');

SELECT idcliente FROM pedidos WHERE strftime('%m', datahorapedido) = '01';


SELECT nome
from alunos
WHERE id_aluno = (
SELECT id_aluno
from notas
WHERE nota = (
	SELECT MAX(nota) 
  	from notas
 )
);


SELECT AVG(preco) FROM produtos;

SELECT nome, preco
FROM produtos
GROUP BY nome, preco
HAVING preco > 
(SELECT AVG(preco) FROM produtos);


