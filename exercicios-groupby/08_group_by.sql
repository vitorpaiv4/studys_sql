-- Qual o produto com mais pontos transacionados?
SELECT 
    IdProduto,
    sum(vlProduto * QtdeProduto) AS TotalPontos,
    sum(QtdeProduto) AS TotalQuantidade
FROM transacao_produto
GROUP BY IdProduto
ORDER BY TotalPontos DESC
LIMIT 1;
