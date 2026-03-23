SELECT * FROM clientes

SELECT * FROM clientes c WHERE c.nome = 'Maria Silva'

SELECT * from pedidos

SELECT p.id, p.idcliente FROM pedidos p WHERE p.status = 'Entregue'

SELECT * from colaboradores 

SELECT c.nome, c.cargo FROM colaboradores c 
WHERE datacontratacao 
BETWEEN '2022-01-01' AND '2022-06-30'

SELECT * from pedidos


SELECT c.nome 
from clientes c
WHERE c.id = (
	SELECT p.idcliente 
  	FROM pedidos p
  	ORDER by p.datahorapedido asc 
  	LIMIT 1
);

SELECT nome
FROM produtos
WHERE id not in(
	SELECT idproduto from itenspedidos
)


SELECT c.nome, p.datahorapedido FROM clientes c 
JOIN pedidos p
ON c.id = p.idcliente
WHERE datahorapedido 
BETWEEN '2023-01-01' AND '2023-01-31'

SELECT * FROM produtos;

SELECT * FROM itenspedidos

SELECT pr.nome from produtos pr
JOIN itenspedidos ip
ON pr.id = ip.idproduto
GROUP BY pr.nome
HAVING COUNT(ip.idpedido) < 15
