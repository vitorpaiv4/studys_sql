--qual cliente fez mais transacoes no ano de 2024?
SELECT IdCliente,
       COUNT(*),
       count(DISTINCT IdTransacao) AS TOTALTRANSACOES --mesma coisa--
FROM transacoes
WHERE DtCriacao >= '2024-01-01'
  AND DtCriacao < '2025-01-01'
GROUP BY IdCliente
ORDER BY TOTALTRANSACOES DESC
LIMIT 1;