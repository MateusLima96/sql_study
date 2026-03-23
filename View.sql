SELECT * from pedidos

Create VIEW ViewValorTotalPedido AS
SELECT p.id, c.nome, p.datahorapedido, SUM(ip.precounitario) AS ValorTotalPedido
from clientes c
JOIN pedidos p on c.id = p.idcliente
JOIN itenspedidos ip ON p.id = ip.idpedido
GROUP BY p.id, c.nome

SELECT * FROM ValorTotalPedido;

SELECT * FROM ViewValorTotalPedido
WHERE ValorTotalPedido > 10 AND ValorTotalPedido < 14

CREATE VIEW ViewCliente AS 
SELECT nome, endereco FROM clientes