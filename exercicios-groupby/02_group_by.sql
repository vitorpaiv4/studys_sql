--Qual cliente juntoui mais pontos positivos em 2025-05?
SELECT IdCliente,
       SUM(qtdePontos) AS TOTALPONTOS
FROM transacoes
WHERE DtCriacao >= '2025-05-01'
  AND DtCriacao < '2025-06-01'
  AND QtdePontos > 0
GROUP BY IdCliente
ORDER BY TOTALPONTOS DESC
LIMIT 1;