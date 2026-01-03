SELECT 
count(*),
count(DISTINCT IdCliente) AS total_clientes
FROM transacoes
WHERE DtCriacao >= '2024-01-01'
  AND DtCriacao < '2025-01-01'
ORDER BY DtCriacao DESC;