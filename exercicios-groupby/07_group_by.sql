--Qual o produto mais transacionado?
SELECT 
    IdProduto,
    COUNT(*) AS Quantidade_Transacoes
FROM transacao_produto
GROUP BY IdProduto
ORDER BY Quantidade_Transacoes DESC
LIMIT 1;