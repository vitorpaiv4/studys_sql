-- Qual categoria tem mais produtos vendidos?
SELECT 
    t2.DescCategoriaProduto,
    COUNT(DISTINCT t1.IdTransacao) AS TotalProdutosVendidos
FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.Idproduto = t2.IdProduto

GROUP BY t2.DescCategoriaProduto
ORDER BY TotalProdutosVendidos DESC
LIMIT 1;