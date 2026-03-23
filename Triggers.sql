SELECT DATE(datahorapedido) AS Dia, SUM(ip.precounitario) AS FaturamentoDiario
from pedidos p
JOIN itenspedidos ip
on p.id = ip.idpedido
GROUP BY Dia
ORDEr BY Dia;

Create TABLE FaturamentoDiario (
	Dia DATE,
  	FaturamentoTotal DECIMAL(10, 2)
)

CREATE TRIGGER CalculaFaturamentoDiario
AFTER INSERT ON itenspedidos
FOR EACH ROW
BEGIN
DELETE FROM FaturamentoDiario;
INSERT INTO FaturamentoDiario (Dia, Faturamentototal)
SELECT DATE(datahorapedido) AS Dia, SUM(ip.precounitario) AS FaturamentoDiario
from pedidos p
JOIN itenspedidos ip
on p.id = ip.idpedido
GROUP BY Dia
ORDEr BY Dia;
END;

SELECT * FROM FaturamentoDiario;

INSERT INTO Pedidos(ID, IDCliente, DataHoraPedido, Status)
VALUES (451, 27, '2023-10-07 14:30:00', 'Em Andamento');

INSERT INTO itenspedidos(IDPedido, IDProduto, Quantidade, PrecoUnitario)
VALUES (451, 14, 1, 6.0),
         (451, 13, 1, 7.0);
         
INSERT INTO Pedidos (ID, IDCliente, DataHoraPedido, Status) 
VALUES (452, 28, '2023-10-07 14:35:00', 'Em Andamento');


INSERT INTO ItensPedidos (IDPedido, IDProduto, Quantidade, PrecoUnitario) VALUES (452, 10, 1, 5.0),
         (452, 31, 1, 12.50);





