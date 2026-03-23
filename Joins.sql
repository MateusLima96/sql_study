SELECT * from clientes;

SELECT * from pedidos;

SELECT c.nome, p.id, p.datahorapedido 
FROM clientes c
INNER JOIN pedidos p
ON c.id = p.idcliente

SELECT * FROM produtos;

INSERT INTO Produtos (ID, Nome, Descricao, Preco, Categoria)VALUES 
(31, 'Lasanha à Bolonhesa', 'Deliciosa lasanha caseira com molho bolonhesa', 12.50, 'Almoço');

SELECT nome, ip.idproduto, ip.idpedido  FROM itenspedidos ip
RIGHT JOIN produtos pr
ON pr.id = ip.idproduto;

SELECT pr.nome,  x.idproduto,  x.idpedido 
FROM(
    SELECT ip.idpedido, ip.idproduto
    FROM pedidos p
    JOIN itenspedidos ip 
    ON p.id = ip.idpedido
    WHERE strftime('%m', p.DataHoraPedido) = '10' ) x
RIGHT JOIN produtos pr
ON pr.id =  x.idproduto;

SELECT c.nome from pedidos p
RIGHT JOIN clientes c
ON c.id = p.idcliente
WHERE p.idcliente IS NULL;


SELECT c.nome, x.id from clientes c
LEFT JOIN 
(
	SELECT p.id, p.idcliente 
    FROM pedidos p
    WHERE strftime('%m', p.datahorapedido) = '10' ) x
ON c.id = x.idcliente
WHERE x.idcliente is NULL

SELECT c.nome, p.id
FROM clientes c
FULL JOIN pedidos p
ON c.id = p.idcliente
WHERE p.id is NULL




INSERT INTO Clientes (id, Nome, Telefone, Email, Endereco)
VALUES (28, 'João Santos', '215555678', 'joao.santos@email.com', 'Avenida Principal, 456, Cidade B'),
       (29, 'Carla Ferreira', '315557890', 'carla.ferreira@email.com', 'Travessa das Ruas, 789, Cidade C');








