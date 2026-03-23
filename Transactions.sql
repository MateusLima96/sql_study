BEGIN TRANSACTION;

SELECT * FROM clientes
UPDATE pedidos SET status = 'Concluido' WHERE status = 'Em Andamento'

SELECT * FROM pedidos;

DELETE FROM clientes

ROLLBACK

COMMIT;

