--SELECT IdProduto,
--       count(*) AS total_vendas 
--FROM transacao_produto
--GROUP BY IdProduto
SELECT idCliente,
      Sum(QtdePontos) AS TotalPontos,
      count(IdTransacao) AS TotalTransacoes

FROM transacoes
WHERE Dtcriacao >= '2024-01-01'
  AND DtCriacao < '2024-03-01'

GROUP BY IdCliente
ORDER BY sum(QtdePontos) DESC
LIMIT 1;
----------------------------------------
SELECT idCliente,
    sum(qtdePontos) AS TotalPontos,
   count(DISTINCT IdCliente) AS TotalClientes

 FROM clientes
 WHERE DtCriacao >= '2024-01-01'
   AND DtCriacao < '2024-03-01'
   GROUP BY IdCliente
   HAVING sum(QtdePontos) > 4000



   ORDER BY sum(QtdePontos) DESC
LIMIT 5;

----------------------------------------
SELECT 
   IdCliente,
   sum(QtdePontos) AS TotalPontos   
FROM transacoes
WHERE DtCriacao >= '2024-01-01'
  AND DtCriacao < '2024-03-01'  
GROUP BY IdCliente
HAVING sum(QtdePontos) > 0
ORDER BY sum(QtdePontos) DESC
LIMIT 10;