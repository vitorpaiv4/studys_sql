-- Quantos clientes tem email cadastrado no sistema?
SELECT COUNT(*) AS QtdeClientesComEmail
FROM clientes
WHERE FlEmail = 1;
--outras formas--
SELECT sum(flEmail) AS QtdeClientesComEmail
FROM clientes;