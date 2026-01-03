
-- IGNORE --
SELECT IdCliente, DtCriacao, qtdePontos, flTwitch FROM clientes
WHERE flTwitch = 1
ORDER BY DtCriacao, QtdePontos DESC;